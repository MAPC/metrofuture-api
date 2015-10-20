class Project < ActiveRecord::Base
  self.table_name  = 'new_mapcprojectBase'
  self.primary_key = 'new_mapcprojectId'

  has_many   :images, foreign_key: 'ObjectId'
  belongs_to :manager,         class_name: 'ProjectManager', foreign_key: 'OwnerId'
  belongs_to :lead_department, class_name: 'Department',     foreign_key: 'OwningBusinessUnit'

  has_and_belongs_to_many :goals,
                          join_table:              'new_new_mapcproject_goalBase',
                          foreign_key:             'new_mapcprojectid',
                          association_foreign_key: 'new_mapcgoalid'

  has_and_belongs_to_many :municipalities,
                          join_table:              'new_new_mapcproject_municipalitiesBase',
                          foreign_key:             'new_mapcprojectid',
                          association_foreign_key: 'new_municipalitiesid'

  has_many :subregions, -> { simple.uniq }, through: :municipalities
  has_one :extension, class_name: 'Extension::Project', foreign_key: 'new_mapcprojectId'

  default_scope { includes(:extension)
    .where("new_mapcprojectExtensionBase.new_Showonwebsite" => true)
    .where("statecode" => 0)
    .order("new_mapcprojectExtensionBase.new_count DESC") }

  def name
    extension.new_name
  end

  def count
    extension.new_count
  end

  # Most recent image
  def image
    images.order("ModifiedOn").last
  end

  def to_param
    "#{count}--#{name.to_s.parameterize}"
  end

  alias_method :title, :name

  # TODO: Smell: These values shouldn't be hardcoded when they're
  # also in Extension::Project. I think this is suggesting that
  # MunicipalitiesType might want to be a class, perhaps ActiveHash,
  # that has the
  #   text ('MAPC Region-Wide')
  #   preferred text ('Regional')
  #   CRM code ('100000002')
  #   priority ('3')
  def self.sorted
    base_default
      .order("""
              CASE WHEN new_MunicipalitiesType = '100000001' THEN '1'
                   WHEN new_MunicipalitiesType = '100000000' THEN '2'
                   WHEN new_MunicipalitiesType = '100000002' THEN '3'
                   WHEN new_MunicipalitiesType = '100000004' THEN '4'
                   WHEN new_MunicipalitiesType = '100000003' THEN '5'
                   ELSE new_MunicipalitiesType END ASC
            """)


  end

  def self.regional
    base_default
      .where("new_mapcprojectExtensionBase.new_MunicipalitiesType IN (100000002, 100000004)")
      # Does both regional and statewide
  end

  # TODO: self.geography(geography_text)
  # This would do a lookup of geography codes from display text.
  # For example, /projects?filter[geography]='MAPC Region-Wide'
  # would be converted here to
  #
  #   .where("extension.municipalities_type = '100000002'"), and the
  #
  # same for all other geography types.

  def self.base_default
    unscoped.includes(:extension)
      .where("new_mapcprojectExtensionBase.new_Showonwebsite" => true)
      .where("statecode" => 0)
  end

  def self.municipality(id)
    joins(:municipalities)
      .where(new_new_mapcproject_municipalitiesBase: {
               new_municipalitiesid: id
            })
  end

  # TODO: Extract display logic into view object
  def manager_name
    manager ? manager.name : ""
  end

  # TODO: Extract display logic into view object
  def department_name
    lead_department ? lead_department.Name : "MAPC"
  end

  def department_short_name
    shortname_for(department_name)
  end

  def image_url(style=nil)
    image.url(style) if image
  end

  def next
    self.class
      .where("new_mapcprojectExtensionBase.new_count > #{self.new_count}")
      .last.try(:id)
  end

  def previous
    self.class
      .where("new_mapcprojectExtensionBase.new_count < #{self.new_count}")
      .first.try(:id)
  end

  def method_missing(method_name, *args, &block)
    self.extension.send(method_name)
  end

  private
    SHORTNAMES = {
      "Land Use Division" => "Land Use",
      "Transportation Division" => "Transportation",
      "Regional Plan Implementation" => "RPI",
      "Government Affairs" => "Gov. Affairs",
      "Municipal Governance" => "Muni. Governance"
    }

    def shortname_for(name)
      SHORTNAMES.fetch(name) { name }
    end
end

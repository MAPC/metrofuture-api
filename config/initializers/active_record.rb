unless Rails.env == 'test'
  ActiveRecord::Base.table_name_prefix = 'dbo.'
end
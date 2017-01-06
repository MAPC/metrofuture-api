class ImagesController < ActionController::Base
  def show
    expires_in 30.days, public: true
    filename = "#{params[:id]}.#{params[:format]}"
    style    = params.fetch(:style) { nil }

    @image = Image.where(:FileName => filename)
              .select{|i| !i.project.nil? }
              .first

    send_data      @image.binary(style),
      type:        @image.MimeType,
      filename:    @image.FileName,
      disposition: 'inline'
  end
end

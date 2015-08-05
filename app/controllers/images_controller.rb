class ImagesController < ApplicationController

  def show
    filename = "#{params[:id]}.#{params[:format]}"
    style    = params.fetch(:style) { 'small' }

    @image = Image.find_by(:FileName => filename)

    send_data Base64.decode64( @image.content(style) ),
      type:        @image.MimeType,
      filename: "#{@image.FileName}",
      disposition: 'inline'
  end


end

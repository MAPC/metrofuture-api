class ImagesController < ApplicationController

  def show
    filename = "#{params[:id]}.#{params[:format]}"
    style    = params.fetch(:style) { nil }

    @image = Image.find_by(:FileName => filename)

    send_data      @image.binary(style),
      type:        @image.MimeType,
      filename:    @image.FileName,
      disposition: 'inline'
  end
end

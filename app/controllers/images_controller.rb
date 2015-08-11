class ImagesController < ApplicationController

  def show
    filename = "#{params[:id]}.#{params[:format]}"
    style    = params.fetch(:style) { nil }

    @image = Image.where(:FileName => filename).first

    send_data      @image.binary(style),
      type:        @image.MimeType,
      filename:    @image.FileName,
      disposition: 'inline'
  end
end

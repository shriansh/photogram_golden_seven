class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show

    @photo_id = params[:id]
    @list_of_photos = Photo.all

  end

  def new_form

  end

  def create_row

    z = Photo.new
    z.source = params[:the_source]
    z.caption = params[:the_caption]
    z.save
    redirect_to("http://localhost:3000/photos")

  end

  def delete_photo

    Photo.find((params[:id]).to_i).destroy
    redirect_to("http://localhost:3000/photos")

  end


  def edit_form
    @photo_id = params[:id].to_i
  end

  def update_row
    z = Photo.find((params[:id]).to_i)
    z.source = params[:the_source]
    z.caption = params[:the_caption]
    z.save
    redirect_to("http://localhost:3000/photos")

  end

end

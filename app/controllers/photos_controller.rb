class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


  def show
  	@photo = Photo.find_by({ :id => params[:id] })
  	
  end

  def new_form

  end

  def create_row
  	p = Photo.new
  	p.caption = params[:the_caption]
  	p.source = params[:the_source]
  	p.save

  	redirect_to("http://localhost:3000")

  end

  def delete_row
  	p = Photo.find_by({ :id => params[:id] })
  	p.destroy

  	redirect_to("http://localhost:3000")

  end

  def edit_form
  	p = Photo.find_by({ :id => params[:id] })
  	@new_photo_id = p.id
	@previous_caption = p.caption
	@previous_source = p.source
  end

  def edit_row
  	
  	p = Photo.find_by({ :id => params[:id] })
  	@new_photo_id = p.id
  	p.caption = params[:new_caption]
  	p.source = params[:new_source]
  	p.save

	redirect_to("http://localhost:3000/photos/"+@new_photo_id.to_s)



  end

end

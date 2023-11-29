class PhotosController < ApplicationController

  def index
  
    matching_photo = Photo.all

    @list_of_photos = matching_photo.order({:created_at => :desc})

     render({ :template => "photo_templates/index"})
  
    end

  def show
    
  

    render({ :template => "photo_templates/show" })
  end

end

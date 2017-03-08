class PhotosController < ApplicationController

	def index
    @photo = Photo.new
    @array = [1,2,3,4,5]
    @image = [@image_id, @image_src, @image_path, @image_title]

    @linkto = "<%= link_to(image_tag('gallery/#@image_src', alt: 'MANATEE SHIP REPAIR AND FABRICATION PROJECT GALLERY - #@image_id', class: 'img-responsive'), image_path('#@image_path'), data: { lightbox: 'example-set', title: '#@image_title' }) >"

  	def show_photo()
  		puts linkto
    end

  end

  private
  	def photo_params
		  params.require(:photo).permit(:image_id, :image_src, :image_path, :image_title)
		end
end
# photo1=Photo.new("gallery1.jpg", "1", "gallery1.jpg", "Image 1")
# @photo = Photo.new(:image_id => @image.id, :image_src => @image.src, :image_path => @image.path, :image_title => @image.title)

# gallery = IO.readlines("list.txt")
# puts gallery[0]
# puts gallery[1]

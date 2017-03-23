class PhotosController < ApplicationController
  layout 'photo-application'
	def index
    @photo = Photo.new
    @image = [@image_src, @image_title, @image_path]
    @linkto = "<%= link_to(image_tag('gallery/#@image_src', alt: 'MANATEE SHIP REPAIR AND FABRICATION PROJECT GALLERY - #@image_title', class: 'img-responsive'), image_path('#@image_path'), data: { lightbox: 'example-set', title: '#@image_title' }) %>"

    @link = "<%= image_tag('https://s3.amazonaws.com/manatee-ship/gallery/manatee-gallery"
    @end = ".jpg', class:'img-responsive')%>"
    @ab = [1,2,3]
    @gallery = "<%= image_tag('https://s3.amazonaws.com/manatee-ship/gallery/manatee-gallery#@image_src.jpg', class: 'img-responsive gall') %>"

  	def show_photo()
  		puts linkto
    end

  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    @image = params[:image]

    render('hello')
  end

  private
  	def photo_params
		  params.require(:photo).permit(:image_src, :image_title, :image_path)
		end
end

# photo1=Photo.new("gallery1.jpg", "1", "gallery1.jpg", "Image 1")
# @photo = Photo.new(:image_src => @image.src, :image_title => @image.title, :image_path => @image.path)

# gallery = IO.readlines("list.txt")
# puts gallery[0]
# puts gallery[1]

#  def initialize(w,h)
#     @width, @height = w, h
#  end

#  def to_s
#     "(w:#@width,h:#@height)"
#  end

# @box = Box.new(10, 20)
# puts "String representation of box is : #{box}"

class Photo
	include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :image_id, :image_src, :image_path, :image_title
  validates_presence_of :image_id, :image_src, :image_path, :image_title

 #  def initialize()
	#  	@image_id = image_id
 #    @image_src = image_src
	# 	@image_path = image_path
	# 	@image_title = image_title
	# end

	# def show_photo()
 #    puts "<%= link_to(image_tag('gallery/#@image_src', alt: 'MANATEE SHIP REPAIR AND FABRICATION PROJECT GALLERY - #@image_id', class: 'img-responsive'), image_path('#@image_path'), data: { lightbox: 'example-set', title: '#@image_title' }) >"
 #  end

end

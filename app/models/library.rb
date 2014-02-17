class Library < ActiveRecord::Base
  attr_accessible :Content, :File, :Image, :Reference, :Tag, :Title
  attr_accessor :File_file_name
  has_attached_file :File
  mount_uploader :Image, PictureUploader
  has_many :File, :dependent => :destroy
  mount_uploader :File, DataFileUploaderUploader
  #mount_uploader :File, LibraryUploader


#def self.to_pdf 
	#PDF.generate do |pdf|
		#test.each do |library|
			#pdf << [library.File]

     #end
 #end

#end
end

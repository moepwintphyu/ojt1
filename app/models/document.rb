class Document< ActiveRecord::Base
	 belongs_to :library
	 mount_uploader :File, DataFileUploaderUploader
end
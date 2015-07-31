class Post < ActiveRecord::Base
	has_many :comments
	mount_uploader :post, PostUploader
	acts_as_votable
end

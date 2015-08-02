class Post < ActiveRecord::Base
	has_many :comments
	mount_uploader :post, PostUploader
	acts_as_votable



	def self.highest_voted
    self.order("cached_votes_score DESC")
  end
end

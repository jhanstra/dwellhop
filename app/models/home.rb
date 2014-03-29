class Home < ActiveRecord::Base
	belongs_to :user
	has_many :photos
	default_scope -> { order('created_at DESC') }
	validates :user_id, presence: true
end

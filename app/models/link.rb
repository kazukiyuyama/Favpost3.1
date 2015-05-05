class Link < ActiveRecord::Base
	belongs_to :user
	acts_as_votable
	has_many :comments

  validates_presence_of :title, :url

  has_attached_file :avatar, :styles => { :medium => "320x280>", :thumb => "100x100>" }, :default_url => "missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end

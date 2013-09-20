class Post < ActiveRecord::Base
	#attr_accessible :title, :slug, :blurb, :content
	#validates :blurb, :length => { :minimum => 10 }
	# validates :blurb. length => { :in => 10..255 }
	#validates :blurb, :length => { :in => 10..255 }, :format => { \
	#			:with => /^\A[a-zA-Z\d ]+\z/, \
	#			:message => "Only letters allowed", \
	#			:multiline => true }
	validates :body, :blurb, :title, :presence => true
end

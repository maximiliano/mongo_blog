class Article
  include Mongoid::Document
  field :title
  field :content
  field :published_on, :type => Date

  validates_presence_of :title

  embeds_many :comments
  referenced_in :author
end

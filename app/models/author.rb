class Author
  include Mongoid::Document
  field :name
  
  references_many :articles
end

class Link < ActiveRecord::Base
  attr_accessible :category, :country, :description, :language, :name, :tags, :url
end

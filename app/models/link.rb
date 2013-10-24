class Link < ActiveRecord::Base
  attr_accessible :category, :country,
                  :description, :language, :name,
                  :tags, :url, :user_id

  #Associations
  belongs_to :user
end

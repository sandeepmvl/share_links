class Home < ActiveRecord::Base
  def Link.search_by_name(term)
    where("name like :term", term: "%#{term}%")
  end

  def Link.search_by_category(term)
    where("category like :term", term: "%#{term}%")
    end

  def Link.search_by_tags(term)
    where("tags like :term", term: "%#{term}%")
  end
end
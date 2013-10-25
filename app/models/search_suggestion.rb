class SearchSuggestion < ActiveRecord::Base
  attr_accessible :popularity, :term

  def self.terms_for(prefix)
    sugg = where("term like ?", "#{prefix}_%")
    sugg.order("popularity desc").limit(10).pluck(:term)
  end

  def self.index_links
    Link.find_each do |l|
      index_term(l.name)
      index_term(l.category)
      index_term(l.tags)
      l.name.split.each { |t| index_term(t) }
    end
  end

  def self.index_term(term)
    where(term: term.downcase).first_or_initialize.tap do |suggestion|
      suggestion.increment! :popularity
    end
  end
end

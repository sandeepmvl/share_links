namespace :search_suggestions do
  desc "Generate Search Suggestions from links"
  task :index => :environment do
    SearchSuggestion.index_links
  end
end
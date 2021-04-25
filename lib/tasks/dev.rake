namespace :dev do
  desc "Configurates development environment"
  task setup: :environment do
    10.times do |i|
      Episode.create!(
        title: "",
        members: "",
        published_at: "",
        thumbnail: "",
        description: "" 
      )
    end
  end
end

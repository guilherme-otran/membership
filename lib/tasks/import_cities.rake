desc "Import cities"
task import_cities: :environment do
  data = JSON.parse File.read "#{Rails.root}/fixtures/estados-cidades.json"

  data["estados"].each do |state_data|
    state = State.find_or_create_by(name: state_data["nome"], abbreviation: state_data["sigla"])

    state_data["cidades"].each do |city_name|
      City.find_or_create_by(name: city_name, state: state)
    end
  end
end

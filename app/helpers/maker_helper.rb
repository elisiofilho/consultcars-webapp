module MakerHelper
  include DefaultHelper
  
  def initialize_maker

    populate_maker(search_json_data (Make::URL_MAKER))

  end

  private
  
  def populate_maker (maker_json)

     maker_json.each do |maker_data|
      if maker_data["Nome"].length !=0 && Make.where(name: maker_data["Nome"]).size == 0
        Make.create(webmotors_id: maker_data["Id"], name: maker_data["Nome"])
      end
     end 

  end
end
module ModelHelper
  include DefaultHelper

  def initialize_models(web_motors_id)

    models_json_data = search_json_data(Model::URL_MODEL,{'marca'=>web_motors_id})
    populate_models(models_json_data , {'webmotors_id'=>web_motors_id})
    
  end

  private

  def populate_models (models_json_data,param)

    maker = Make.where(param)[0]
    models_json_data.each do |model_data|
      if Model.where(name: model_data["Nome"], make_id: maker.id).size == 0
        Model.create(make_id: maker.id, name: model_data["Nome"])
      end
    end
    
  end
end
class Model < ActiveRecord::Base
	
	URL_MODEL = "http://www.webmotors.com.br/carro/modelos"
	
	def self.get_models_by_maker_id(web_motors_Id) 
		maker = Make.where(webmotors_id: web_motors_Id)[0] 
	    return Model.where(make_id: maker.id).order(name: :asc)
    end 
end
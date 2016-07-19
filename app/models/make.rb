class Make < ActiveRecord::Base

 	URL_MAKER = "http://www.webmotors.com.br/carro/marcas"
 	
	def self.get_all_maker_desc
		return Make.all.order(name: :asc)
    end 
end
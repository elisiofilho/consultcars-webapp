require 'rails_helper'

RSpec.describe ModelHelper, :type => :helper do

  context "Models import data" do
    
    it "Models import has been successfully?" do
 	  makerId = 4;
	  Make.create(:id => makerId,:webmotors_id => makerId)
 	  initialize_models(makerId)
	  models = Model.get_models_by_maker_id(makerId)

      expect(models).not_to be_empty
      
    end
  end
end
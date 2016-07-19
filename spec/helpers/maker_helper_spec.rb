require 'rails_helper'

RSpec.describe MakerHelper, :type => :helper do
  
  context "Manufacturers import data" do

    it "Manufacturers import has been successfully?"  do
      initialize_maker
      makers= Make.get_all_maker_desc
      
      expect(makers).not_to be_empty
    end

  end
end
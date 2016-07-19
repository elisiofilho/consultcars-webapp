class MakersController < ApplicationController
  include MakerHelper

  def index

    initialize_maker
    @makers= Make.get_all_maker_desc

  end

  def search_models

    param_maker = params[:maker]
    param_webmotors_id = param_maker[:webmotors_id]
    
    if param_webmotors_id.empty?
      redirect_to(controller: 'makers', message: t('pleaseSelectMarker'))
    else
      redirect_to(controller: 'models', webmotors_id: param_webmotors_id)
    end
  end

end
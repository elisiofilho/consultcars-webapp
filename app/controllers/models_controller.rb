class ModelsController < ApplicationController
  include ModelHelper

  def index

    initialize_models(params[:webmotors_id]);
    @models = Model.get_models_by_maker_id(params[:webmotors_id])

  end
end
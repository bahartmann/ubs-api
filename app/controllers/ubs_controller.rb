class UbsController < ApplicationController

  def index
    @ubs_collection = Ubs.all
    json_response(@ubs_collection)
  end

  def show
    @ubs = Ubs.find(params[:id])
    json_response(@ubs)
  end
end

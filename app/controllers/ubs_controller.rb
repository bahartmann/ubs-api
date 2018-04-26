class UbsController < ApplicationController
  before_action :set_ubs, only: [:show]

  def index
    @ubs = Ubs.all
    json_response(@ubs)
  end

  def show
    json_response(@ubs)
  end

  private

  def set_ubs
    @ubs = Ubs.find(params[:id])
  end
end

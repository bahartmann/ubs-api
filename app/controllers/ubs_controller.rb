class UbsController < ApplicationController
  def index
    @ubs = Ubs.all
    json_response(@ubs)
  end
end

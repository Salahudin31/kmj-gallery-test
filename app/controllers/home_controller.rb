class HomeController < ApplicationController
  def index
  	@buses = Bus.all
  	@supirs = Supir.all  
  end
end

class BusesController < ApplicationController
  def index
  	@buses = Bus.all   
  end

  def new
  	@bus = Bus.new   
  end

  def show_image
  	@bus = Bus.find(params[:id])
  	send_data @bus.image, :type => 'image/png',:disposition => 'inline'
  end

  def show
  	@bus = Bus.find(params[:id])
  end  

  def create
  	@bus = Bus.new(bus_params)   
         
    if @bus.save   
        redirect_to buses_path, notice: "Successfully uploaded."   
    else   
        render "new"   
    end   
  end

  def destroy
  	@bus = Bus.find(params[:id])   
    @bus.destroy   
    redirect_to buses_path, notice:  "Successfully deleted."   
  end

  private   
    def bus_params   
    	params.require(:bus).permit(:no_bus, :img_bus, :id_jenis, :id_bangku, :fasilitas)   
  	end  
end

class SupirsController < ApplicationController
   def _index
  	@supirs = Supir.all   
  end

  def new
  	@supir = Supir.new   
  end

  def show
  	@supir = Supir.find(params[:id])
  end  

  def create
  	@supir = Supir.new(supir_params)   
         
    if @supir.save   
        redirect_to supirs_path, notice: "Successfully uploaded."   
    else   
        render "new"   
    end   
  end

  def destroy
  	@supir = Supir.find(params[:id])   
    @supir.destroy   
    redirect_to supirs_path, notice:  "Successfully deleted."   
  end

  private   
    def supir_params   
    	params.require(:supir).permit(:first_name, :last_name, :nick_name, :telepon, :alamat, :birth_date)   
  	end  
end

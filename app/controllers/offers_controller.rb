class OffersController < ApplicationController
def new
end
def create
  @allacts = Allact.all
  @offer = Offers.new(offer_params)
  @offer.save
  if @offer.save
  	if @offer.password != "EMC"
  		@offer.destroy
  	else
  		redirect_to @offer
  	end
  end

end

def show

  @offer = Offers.find(params[:id])
end
 
private
  def offer_params
    params.require(:offer).permit(:title, :desc, :points, :bu, :active, :activity, :password)
  end
end
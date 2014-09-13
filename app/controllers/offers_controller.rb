class OffersController < ApplicationController
def new
end
def create
  @allacts = Allact.all
  @offer = Offers.new(offer_params)
  @offer.save
  if @offer.save
  	if current_se.admin != "yes"
  		@offer.destroy
  	else
  		redirect_to @offer
  	end
  end

end
def index
    if current_se.admin == "yes"
      @offers = Offers.all
    end
  end
def edit
  if current_se.admin == "yes"
    @offer = Offers.find(params[:id])
  end
end

def show

  @offer = Offers.find(params[:id])
end
 def update
  if current_se.admin == "yes"
      
    @offer = Offers.find(params[:id])
  end
 
  if @offer.update(offer_params)
    redirect_to @offer
  else
    render 'edit'
  end
end
private
  def offer_params
    params.require(:offer).permit(:title, :desc, :points, :bu, :active, :activity, :password)
  end
end
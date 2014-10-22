class WelcomeController < ApplicationController
  def index
	  @se = current_se
  end
  def leader
  	@se = current_se
  	@sel = Se.order("orank")
  	@sec = Se.order("country").order("crank")
  	@seb = Se.order("bu").order("burank")
  	@seg = Se.order("geo").order("grank")
    

  end
  def offers

  end
end

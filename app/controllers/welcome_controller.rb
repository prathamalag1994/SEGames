class WelcomeController < ApplicationController
  def index
	  @se = current_se
  end
  def leader
  	@se = current_se
  	@sel = Se.order("orank")
  	@sec = Se.order("crank")
  	@seb = Se.order("burank")
  	@seg = Se.order("grank")

  end
  def offers

  end
end

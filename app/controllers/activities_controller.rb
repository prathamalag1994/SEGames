class ActivitiesController < ApplicationController
def new
	@offers = Offers.all
end
def create


  @activity = Activities.new(activity_params)
  @activity.empid = current_se.empid
  @activity.save

  if @activity.save
  	@activities = Activities.where(empid: current_se.empid)
  	current_se.points = 0
  	current_se.save
  	@activities.each do |lala|
  		current_se.points = current_se.points + lala.points
  		current_se.save
  	end


  	@ses = Se.all
  	@ses.each do |lala|
  		lala.orank = Se.order("points DESC").index(lala) + 1
  		lala.save
  	end

  	@ses = Se.where(bu: current_se.bu)
  	@ses.each do |lala|
  		lala.burank = Se.where(bu: current_se.bu).order("points DESC").index(lala) + 1
  		lala.save
  	end

  	@ses = Se.where(geo: current_se.geo)
  	@ses.each do |lala|
  		lala.grank = Se.where(geo: current_se.geo).order("points DESC").index(lala) + 1
  		lala.save
  	end

  	@ses = Se.where(country: current_se.country)
  	@ses.each do |lala|
  		lala.crank = Se.where(country: current_se.country).order("points DESC").index(lala) + 1
  		lala.save
  	end




  end
  redirect_to @activity
end
def index
  @activities = Activities.where(empid: current_se.empid)
end
def show

  @activity = Activities.find(params[:id])
end
 
private
  def activity_params
    params.require(:activity).permit(:activity, :desc, :points, :account, :offerno)
  end

end
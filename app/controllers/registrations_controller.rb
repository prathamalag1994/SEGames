class RegistrationsController < Devise::RegistrationsController 
  prepend_before_filter :require_no_authentication, only: [ :new, :create, :cancel ]
  prepend_before_filter :authenticate_scope!, only: [:edit, :update, :destroy]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    build_resource(sign_up_params)
    if resource.admin == "EMC"
      resource.admin="yes"
    else
      resource.admin=""
    end
    if resource.country == "India"
        resource.geo = "India"
      end
      if resource.country == "Bangladesh"
        resource.geo = "India"
      end
      if resource.country == "Singapore"
        resource.geo = "SEA"
      end
      if resource.country == "Indonesia"
        resource.geo = "SEA"
      end
      if resource.country == "Malaysia"
        resource.geo = "SEA"
      end
      if resource.country == "Phillipines"
        resource.geo = "SEA"
      end
      if resource.country == "Thailand"
        resource.geo = "SEA"
      end
      if resource.country == "Vietnam"
        resource.geo = "SEA"
      end
      if resource.country == "Cambodia"
        resource.geo = "SEA"
      end
      if resource.country == "Myanmar"
        resource.geo = "SEA"
      end
      if resource.country == "Australia"
        resource.geo = "ANZ"
      end
      if resource.country == "New Zealand"
        resource.geo = "ANZ"
      end
      if resource.country == "China"
        resource.geo = "GC"
      end
      if resource.country == "Hong Kong"
        resource.geo = "GC"
      end
      if resource.country == "Taiwan"
        resource.geo = "GC"
      end
      if resource.country == "South Korea"
        resource.geo = "Korea"
      end
      if resource.country == "Japan"
        resource.geo = "Japan"
      end




      if Se.count != 0
        resource.orank = Se.maximum("orank") + 1
        if Se.where(bu: resource.bu).count != 0
          resource.burank = Se.where(bu: resource.bu).maximum("burank") + 1
        else
          resource.burank = 1
        end
        if Se.where(country: resource.country).count != 0
          resource.crank = Se.where(country: resource.country).maximum("crank") + 1
        else
          resource.crank = 1
        end
        if Se.where(geo: resource.geo).count != 0
          resource.grank = Se.where(geo: resource.geo).maximum("grank") + 1
        else
          resource.grank = 1
        end
        resource.points = 0
      else
        resource.orank = 1
        resource.burank = 1
        resource.crank = 1
        resource.grank = 1
        resource.points = 0
      end


    resource_saved = resource.save
    yield resource if block_given?
    if resource_saved



      





      resource.save!
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  # We need to use a copy of the resource because we don't want to change
  # the current user in place.
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  protected

  def update_needs_confirmation?(resource, previous)
    super
  end

  # By default we want to require a password checks on update.
  # You can overwrite this method in your own RegistrationsController.
  def update_resource(resource, params)
    super
  end

  # Build a devise resource passing in the session. Useful to move
  # temporary session data to the newly created user.
  def build_resource(hash=nil)
    super
  end

  # Signs in a user on sign up. You can overwrite this method in your own
  # RegistrationsController.
  def sign_up(resource_name, resource)
    super
  end

  # The path used after sign up. You need to overwrite this method
  # in your own RegistrationsController.
  def after_sign_up_path_for(resource)
    super
  end

  # The path used after sign up for inactive accounts. You need to overwrite
  # this method in your own RegistrationsController.
  def after_inactive_sign_up_path_for(resource)
    super
  end

  # The default url to be used after updating a resource. You need to overwrite
  # this method in your own RegistrationsController.
  def after_update_path_for(resource)
    super
  end

  # Authenticates the current scope and gets the current resource from the session.
  def authenticate_scope!
    super
  end

  def sign_up_params
    super
  end

  def account_update_params
    super
  end
end
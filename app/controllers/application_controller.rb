class ApplicationController < ActionController::Base
  protect_from_forgery
rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message

def create
  @sex = application.new(params[:sex])
  if @sex.save
    flash[:notice] = "Saved successfully"
    redirect_to @sex # This redirects to the show action, where the flash will be displayed
  else
    flash[:error] = "There were errors..."
    render :action => :new # This displays the new form again
  end
end
  end
end

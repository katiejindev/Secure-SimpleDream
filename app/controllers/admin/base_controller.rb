class Admin::BaseController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  protected

  def top_level!
    unless top_level?
      privilege_violation
    end
  end

  def top_level?
    current_admin.priority == 0
  end

  def privilege_violation
    flash[:alert] = "You do not have sufficient access privileges"
    redirect_to admin_url
  end
end

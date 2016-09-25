class Admin::AdminAccountsController < Admin::BaseController
  before_action :top_level!

  def index
    @admins = Admin.all
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)

    if @admin.save
      flash[:notice] = "Account created! Don't forget to let them know!"
      redirect_to admin_admin_accounts_url
    else
      render 'new'
    end
  end

  def destroy
    @admin = Admin.find(params[:id]).destroy
    redirect_to admin_admin_accounts_url
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end

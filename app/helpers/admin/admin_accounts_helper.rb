module Admin::AdminAccountsHelper
  def top_level?
    current_admin.priority == 0
  end
end

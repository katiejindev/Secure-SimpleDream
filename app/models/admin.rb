class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable,
         :timeoutable

  def security_name
    case priority
    when 0
      "Top Level Admin"
    when 1
      "Standard Admin"
    end
  end
end

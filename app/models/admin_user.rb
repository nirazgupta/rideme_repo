class AdminUser < ActiveRecord::Base
    devise :database_authenticatable, :lockable, :recoverable, :rememberable, :trackable
end

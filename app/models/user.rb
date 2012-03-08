class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :checkouts

  attr_accessible :email, :password, :remember_me

  def to_s
    email
  end

  def todays_checkout
    checkouts.where('DATE(created_at) = DATE(?)', Time.now).first
  end
end

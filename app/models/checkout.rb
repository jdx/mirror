class Checkout < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :what_i_got_done, presence: true
  validates :what_i_didnt_get_done, presence: true
  validates :what_i_still_need_to_do, presence: true

end

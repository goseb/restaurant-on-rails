class RTable < ActiveRecord::Base
  has_many :tickets
  belongs_to :floor

  def active_ticket
    tickets.where("status is NULL").limit(1)[0]
  end
end

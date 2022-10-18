class Membership < ApplicationRecord

    validates :client_id, presence: true, uniqueness: true
    validates :gym_id, presence: true
    validates :charge, presence: true

end

class Trip < ApplicationRecord
    belongs_to :user
    has_many :visits
    has_many :festivals, through: :visits
    has_many :locations, through: :festivals

    # validates :name, :user, presence: true
end

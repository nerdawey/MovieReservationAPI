class User < ApplicationRecord
    has_secure_password
  
    enum role: { user: 0, admin: 1 }
  
    has_many :reservations, dependent: :destroy
  
    validates :email, presence: true, uniqueness: true
  end
  
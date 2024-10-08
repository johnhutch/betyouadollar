class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_bets, :class_name => 'Bet', :foreign_key => 'owner_id'
  has_many :betted_bets, :class_name => 'Bet', :foreign_key => 'better_id'
  has_one :profile
end

class Bet < ApplicationRecord
  belongs_to :owner, :class_name => 'User'
  belongs_to :better, :class_name => 'User', optional: true
end

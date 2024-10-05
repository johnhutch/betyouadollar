class Bet < ApplicationRecord
  belongs_to :owner, :class_name => 'User'
  belongs_to :better, :class_name => 'User', optional: true

  scope :unexpired, -> { where(expiration: Time.zone.now.. ) }
  scope :expired, -> { where(expiration: ...Time.zone.now) }
  scope :unaccepted, -> { where(better: nil) }
  scope :accepted, -> { where.not(better: nil) }
  scope :settled, -> { where(settled: true) }

  def unaccepted?
    self.better == nil
  end
end

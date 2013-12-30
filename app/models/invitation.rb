class Invitation < ActiveRecord::Base
  include Tokenable

  belongs_to :exercise
  belongs_to :user
  validates :user, presence: true
  validates :recipient, presence: true
  validates :exercise_id, presence: true

  before_create :create_token
  after_create :send_invitation

  private

  def create_token
    generate_token(attribute: :confirm_code)
  end

  def send_invitation
    PairingMailer.invitation_email(self.user, self.recipient, self.confirm_code).deliver
  end
end

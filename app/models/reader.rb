class Reader < ApplicationRecord
  after_create :subscribe_to_newsletter
  validates :email, :first_name, :last_name, presence: true

  private

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end
end

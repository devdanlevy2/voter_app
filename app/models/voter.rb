class Voter < ActiveRecord::Base
  has_one :vote

  before_validation :create_token_value
  protected
    def create_token_value
      self.token = SecureRandom.hex
    end
end

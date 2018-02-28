class User < ActiveRecord::Base

  require 'digest/sha1'

  # Validations
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  before_save :set_api_key, :encrypt_password

  # Assign the api_key before the record will be saved
  def set_api_key
    token = ""
    loop do
      token = SecureRandom.base64.tr('0+/=', 'bRat')
      break token unless User.where("api_key = ?", token).any?
    end
    self.api_key = token
  end

  # Encrypt the password before the record will be saved
  def encrypt_password
    self.password = Digest::SHA1.hexdigest self.password
  end

end
class User < ApplicationRecord

  has_many :records, dependent: :destroy
  attr_accessor :remember_token
  before_save { self.email = email.downcase }
  validates :name, {presence: true, length: {maximum: 50}}
  validates :email, {presence: true}
  has_secure_password
  validates :password, {presence: true, length: {minimum: 6}}

  include Gravtastic
  gravtastic
end

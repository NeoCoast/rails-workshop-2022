# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true
end

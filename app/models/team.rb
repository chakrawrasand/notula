# frozen_string_literal: true

class Team < ApplicationRecord
  has_secure_password
  has_many :members
  has_many :noteteamlists
  has_many :notes, through: :noteteamlists
  validates_presence_of :username, uniqueness: true
  validates_presence_of :password
end

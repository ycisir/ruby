# You are tasked with implementing age validation in a Rails model. 
# The model represents a User with a birthdate attribute. 
# Your goal is to ensure that users must be at least 18 years old to be considered valid. 
# Also need to make sure email is unique and name is present


class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthdate
      t.string :email
      t.timestamps
    end
  end
end



# app/models/user.rb

class User < ApplicationRecord
  validates :name, presence: true
  validates :email, uniqueness: true
  validate :is_valid

  def is_valid
    unless (Time.now - birthdate).year >= 18 do
      errors.add("Age should be at least 18 years old")
    end
  end
end
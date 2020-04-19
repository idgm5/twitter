class User < ApplicationRecord
  has_many :tweets
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  acts_as_voter
  include Gravtastic
  gravtastic :secure => true,
             :filetype => :gif,
             :size => 250
end

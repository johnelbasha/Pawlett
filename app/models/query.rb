class Query < ApplicationRecord

  validates :name, :email, :message, presence: true
  validates :name, format: { with: /[a-z ,.'-]+/i,
                             message: "only allows letters from the alphabet a-z and spaces"
                             }
  validates :email, format: { with: /\S+@\S+/ }
  validates :message, length: { minimum: 15,
                                 message: "Your message needs to be at least 15 characters long."
                              }



end

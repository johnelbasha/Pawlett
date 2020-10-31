class Query < ApplicationRecord

  validates :name, :email, presence: true
  validates :name, format: { with: /[a-z ,.'-]+/i,
                             message: "only allows letters from the alphabet a-z and spaces"
                             }

end

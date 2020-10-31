class Query < ApplicationRecord

  validates :name, presence: true, format: { with: /\A[a-zA-z] +\z/,
                                             message: "only allows letters from the alphabet a-z and spaces"
                                             }

end

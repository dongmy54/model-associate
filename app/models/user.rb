class User < ApplicationRecord
  has_many :pictures, as: :imageable
end

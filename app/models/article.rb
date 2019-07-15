class Article < ApplicationRecord
  #an article belongs to (one) user and not users!
  belongs_to :user
end

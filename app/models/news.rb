class News < ApplicationRecord
  translates :title, :body
  accepts_nested_attributes_for :translations
end

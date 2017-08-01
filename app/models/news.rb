class News < ApplicationRecord
  # attr_accessible :translations, :translations_attributes
  # has_one :translations
  # accepts_nested_attributes_for :translations
  translates :title, :body
end

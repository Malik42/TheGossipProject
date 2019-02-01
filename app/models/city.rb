class City < ApplicationRecord
  has_many :users # je dit qu'une ville peut avoir plusieurs utilisateurs
end

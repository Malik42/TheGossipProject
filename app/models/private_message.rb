class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User", optional: true # on fait le lien entre les messages et la personne qui les envoient
  belongs_to :recipient, class_name: "User", optional: true # on fait le lien enre les messages et la personne qui les a recu
end

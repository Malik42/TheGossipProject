class Tag < ApplicationRecord
  belongs_to :gossip, optional: true # on fait le lien entre le gossip et le tag, le tag stock l'id du gossip
end

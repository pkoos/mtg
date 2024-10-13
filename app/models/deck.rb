class Deck < ApplicationRecord
  include Visible

  belongs_to :card
end

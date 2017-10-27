class Refridgerator < ApplicationRecord
    has_many drinks
    has_many foods
end

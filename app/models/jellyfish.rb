class Jellyfish < ApplicationRecord
    has_many :catches
    has_many :characters, through :catches
end

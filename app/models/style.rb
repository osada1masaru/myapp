# frozen_string_literal: true

class Style < ApplicationRecord
  belongs_to :user

  has_one_attached :image
end

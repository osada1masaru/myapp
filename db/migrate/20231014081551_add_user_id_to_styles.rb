# frozen_string_literal: true

class AddUserIdToStyles < ActiveRecord::Migration[7.0]
  def change
    add_column :styles, :user_id, :integer
  end
end

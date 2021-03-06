# frozen_string_literal: true

class CreateNoteteamlists < ActiveRecord::Migration[6.1]
  def change
    create_table :noteteamlists do |t|
      t.references :team, null: false, foreign_key: true
      t.references :note, null: false, foreign_key: true

      t.timestamps
    end
  end
end

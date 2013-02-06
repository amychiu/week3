class CreateDices < ActiveRecord::Migration
	def change
      create_table :dices do |t|
      t.string :name
      t.integer :value
    end
  end
end

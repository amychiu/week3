class CreateRps < ActiveRecord::Migration
  def change
    create_table :rps do |t|
      t.string :name
      t.string :url

    end
  end
end

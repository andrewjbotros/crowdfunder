class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.datetime :funding_period
      t.integer :goal

      t.timestamps
    end
  end
end

class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :artwork
      t.string :category

      t.timestamps
    end
  end
end

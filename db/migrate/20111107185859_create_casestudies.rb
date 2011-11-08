class CreateCasestudies < ActiveRecord::Migration
  def change
    create_table :casestudies do |t|
      t.string :title
      t.string :tagline
      t.text :description
      t.text :goals
      t.text :achievements
      t.text :results

      t.timestamps
    end
  end
end

class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.references :project, null: false, foreign_key: true
      t.boolean :is_finished
      t.string :name
      t.text :description
      t.string :test_url

      t.timestamps
    end
  end
end

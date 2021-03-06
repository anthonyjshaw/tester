class CreateTestUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :test_users do |t|
      t.references :test, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :test_finished, null: false, default: false

      t.timestamps
    end
  end
end

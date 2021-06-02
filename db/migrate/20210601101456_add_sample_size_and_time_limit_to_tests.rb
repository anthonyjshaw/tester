class AddSampleSizeAndTimeLimitToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :sample_size, :integer
    add_column :tests, :time_limit, :date
  end
end

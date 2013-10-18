class RemoveVideosFromDatabase < ActiveRecord::Migration
  def up
    drop_table :videos
  end

  def down
    create_table :videos do |t|
      t.string :name
      t.string :file
      t.timestamps
    end
  end
end

class AddProcessingFlagtoImage < ActiveRecord::Migration
  def change
    add_column :images, :file_processing, :boolean
  end
end

class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :picture

      t.timestamps
    end
  end
end

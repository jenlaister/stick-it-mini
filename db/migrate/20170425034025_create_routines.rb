class CreateRoutines < ActiveRecord::Migration

  def change
    create_table :routines do |t|
      t.integer :user_id
      t.string :habit
    end
  end

end

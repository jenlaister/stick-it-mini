class CreateRoutines < ActiveRecord::Migration

  def change
    create_table :routines do |t|
      t.string :habit
    end
  end

end

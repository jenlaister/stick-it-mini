class CreateRoutines < ActiveRecord::Migration

  def change
    create_routines :routines do |t|
      t.string :routine
    end
  end

end

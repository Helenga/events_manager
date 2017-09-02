class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists, id: false do |t|
      t.references :attendee, foreign_key: true
      t.references :event, foreign_key: true

    end
  end
end

class CreateTickets < ActiveRecord::Migration[8.1]
  def change
    create_table :tickets do |t|
      t.string :subject
      t.datetime :due_at
      t.string :status

      t.timestamps
    end
  end
end

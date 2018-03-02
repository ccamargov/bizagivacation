class CreateRequestVacations < ActiveRecord::Migration
  def change
    create_table :request_vacations do |t|
      t.string :process
      t.string :activity
      t.date :request_date
      t.string :employee
      t.date :begin_date
      t.date :end_date
      t.date :last_vacation_on
      t.boolean :approved, default: false

      t.timestamps null: false
    end
  end
end

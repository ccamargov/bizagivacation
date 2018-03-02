class ChangeDataTypeForApprovedFromRequestVacation < ActiveRecord::Migration
  def self.up
    change_table :request_vacations do |t|
      t.change :approved, :integer, default: 0
    end
  end
  def self.down
    change_table :request_vacations do |t|
      t.change :approved, :boolean, default: false
    end
  end
end

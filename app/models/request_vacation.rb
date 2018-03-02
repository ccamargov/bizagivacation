class RequestVacation < ActiveRecord::Base

  # Validations
  validates :process, presence: true
  validates :activity, presence: true
  validates :request_date, presence: true
  validates :employee, presence: true
  validates :begin_date, presence: true
  validates :end_date, presence: true
  validates :last_vacation_on, presence: true

end

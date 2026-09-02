class Ticket < ApplicationRecord
  validates :subject, presence: true

  def overdue?
    due_at.present? && due_at < Time.current && !resolved?
  end

  def resolved?
    status == "resolved"
  end
end
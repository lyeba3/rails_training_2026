require "test_helper"

class TicketTest < ActiveSupport::TestCase
  include ActiveSupport::Testing::TimeHelpers

  test "ticket becomes overdue after its due time" do
    travel_to Time.zone.parse("2026-08-18 10:00") do
      ticket = Ticket.new(
        subject: "Printer",
        due_at: 1.minute.ago,
        status: "open"
      )

      assert ticket.overdue?
    end
  end

  test "ticket is not overdue exactly at its due time" do
    travel_to Time.zone.parse("2026-08-18 10:00") do
      ticket = Ticket.new(
        subject: "Printer",
        due_at: Time.current,
        status: "open"
      )

      assert_not ticket.overdue?
    end
  end
end
require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  test "visiting a ticket" do
    visit "/tickets/42"

    assert_text "Ticket ID: 42"
  end
end

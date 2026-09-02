class TicketsController < ApplicationController
  def index
  end

  def show
    render plain: "Ticket ID: #{params[:id]}"
  end

  def create
  ticket = Ticket.new(ticket_params)

  if ticket.save
    redirect_to ticket_path(ticket)
  else
    render plain: "Ticket could not be created", status: :unprocessable_entity
  end
end

  private

  def ticket_params
    params.require(:ticket).permit(:subject, :due_at, :status)
  end
end
class OrdersController < ApplicationController
  def create
    booking = Booking.find(params[:booking_id])
    order  = Order.create!(booking: booking, price: booking.price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: booking.booking_items.map{ |bi| bi.stripe_line_item },
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
  @order = current_user.orders.find(params[:id])
  end

end

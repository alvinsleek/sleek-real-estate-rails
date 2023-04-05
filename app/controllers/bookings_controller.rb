class BookingsController < ApplicationController

    skip_before_action :authorized

    def index
        bookings = Booking.all
        bookings = bookings.map do |booking|
            {
                id: booking.id,
                user_id: booking.user_id,
                user_first_name: booking.user.first_name,
                user_last_name: booking.user.last_name,
                user_email: booking.user.email,
                property_id: booking.property_id,
                phone_number: booking.phone_number,
                move_in_date: booking.move_in_date,
                name: booking.property.name,
                image: booking.property.image,
                location: booking.property.location,
                price: booking.property.price,
                type_of_house: booking.property.type_of_house,
                category: booking.property.category
            }


        end

        render json: bookings
    end

    def show
        booking = Booking.find(params[:id])
        render json: booking
    end

    def create
        booking = Booking.create(booking_params)
        render json: booking
    end

    def update

        booking = Booking.find(params[:id])
        booking.update(booking_params)
        render json: booking
    end

    def destroy

        booking = Booking.find(params[:id])
        booking.destroy
        render json: booking
    end

    def my_bookings
        users = User.find(params[:id])
        bookings = users.bookings.map do |booking|
            {
                id: booking.id,
                user_id: booking.user_id,
                user_first_name: booking.user.first_name,
                user_last_name: booking.user.last_name,
                user_email: booking.user.email,
                property_id: booking.property_id,
                phone_number: booking.phone_number,
                move_in_date: booking.move_in_date,
                name: booking.property.name,
                image: booking.property.image,
                location: booking.property.location,
                price: booking.property.price,
                type_of_house: booking.property.type_of_house,
                category: booking.property.category
            }


        end
        render json: bookings



       
    end

    private

    def booking_params
        params.require(:booking).permit(:user_id, :property_id, :phone_number,:move_in_date)
    end

end

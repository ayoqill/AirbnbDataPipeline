 select
    booking_id,
    listing_id,
    booking_date,
    booking_status,
    nights_booked,
    booking_amount,
    cleaning_fee,
    service_fee,
    created_at
from {{ ref('bronze_bookings') }}
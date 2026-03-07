select
    b.booking_id,
    b.listing_id,
    l.host_id,
    h.host_name,
    h.host_since,
    h.is_superhost,
    h.response_rate,
    l.city,
    l.country,
    l.property_type,
    l.room_type,
    l.accommodates,
    l.bedrooms,
    l.bathrooms,
    l.price_per_night,
    b.booking_date,
    b.booking_status,
    b.nights_booked,
    b.booking_amount,
    b.cleaning_fee,
    b.service_fee,
    b.created_at
from {{ ref('silver_bookings') }} b
left join {{ ref('silver_listings') }} l
    on b.listing_id = l.listing_id
left join {{ ref('silver_hosts') }} h
    on l.host_id = h.host_id
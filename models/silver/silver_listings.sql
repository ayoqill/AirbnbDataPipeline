select
    listing_id,
    host_id,
    city,
    country,
    property_type,
    room_type,
    accommodates,
    bedrooms,
    bathrooms,
    price_per_night,
    created_at
from {{ ref('bronze_listings') }}
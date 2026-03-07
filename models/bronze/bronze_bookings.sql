select *
from {{ source('airbnb_source', 'BOOKINGS') }}
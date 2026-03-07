select *
from {{ source('airbnb_source', 'LISTINGS') }}
select *
from {{ source('airbnb_source', 'HOSTS') }}
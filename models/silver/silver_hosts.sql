select
    host_id,
    host_name,
    host_since,
    is_superhost,
    response_rate,
    created_at
from {{ ref('bronze_hosts') }}
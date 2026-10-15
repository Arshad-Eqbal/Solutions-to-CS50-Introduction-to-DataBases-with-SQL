# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Reasons to adopt: It ensures data is evenly distributed across all available boats regardless of traffic spikes (such as heavy activity between midnight and 1am).

Reasons not to adopt: Because observations are randomly scattered, running range queries (like looking for all records within a specific time window) requires querying every single boat, significantly increasing overhead.

## Partitioning by Hour

Reasons to adopt: It allows researchers to target specific time-based queries to only the relevant boat, avoiding unnecessary scans across the entire network.

Reasons not to adopt: It leads to severe load imbalances because heavy observation periods (like late-night monitoring) will overwhelm a single boat while others remain underutilized.

## Partitioning by Hash Value

Reasons to adopt: It evenly distributes data across all boats even when traffic is heavily skewed toward specific times, while still allowing efficient lookups for exact individual timestamps.

Reasons not to adopt: Because timestamps with sequential or close values get scattered across different hashes, querying a range of time still requires searching all boats.

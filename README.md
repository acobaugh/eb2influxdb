# eb2influxdb

docker-compose, dashboard, and loader script to load an Eventbrite sales report CSV into influxdb, then render the data in Grafana.

## Requirements

- docker
- docker-compose
- go

## Usage

```
docker-compose up
./load.sh path/to/sales_by_ticket_type.csv
```

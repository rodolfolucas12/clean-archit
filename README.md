# Golang Clean Architecture Challenge

Functionalities:
- Create order: HTTP, gRPC and GraphQL
- List all orders: HTTP, gRPC and GraphQL

## How to run

1. Requirements:
- Go
- Evans (for gRPC)
- gqlgen (for GraphQL)
- Docker

2. Repository clone:
```bash
git clone https://github.com/rodolfolucas12/clean-archit.git
```

3. Run the docker-compose:
```bash
docker-compose up
```

Obs: After running the docker-compose, the services will be available on the following ports:
- HTTP: 8000
- gRPC: 50051
- GraphQL: 8080

## How to local test

1. HTTP:
- Create order:
execute file `api/create_order.http`
- List all orders:
execute file `api/list_orders.http`

2. gRPC:
- Run the commands:
```bash
`evans -r repl -p 50051`
`package pb`
`service OrderService`
```
- Create order:
```bash
`call CreateOrder`
```
- List all orders:
```bash
`call ListOrders`
```

3. GraphQL:
Open the browser and access the URL `http://localhost:8080/` and execute the queries:

- Create order:
```bash
mutation {
  createOrder(input: {id: "2", Price: 999.99, Tax: 9.99}) 
  {
    id
    Price
    Tax
    FinalPrice
  }
}
```
- List all orders:
```bash
query queryOrders {
  ListOrders {
    id
    Price
    Tax
    FinalPrice
  }
}
```


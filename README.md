# web_backend

This backend service form a rest api get curd data from mongo database and redis database.


## Environment Variable

* port - restapi port
  * default: 10755
* redis - redis connection string
  * default: redis://127.0.0.1:6379/0
* mongo - mongoDB connection string
  * default: mongodb://127.0.0.1:27017/config

## Redis 

### /redis/exist/:key GET

Check the key exist or not

```json
// 0: not exist
// 1: exist
{
    "result": 0
}
```

### /redis/exist/:key/:field GET

Check the key, field exist or not

```json
// 0: not exist
// 1: exist
{
    "result": false
}
```

### /redis/get/:key GET

Get the key targeting value

```json
{
    "result": "value"
}
```

### /redis/get/:key/:field GET

Get the key, field targeting value

```json
{
    "result": "value"
}
```

### /redis/getall/:key GET

Get the key targeting values

```json
{
    "result": {
        "field_name1": "value 1",
        "field_name2": "value 2"
    }
}
```

### /redis/set/:key POST

Set the key targeting values

Body must contain value string

```json
{
    "result": "value you just assign"
}
```

### /redis/set/:key/:field POST

Set the key, field targeting value

Body must contain value string

```json
{
    "result": "value you just assign"
}
```

### /redis/default_get/:key POST

Get the key targeting value

If key does not exist, assign the body string

```json
{
    "result": "value you just assign"
}
```

### /redis/default_get/:key/:field POST

Get the key, field targeting value

If key does not exist, assign the body string

```json
{
    "result": "value you just assign"
}
```

### /redis/delete/:key DELETE

Delete key

```json
// 0: not exist
// 1: exist
{
    "result": 0
}
```

### /redis/deleteall/:key DELETE

Delete key table at once

```json
// 0: not exist
// 1: exist
{
    "result": 0
}
```

### /redis/delete/:key/:field DELETE

Delete field data

```json
// 0: not exist
// 1: exist
{
    "result": 0
}
```

## Mongo
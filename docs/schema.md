## <a name="resource-analog_time">Analog time endpoint</a>


API for serving time in json format returning angles of digital clock hands

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **hours_angle** | *number* | Hours angle in degrees<br/> **Range:** `0 <= value <= 360` | `66.5` |
| **minutes_angle** | *number* | Minutes angle in degrees<br/> **Range:** `0 <= value <= 360` | `14` |
| **seconds_angle** | *number* | Seconds angle in degrees<br/> **Range:** `0 <= value <= 360` | `354` |

### Analog time endpoint 

Endpoint returns angles of colock hands for current time

```
GET /analog_time
```


#### Curl Example

```bash
$ curl -n 127.0.0.1:5000/analog_time
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "hours_angle": 66.5,
  "minutes_angle": 14,
  "seconds_angle": 354
}
```


## <a name="resource-digital_time">Digital time endpoint</a>


API for serving time in json format using 24 hours clock notation

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **hours** | *number* | Hours<br/> **Range:** `0 <= value <= 23` | `14` |
| **minutes** | *number* | Minutes<br/> **Range:** `1 <= value <= 59` | `25` |
| **seconds** | *number* | Seconds<br/> **Range:** `1 <= value <= 59` | `49` |

### Digital time endpoint 

Endpoint returns current time

```
GET /digital_time
```


#### Curl Example

```bash
$ curl -n 127.0.0.1:5000/digital_time
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "hours": 14,
  "minutes": 25,
  "seconds": 49
}
```



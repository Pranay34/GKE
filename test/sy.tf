resource "newrelic_synthetics_monitor" "monitor" {
  status           = "ENABLED"
  name             = "monitor_EAC_Test"
  period           = "EVERY_MINUTE"
  uri              = "https://www.informa.com"
  type             = "SIMPLE"
  locations_public = ["AP_SOUTH_1"]

  custom_header {
    name  = "some_name"
    value = "some_value"
  }

  treat_redirect_as_failure = true
  validation_string         = "success"
  bypass_head_request       = true
  verify_ssl                = true

  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}
variable "instance_id" {
  description = "EC2 instance ID to monitor"
  type        = string
}

variable "threshold" {
  description = "CPU utilization threshold percentage"
  type        = number
}

variable "evaluation_periods" {
  description = "Number of evaluation periods"
  type        = number
}

variable "period" {
  description = "Monitoring period in seconds"
  type        = number
}

variable "alarm_name" {
  description = "Name of the CloudWatch alarm"
  type        = string
}

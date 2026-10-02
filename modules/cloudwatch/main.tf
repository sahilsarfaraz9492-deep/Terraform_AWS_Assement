resource "aws_cloudwatch_metric_alarm" "cpu" {
  alarm_name          = var.alarm_name
  alarm_description   = "Alarm when EC2 CPU utilization is above the threshold"
  comparison_operator = "GreaterThanThreshold"

  evaluation_periods = var.evaluation_periods
  period             = var.period
  metric_name        = "CPUUtilization"
  namespace          = "AWS/EC2"
  statistic          = "Average"
  threshold          = var.threshold

  dimensions = {
    InstanceId = var.instance_id
  }

  treat_missing_data = "notBreaching"
}

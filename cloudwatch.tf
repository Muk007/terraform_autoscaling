resource "aws_cloudwatch_metric_alarm"  "metric_1" {
	alarm_name = "example-cpu-alarm"
	comparison_operator = "GreaterThanOrEqualToThreshold"
	evaluation_periods = "2"
	metric_name = "CPUUtilization"
	namespace = "AWS/EC2"
	period = "120"
	statistic = "Average"
	threshold = "30"
	alarm_description = "example-cpu-alarm"
	
}

resource "aws_cloudwatch_metric_alarm"  "metric_2" {
        alarm_name = "example-cpu-alarm"
        comparison_operator = "LessThanThreshold"
        evaluation_periods = "2"
        metric_name = "CPUUtilization"
        namespace = "AWS/EC2"
        period = "120"
        statistic = "Average"
        threshold = "20"
        alarm_description = "example-cpu-alarm"

}


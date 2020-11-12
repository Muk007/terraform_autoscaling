resource "aws_cloudwatch_metric_alarm"  "metric_1" {
	alarm_name = "example-cpu-alarm"
	alarm_description = "example-cpu-alarm"
	comparison_operator = "GreaterThanOrEqualToThreshold"
	evaluation_periods = "2"
	metric_name = "CPUUtilization"
	namespace = "AWS/EC2"
	period = "120"
	statistic = "Average"
	threshold = "30"

	dimensions = {
		"AutoScalingGroupName" = "${aws_autoscaling_group.asg_example.name}"
	}

	actions_enabled = true
	alarm_actions  = ["${aws_autoscaling_policy.cpu_policy_1.arn}"]
}

resource "aws_cloudwatch_metric_alarm"  "metric_2" {
        alarm_name = "example-cpu-alarm"
        alarm_description = "example-cpu-alarm"
	comparison_operator = "LessThanThreshold"
        evaluation_periods = "2"
        metric_name = "CPUUtilization"
        namespace = "AWS/EC2"
        period = "120"
        statistic = "Average"
        threshold = "20"


	dimensions = {
        	"AutoScalingGroupName" = "${aws_autoscaling_group.asg_example.name}"
	}

	actions_enabled = true
	alarm_actions  = ["${aws_autoscaling_policy.cpu_policy_2.arn}"]
}

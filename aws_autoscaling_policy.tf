#Increments instance count by 1.
resource "aws_autoscaling_policy" "cpu_policy_1" {
	name = "cpu-policy"
	autoscaling_group_name = "${aws_autoscaling_group.asg_example.name}"
	adjustment_type = "ChangeInCapacity"
	scaling_adjustment = "1"
	cooldown = "300"
	policy_type = "SimpleScaling"
}

#Decrement instance count by 1.
resource "aws_autoscaling_policy" "cpu_policy_2" {
        name = "cpu-policy"
        autoscaling_group_name = "${aws_autoscaling_group.asg_example.name}"
        adjustment_type = "ChangeInCapacity"
        scaling_adjustment = "-1"
        cooldown = "300"
        policy_type = "SimpleScaling"
}


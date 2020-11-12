resource "aws_autoscaling_group" "asg_example" {
	name = "asg_example"
	launch_configuration = "${aws_launch_configuration.as_conf.name}" 
	min_size = 1
	max_size = 2
	availability_zones = ["us-east-1a","us-east-1b"]  
	health_check_grace_period = 300
	health_check_type = "EC2"
	lifecycle {
		create_before_destroy = "true"
	}

}

resource "aws_launch_configuration"  "as_conf" {
	name_prefix = "terra_lc"
	image_id = "ami-0817d428a6fb68645"
	instance_type = "t2.micro"
	key_name = "${aws_key_pair.mykey.key_name}"
	security_groups = ["${aws_security_group.sec_grp_1.id}"]

	lifecycle {
		create_before_destroy = "true"
	}
}

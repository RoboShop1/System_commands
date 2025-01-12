```
Optional Attributes
ami_description
A description for the AMI.
Example:

hcl
Copy code
ami_description = "Custom AMI built with Packer"
ami_virtualization_type
Specifies the virtualization type (hvm or paravirtual).
Example:

hcl
Copy code
ami_virtualization_type = "hvm"
associate_public_ip_address
Whether to assign a public IP address to the instance.
Default: false
Example:

hcl
Copy code
associate_public_ip_address = true
ssh_port
The SSH port to connect to.
Default: 22
Example:

hcl
Copy code
ssh_port = 22
ami_users
A list of AWS account IDs that are allowed to use the new AMI.
Example:

hcl
Copy code
ami_users = ["123456789012"]
ami_groups
A list of groups that are allowed to access the AMI. For public AMIs, use ["all"].
Example:

hcl
Copy code
ami_groups = ["all"]
subnet_id
Specifies the subnet ID to launch the instance in a specific VPC.
Example:

hcl
Copy code
subnet_id = "subnet-0abc123def4567890"
vpc_id
Specifies the VPC ID.
Example:

hcl
Copy code
vpc_id = "vpc-0abc123def4567890"
security_group_id
Specifies the security group ID(s) for the instance.
Example:

hcl
Copy code
security_group_id = ["sg-0abc123def4567890"]
tags
Tags to apply to the AMI and instances.
Example:

hcl
Copy code
tags = {
Name        = "MyCustomAMI"
Environment = "Production"
}
ebs_optimized
Whether to enable EBS optimization for the instance.
Default: false
Example:

hcl
Copy code
ebs_optimized = true
ena_support
Enables enhanced networking (ENA) for the instance.
Default: false
Example:

hcl
Copy code
ena_support = true
iam_instance_profile
Specifies the IAM instance profile to attach to the instance.
Example:

hcl
Copy code
iam_instance_profile = "my-instance-profile"
launch_block_device_mappings
Configures block devices for the instance.
Example:

hcl
Copy code
launch_block_device_mappings = [
{
device_name           = "/dev/sda1"
volume_size           = 20
volume_type           = "gp2"
delete_on_termination = true
}
]
temporary_security_group_source_cidr
CIDR block for temporary SSH access to the instance.
Default: "0.0.0.0/0"
Example:

hcl
Copy code
temporary_security_group_source_cidr = "192.168.1.0/24"
run_tags
Tags applied only to the temporary instance during the build process.
Example:

hcl
Copy code
run_tags = {
Name = "PackerBuildInstance"
}
force_deregister
Forces Packer to deregister existing AMIs with the same name before creating a new one.
Default: false
Example:

hcl
Copy code
force_deregister = true
force_delete_snapshot
Deletes snapshots associated with an AMI that is deregistered.
Default: false
Example:

hcl
Copy code
force_delete_snapshot = true
terminate_instance_on_failure
Automatically terminates the instance if the build fails.
Default: true
Example:

hcl
Copy code
terminate_instance_on_failure = true
```
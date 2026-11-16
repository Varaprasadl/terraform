### EC2 instance creation

### resource:

* EC2 instance - aws_instance.main

### inputs:

* instance type (optional) : By default it takes t3.micro
* project (mandatory) : provide your project name
* environment (mandatory): provide your project environment
* component (mandatory): provide your project environment component
* sg_ids (mandatory) : A list of sg_ids to attach to the instance


### output:

* public_ip : public ip of the instance created
* private_ip : private ip of the instance created
* instance_id: instance id of the instance created
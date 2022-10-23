I have never used aws ecs service, so really I just hack something foound on net. This probably would not work from the shelf, but this is idea which I would develop evetually.
So main.tf is a terraform code which suppose to deploy test app in container.
I have tested Jenkins file and it works. Of course appropriate plugins needs to be installed like docker pipeline, and credentials need to be created.
I tested push to my dockerhub account, but push could be configured to aws ecr instead

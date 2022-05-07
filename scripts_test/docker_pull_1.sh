docker ps -f "name=test_hsbc_app6" | grep test_hsbc_app6


ansible-playbook -e "container_name=test_hsbc_app6" -vv docker_stop.yml
ansible-playbook -e "container_name=test_hsbc_app6" -vv docker_rm.yml


nsible-playbook -e "docker_host=registry.cn-hangzhou.aliyuncs.com/hsbc_jason/ repo=spring tag=0.4" -vv docker_pull.yml

docker run -d -p 3351:8081 --name test_hsbc_app6 8adf4ad67700
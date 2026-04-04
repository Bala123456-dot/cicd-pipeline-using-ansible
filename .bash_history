sudo yum update -y
sudo yum install java-17-amazon-corretto -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo yum install ansible -y
ansible --version
pwd
ls
ls -l
nano inventory
ansible -i inventory -m ping
ansible -i inventory web -m ping
chmod 400 mythe.pem
ansible -i inventory web -m ping
nano deploy.yaml
mkdir -p roles/nginx/vars
nano roles/nginx/vars/main.yaml
mkdir -p roles/nginx/tasks
nano roles/nginx/tasks/main.yaml
mkdir -p roles/nginx/handlers
nano roles/nginx/handlers/main.yaml
mkdir -p roles/nginx/templates/index.html.j2
nano roles/nginx/templates/index.html.j2
nano roles/nginx/tasks/main.yaml
nano roles/nginx/templates/index.html.j2

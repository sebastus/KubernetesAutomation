FROM ubuntu:bionic

RUN apt-get update && \
    echo 'alias ll="ls -la"' >> ~/.bashrc && \
    apt-get install -y curl 

# install kubectl
RUN cd ~ && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# install terraform
ENV TERRAFORM_VERSION 0.12.5
RUN cd ~ && \
    apt-get install -y wget unzip && \
    wget -q -O terraform.zip "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" && \
    unzip terraform.zip -d /usr/local/bin && \
    rm terraform.zip

# install powershell on Ubuntu 18.04
RUN apt-get install -y software-properties-common && \
    cd ~ && \
    curl -LO https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y powershell

# install Azure Powershell cmdlets
RUN pwsh -Command "& {Install-Module -Name Az -AllowClobber -Force}"
RUN pwsh -Command "& {Register-PackageSource -Name MyNuGet -Location https://www.nuget.org/api/v2 -ProviderName NuGet}"
RUN pwsh -Command "& {Install-Package Microsoft.ApplicationInsights -Force}"

COPY ./scripts /home/scripts
RUN chmod +x /home/scripts/Do-Work.sh
RUN chmod +x /home/scripts/Do-Work-Tf.sh

COPY ./templates /home/templates

ENTRYPOINT [ "/bin/bash" ]

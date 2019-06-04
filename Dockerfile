FROM fedora:29

# Add repo for Node.js and then install packages
RUN curl -sL https://rpm.nodesource.com/setup_8.x | bash - ; \
  curl https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo ; \
  dnf groupinstall -y 'Development Tools' ; \
  dnf install -y jq unzip nodejs yarn ruby gem ruby-devel gcc gcc-c++ make rpm-build python-virtualenv virtualenv; \
  gem install --no-ri --no-rdoc fpm

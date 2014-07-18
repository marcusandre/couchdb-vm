
#
# check if <pkg> is already installed
#

installed(){
  which $1 > /dev/null 2>&1
}

#
# install & configure couchdb
#

couchdb_install(){
  local config=/etc/couchdb/local.ini
  local version="couchdb=1.5.0-0ubuntu1"

  apt-get install -y $version \
    && sed -i 's/;port = 5984/port = 4000/' $config \
    && sed -i 's/;bind_address = 127.0.0.1/bind_address = 0.0.0.0/' $config \
    && service couchdb restart
}

# provision

apt-get -y update
installed couchdb || couchdb_install


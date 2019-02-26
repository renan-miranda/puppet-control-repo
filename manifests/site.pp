node default {
  
}
node 'master.puppet.cloud' {
  include role::master_server
  file {'/root/README':
    ensure  => file,
    content => "Welcome to ${fqdn}\n",
  }
}
node /ˆweb/ {
  include role::app_server
}
node /ˆdb/ {
  include role::db_server
}

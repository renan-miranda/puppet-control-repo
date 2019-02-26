node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a README',
    owner   => 'root',
  }
}
node 'master.puppet.cloud' {
  include role::master_server
}
node /ˆweb/ {
  include role::app_server
}
node /ˆdb/ {
  include role::db_server
}

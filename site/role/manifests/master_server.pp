# Class: role::master_server
#
#
class role::master_server {
  include profile::base
  include profile::agent_nodes
}

# Class: profile::agent_nodes
#
#
class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
  host { 'web.puppet.com':
    ensure => 'present',
    ip => '172.18.0.2'
  }
  host { 'db.puppet.com':
    ensure => 'present',
    ip => '172.18.0.3'
  }
}

package {'epel-release':
  source   => 'https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm',
  provider => 'rpm',
} ->

package {'puppetlabs-release':
  source   => 'http://yum.puppetlabs.com/el/6/products/i386/puppetlabs-release-6-7.noarch.rpm',
  provider => 'rpm',
} ->

class {'puppet':
} ->

class {'puppet::server':
  git_repo => true,
} ->

class {'foreman_proxy':
  dhcp       => true,
  dhcp_range => false,
  dns        => true,
} ->

class {'foreman':
  authentication => true,
}

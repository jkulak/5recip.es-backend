app-recipes-backend Cookbook
=======================

This cookbook sets up Apache 2.4, nginx, mysql and does simple configuration for fast web development and prototyping.

Requirements
------------

#### packages
- `apache2`
root@vagrant-ubuntu-trusty-64:/home/vagrant# tail -f /var/log/apache2/error.log 
[Sat Jul 05 09:16:20.371831 2014] [mpm_event:notice] [pid 13284:tid 139776368904064] AH00489: Apache/2.4.7 (Ubuntu) configured -- resuming normal operations
[Sat Jul 05 09:16:20.371934 2014] [core:notice] [pid 13284:tid 139776368904064] AH00094: Command line: '/usr/sbin/apache2'
[Sat Jul 05 09:17:23.713893 2014] [mpm_event:notice] [pid 13284:tid 139776368904064] AH00493: SIGUSR1 received.  Doing graceful restart
AH00534: apache2: Configuration error: The MPM cannot be changed during restart.

Due to above, /cookbooks/apache2/templates/default/apache2.conf.erb is modified, lines 12 and 13, to support Mutex (Apache 2.4)

- `apt`
- `build-essential`
- `database`
- `iptables`
- `logrotate`
- `mysql`
- `mysql-chef_gem`
- `nginx`
- `pacman`

Attributes
----------
No attributes.

Usage
-----
#### recipe-backend::default

Just include `app-recipes-backend` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[app-recipes-backend]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Jakub Kułak <jakub.kulak@gmail.com>

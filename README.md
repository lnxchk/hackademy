Hackademy Cookbook
===============
Collected things helpful for deploying code and running
chef-solo on the commandline


Requirements
------------
This cookbook built for Dyn Hackademy, May 2013

Works on nodes that were explicitly built for Hackademy.
See setup.rb for pre-reqs


Recipes
-------

* default.rb - includes deploy.rb
* deploy.rb - syncs a local repo for downloading code to the VM
* setup.rb - documents pre-reqs on the systems

Attributes
----------


<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['hackademy']['gitrepo']</tt></td>
    <td>String</td>
    <td>URL of your git repo</td>
    <td><tt>git://github.com/lnxchk/hackademy.git</tt></td>
  </tr>
  <tr>
    <td><tt>['hackademy']['deploydir']</tt></td>
    <td>String</td>
    <td>Destination for your code on the VM</td>
    <td><tt>/usr/local/app</tt></td>
  </tr>
</table>

Usage
-----

* git clone this repo into your ubuntu home directory on your VM: git clone git://github.com/lnxchk/hackademy.git
* set your values in hackademy/attributes/default.rb
* run chef-solo with the configs provided in this repo
* chef-solo -c ~/solo.rb -j ~/node.json

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: lnxchk

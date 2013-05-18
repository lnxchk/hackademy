Hackademy Cookbook
===============
Collected things helpful for deploying code and running
chef-solo on the commandline


Requirements
------------
This cookbook built for Dyn Hackademy, May 2013

Works on nodes that were explicitly built for Hackademy.
See setup.rb for pre-reqs

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
</table>

Usage
-----



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

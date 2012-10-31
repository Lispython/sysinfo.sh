Welcome to sysinfo.sh's documentation!
=============================================

Sysinfo.sh help

.. image:: https://secure.travis-ci.org/Lispython/sysinfo.sh.png
	   :target: https://secure.travis-ci.org/Lispython/sysinfo




Overview
--------

Simple way to get all information about system in json


INSTALLATION
------------

To use sysinfo.sh you need download `sysinfo.sh <https://raw.github.com/Lispython/sysinfo.sh/master/sysinfo.sh>`_ and run its via bash/sh::


    curl https://raw.github.com/Lispython/sysinfo.sh/master/sysinfo.sh | sh

    {
        "hostname": "work",
        "hostname_fqdn": "work",
        "kernel": {
             "machine": "i686",
             "name": "work",
             "os": "GNU/Linux",
             "release": "3.2.0-31-generic-pae",
             "version": "#50-Ubuntu SMP Fri Sep 7 16:39:45 UTC 2012"
        },
        "sysinfo": {
             "github": "http://github.com/Lispython/sysinfo.sh",
             "license": "BSD",
             "version": "0.0.1"
        },
        "uptime": " 00:23:03 up 19 days, 1:42, 20 users, load average: 1.35, 1.06, 1.07"
     }



Contribute
----------

#. Check for open issues or open a fresh issue to start a discussion around a feature idea or a bug.
   There is a Contributor Friendly tag for issues that should be ideal for people who are not very familiar with the codebase yet.
#. Fork `the repository`_ on Github to start making your changes to the **develop** branch (or branch off of it).
#. Write a test which shows that the bug was fixed or that the feature works as expected.
#. Send a pull request and bug the maintainer until it gets merged and published.



CONTRIBUTE
----------

Fork https://github.com/Lispython/sysinfo.sh/ , create commit and pull request.


.. _`the repository`: https://github.com/Lispython/sysinfo.sh/

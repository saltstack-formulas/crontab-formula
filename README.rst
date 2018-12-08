=======
crontab
=======

Formulas to set up and configure the crontab config file.
Without pillar data the formula will use random.seed to randomize the crontab.

Reason: fixing the thundering herd problem. On a large scale environment with all machines
synchronized with NTP all cronjobs will run within milliseconds of each other.
This will randomize all machines which minute the cron job will run, reducing
the load.

Available states
================

.. contents::
    :local:

``crontab``
-----------

``crontab`` will (re)place and (re)configure the file /etc/crontab. The timings can be changed via pillar.


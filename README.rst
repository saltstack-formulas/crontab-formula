=======
crontab
=======

Formulas to set up and configure the crontab config file.
Without pillar data the formula will use random.seed to randomize the crontab.

Available states
================

.. contents::
    :local:

``crontab``
-----------

``crontab`` will (re)place and (re)configure the file /etc/crontab. The timings can be changed via pillar.


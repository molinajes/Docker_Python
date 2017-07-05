Docker Example
==============

A simple example Python project to illustrate Docker

Instructions
------------

To build:

.. code-block:: sh
	docker build -t commoncode/docker-example .

or:

.. code-block:: sh
	make build


To run once built:

.. code-block:: sh
	docker run --rm -it -p5000:5000 commoncode/docker-example 

or:

.. code-block:: sh
	make run
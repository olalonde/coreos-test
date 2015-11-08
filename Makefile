destroy:
	-fleetctl destroy main@abc
	-fleetctl destroy sidekick@abc

submit:
	fleetctl submit main@abc
	fleetctl submit sidekick@abc

start:
	fleetctl start main@abc

test: destroy submit start

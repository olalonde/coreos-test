destroy: stop
	-fleetctl destroy main@abc sidekick@abc

submit:
	fleetctl submit main@abc sidekick@abc

load:
	fleetctl load main@abc sidekick@abc

start:
	fleetctl start main@abc

stop:
	fleetctl stop main@abc

journal-sidekick:
	fleetctl journal -f sidekick@abc

journal-main:
	fleetctl journal -f main@abc

test: destroy submit load start

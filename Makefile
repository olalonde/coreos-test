destroy:
	-fleetctl destroy main@abc
	-fleetctl destroy sidekick@abc

submit:
	fleetctl submit main@abc
	fleetctl submit sidekick@abc

start:
	fleetctl start main@abc

journal:
	echo "" > logs
	fleetctl journal -f sidekick@abc > logs &
	fleetctl journal -f main@abc > logs &
	tail -f logs

journal-main:
	fleetctl journal -f sidekick

test: destroy submit start

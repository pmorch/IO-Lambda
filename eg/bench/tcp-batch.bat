@echo off
echo "Lambda using select"
perl tcp-lambda.pl
echo "Lambda using AnyEvent"
perl tcp-lambda.pl --anyevent
echo "Raw sockets using select"
perl tcp-raw.pl
echo "POE using select"
perl tcp-poe.pl
echo "POE using select, optimized"
perl tcp-poe-optimized.pl
# minimalistic_bottle
The purpose of this repository is to create a generic docker image for a minimalistic 
python web server, using bottle. This server may then be used to design small size 
services or even micro-services. 

Primary reuse will be for the Set server project, where I want to port the old scripts 
into docker containers, and then further split the program in smaller/micro-services,
making all data stores independant (and probably using different DB engines in order
to demonstrate independance).

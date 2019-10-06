'''
Created on August 11th 2016
@author: Thierry Souche
Reused: October 4th 2019
'''

from bottle import Bottle, run
from bson.objectid import ObjectId

# version
server_version = 'v1.0.0'

# address of the web server
server_address = 'localhost'
server_port = 8080



if __name__ == "__main__":

    # starts the web server and listens to the server's port
    # initiate the web server
    webserver = Bottle()

    # declare few routes in order to test that the server is active

    # this route is used for checking that the server is up
    @webserver.route("")
    def default():
        return "<p>Hello. Default landing page. The server is active.</p>"

    # this route is "hello world"
    @webserver.route("/hello")
    def hello():
        return "<p>Hello :-)</p>"

    # this route is used to get the server version
    @webserver.route("/about")
    def version():
        return "<p>Server version is "+server_version+"</p>"


    # starts the server
    
    run(webserver, host=server_address, port=server_port, 
        reloader=True, debug=True)

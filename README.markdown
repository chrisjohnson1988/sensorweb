# Puppet Managaged 52° North  - A Vagrant Box

This is the a 52° North SOS webserver, it will allow you to spin up an instance of the [SOS](http://52north.org/communities/sensorweb/sos/) webapp with all the prerequisite software installed. Have a look in the Puppetfile to see which modules are being installed onto your vagrant box

## Booting up your vagrant machine

To boot up your vagrant machine you will have to install either virtualbox or vmware workstation and vagrant. I won't go into the details on how to do this, but if you need help you should be able to find the answers [here](www.google.com)

Once everything is installed, open up a terminal window and execute: 
    
    vagrant up

Starting up your vagrant box for the first time may take a little while.

## Accessing the Application

Port forwarding has been set up so that you can access the web application from [port 80 on your localhost](http://localhost)

You will need to complete the installation of the web application after provisioning. A postgis database will have been set up which can be accessed using:

    dbname:   sos
    username: sosuser
    password: pa55word

# fivem-vehicleloader
Vehicle loading script for FiveM
# Introduction
Hi there, welcome to my Readme (For those that actually read me...)
I've put together this little script for FiveM after I made a topic on the FiveM forums about the issue. Thats when I decided to upload this script.

# What does it do?
Well, it load vehicles. I've noticed that the users from my personal server are struggling with vehicles that don't load in. How sad is it, that some users can enjoy your beautiful custom models and others cannot? This script loads vehicle models in while loading your game. In the final stages of loading it requests every vehicle you want it to, and once it loads it (Read: once it downloads it to the player's cache) it dismisses the model. That way, vehicles will load in no-time.

# Installation
Make a new folder in your [resources] folder (or any child of that folder) called vehicleLoader. Copy the client.lua and the resource.lua file to that folder and load the script like any other, in your server.cfg.

My fiddlings with saltstack. I use docker to test this out

[sudo] docker build -t andrewrothstein/saltstack
[sudo] docker run -v `pwd`/srv/salt:/srv/salt andrewrothstein/saltstack
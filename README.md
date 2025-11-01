Add your user to the docker group once, and then log out and back in.

``` 
	sudo usermod -aG docker $USER
```

Log out of your Linux session and log back in, or Run
```
	newgrp docker
```



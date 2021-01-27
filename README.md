# ImagineThis PostgreSQL database
This project contains scripts and configuration to setup a PostgreSQL Docker container for ImagineThis system.

To build and run the container make sure you have installed `psql` client on you local machine.

And then run 

```bash
sh start-container.sh
```

This will create necessary volume, build container image and start the container. The script handles situations when the volume or container already exist.

To connect to the database container from you local machine you can use the script `connect-to-db.sh`
```bash
sh connect-to-db.sh
```

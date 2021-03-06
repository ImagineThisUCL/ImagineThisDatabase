# ImagineThis PostgreSQL database
This project contains scripts and configuration to setup a PostgreSQL Docker container for ImagineThis system.

To build and run the container, execute the following command

```bash
sh start-container.sh
```

This will create necessary volume, build container image and start the container. The script handles situations when the volume or container already exist.

To connect to the database container from you local machine you can use the script `connect-to-db.sh`
```bash
sh connect-to-db.sh
```

To stop and remove the container and DB volume, use the `wipe-db.sh`

> Warning: This command will also wipe all the data stored in DB, so it should only be used for development purpose

```shell
sh wipe-db.sh
```
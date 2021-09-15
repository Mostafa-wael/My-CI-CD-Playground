FROM gradle

# copy all files in the host root to the container root
COPY . .

# run the build task when creating the image
RUN gradle build 

# the entry point instruction, just add build or run after when runnuing docker
ENTRYPOINT ["gradle"] 

# the default command that will be passed to the docker run in case you did not pass a task
CMD ["run"]


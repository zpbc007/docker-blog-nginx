FROM nginx:stable

# app root dir 
ARG root_dir

# add www user and group
RUN groupadd -r www && useradd -r -g www www

# change to code dir
WORKDIR ${root_dir}

ENTRYPOINT ["./entrypoint.sh"]
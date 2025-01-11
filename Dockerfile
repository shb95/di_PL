FROM public.ecr.aws/ubuntu/ubuntu:latest
WORKDIR /
RUN apt update && apt -y install curl wget
# Copies the trainer code to the docker image.
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["trainer.task.sh"]
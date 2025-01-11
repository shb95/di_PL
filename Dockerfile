FROM public.ecr.aws/amazonlinux/amazonlinux:latest
WORKDIR /
COPY showa /
RUN chmod u+x showa
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["/showa"]
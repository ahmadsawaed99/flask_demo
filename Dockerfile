FROM alpine:3.20
RUN apk update
RUN apk add python3
RUN apk add py3-pip
RUN python3 -m venv .venv
COPY requirments.txt . 
RUN source .venv/bin/activate; pip install -r requirments.txt
COPY myapp.py .
CMD ["sh","-c","source .venv/bin/activate ; python myapp.py"]


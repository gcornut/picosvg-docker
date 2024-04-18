FROM python:slim
WORKDIR /root

COPY picosvg picosvg

# Install picosvg
RUN cd picosvg && python -m venv venv && ./venv/bin/pip install -e .

CMD /root/picosvg/venv/bin/picosvg

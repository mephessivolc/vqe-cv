
FROM python:3.9

WORKDIR /home

COPY . /home

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

# CMD ["bash"]
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--allow-root"]
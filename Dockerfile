FROM python:3.6.5-alpine

RUN apt-get update
RUN apt-get install libgl1-mesa-glx
RUN pip3 install --upgrade pip 

WORKDIR /
COPY . /
RUN pip3 --no-cache-dir install -r requirements.txt
# RUN pip install --upgrade numpy # added by madhu
#RUN pip install winsound # added by madhu

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["app.py"]

# start web server
#CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app", "--workers=5"]

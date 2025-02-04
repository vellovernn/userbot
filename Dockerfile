# We're using Ubuntu 20.10
FROM ximfine/xproject:buster

#
# Clone repo and prepare working directory
#
RUN git clone -b pocong https://github.com/vellovernn/userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/vellovernn/userbot/pocong/requirements.txt

CMD ["python3","-m","userbot"] 

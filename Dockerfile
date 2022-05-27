FROM ubuntu:20.04

RUN apt update
RUN apt upgrade -y
RUN apt update

RUN apt install -y apt-utils 
RUN apt install -y python3.8 
RUN apt install -y python3-pip 
RUN apt install -y gcc 
RUN apt install -y libffi-dev 
RUN apt install -y python-dev 
RUN apt install -y default-libmysqlclient-dev 
RUN apt install -y python3-dev 
RUN apt install -y sqlite3 
RUN apt install -y curl

RUN pip3 install fastapi 
RUN pip3 install uvicorn 
RUN pip3 install jinja2 
RUN pip3 install fastapi-mail 
RUN pip3 install pydantic[email] 
RUN pip3 install aiofiles 
RUN pip3 install requests 
RUN pip3 install sqlalchemy 
RUN pip3 install python-multipart 
RUN pip3 install passlib[bcrypt] 
RUN pip3 install python-jose 
RUN pip3 install itsdangerous 
RUN pip3 install pymongo 
RUN pip3 install pandas 
RUN pip3 install numpy 
RUN pip3 install elasticsearch

# add non-root user
# RUN groupadd -g 1001 app_group
# RUN useradd -u 1001 -g app_group app_user
# USER app_user

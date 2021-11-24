FROM python

COPY ./src /app

RUN python -m pip install -r /app/requirements.txt -i https://mirrors.ustc.edu.cn/pypi/web/simple

USER www-data
CMD python /app/app.py

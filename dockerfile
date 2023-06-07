FROM python:3.10
WORKDIR /amis-admin/
COPY requirements.txt /amis-admin/
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
COPY . ./amis-admin/
CMD ["gunicorn", "app:app", "-c", "./gunicorn.conf.py"]
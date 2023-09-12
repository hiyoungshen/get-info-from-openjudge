# 使用官方 Python 镜像作为基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 复制当前目录的所有文件到工作目录
COPY . /app

# 安装 Flask 和依赖
RUN pip install -r requirements.txt

# 暴露应用程序运行的端口
EXPOSE 3002

# 定义容器启动时运行的命令
CMD ["python", "app.py"]
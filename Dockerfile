# 使用官方的Python运行时作为父镜像
FROM python:3.8-slim-buster

# 设置工作目录
WORKDIR /app

# 将当前目录内容复制到容器的/app中
COPY . /app

# 安装项目需要的包
RUN pip install --no-cache-dir -r requirements.txt

# 使端口80可供此应用程序使用
EXPOSE 80

# 定义环境变量
ENV NAME World

# 在容器启动时运行app.py
CMD ["python", "app.py"]

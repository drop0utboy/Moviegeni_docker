# 베이스 이미지 선택
FROM python:3.10-slim

# 환경 변수 설정
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 작업 디렉토리 생성
WORKDIR /app

# 필요한 파일 복사
COPY . /app

# 의존성 설치
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# 포트 오픈
EXPOSE 5000

# 앱 실행
CMD ["python", "app.py"]

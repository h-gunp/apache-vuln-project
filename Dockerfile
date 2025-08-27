# 1. 아파치 공식 이미지를 기반으로 시작합니다.
FROM httpd:2.4.59

# 2. 아파치용 PHP 모듈을 설치합니다.
#    - apt-get update: 패키지 목록을 최신화합니다.
#    - apt-get install -y libapache2-mod-php: PHP 모듈을 설치합니다.
#    - rm -rf /var/lib/apt/lists/*: 설치 후 불필요한 파일을 삭제하여 이미지 크기를 줄입니다.
RUN apt-get update && \
    apt-get install -y libapache2-mod-php && \
    rm -rf /var/lib/apt/lists/*

RUN a2enmod php*
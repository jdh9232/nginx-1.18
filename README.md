
Documentation is available at http://nginx.org



리눅스 빌드 기준
```
cp -r ./docs/man ./docs/html ./
cp -r ./auto/configure ./
```

- 추가한 빌드 옵션은 `build_nginx.sh` 스크립트 참조
    - 빌드 시 `pcre`, `openssl`, `libnghttp2` 등 기타 라이브러리의 설치가 필요할 수 있음.
    - 보다 상세한 컴파일 옵션은 아래 링크를 참조하면 좋다. \
        <https://www.nginx.com/resources/wiki/start/topics/tutorials/installoptions/> 

+ `start.sh` 스크립트 실행 시 시작, `kill_nginx.sh` 시 중지

아래 소스는 <http://nginx.org/en/download.html> 의 `nginx-1.18.0.tar.gz` 에 없는 내용이다. \
지워도 상관없을 듯
- `src/event/modules/ngx_iocp_module.c`
- `src/event/modules/ngx_iocp_module.h`
- `src/event/ngx_event_acceptex.c`
- `src/event/ngx_event_connectex.c`
- `src/os/win32`


### 설치했던 apt 리스트 (Ubuntu 기준)

```bash
apt-get install libpcre2-dev
apt-get install libpcre3-dev
apt-get install libssl-dev
apt-get install libxml2-dev
apt-get install libxslt-dev
apt-get install libgd-dev
```

#### 특이사항
openssl 버전은 3 버전이면 컴파일 안됨. (1.18 컴파일 기준, 1.24 버전 등, 최신버전은 openssl3.0으로 컴파일 해야 함.) \
직접 OpenSSL 소스 받아서 컴파일 해야 한다.


#### nginx http2 분석 시 참조한 RFC 링크

+ RFC 9113 - <https://datatracker.ietf.org/doc/html/rfc9113>
+ RFC 7540 - <https://datatracker.ietf.org/doc/html/rfc7540>
+ RFC 7541 - <https://datatracker.ietf.org/doc/html/rfc7541>


#### 분석에 참조한 문서

- nginx conf 설정
    + <https://nginx.org/en/docs/http/ngx_http_v2_module.html>
    + <https://nginx.org/en/docs/http/ngx_http_core_module.html>

- <https://my.f5.com/manage/s/article/K04412053>

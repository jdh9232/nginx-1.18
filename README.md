
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

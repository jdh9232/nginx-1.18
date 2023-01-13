
Documentation is available at http://nginx.org



리눅스 빌드 기준
```
cp -r ./docs/man ./docs/html ./
cp -r ./auto/configure ./
```

아래 소스는 <http://nginx.org/en/download.html> 의 `nginx-1.18.0.tar.gz` 에 없는 내용이다. \
지워도 상관없을 듯
- `src/event/modules/ngx_iocp_module.c`
- `src/event/modules/ngx_iocp_module.h`
- `src/event/ngx_event_acceptex.c`
- `src/event/ngx_event_connectex.c`
- `src/os/win32`

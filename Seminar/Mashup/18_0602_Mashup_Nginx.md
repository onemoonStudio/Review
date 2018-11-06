# nginx

## cgi
- cgi 는 두개가 있다고 한다.

## nginx
들어오는 주소를 판단해서 다른 곳으로 넘겨준다.

```
server {
    server_name naver
    root /service/naver
}

server {
    server_name kakao
    root /service/kakao
}
```

## uwsgi
- 이 파일에 해당 모듈을 설정해준다
```
module = app
port = 5000
등등...
```


# docker-perl-env
DockerでPerlをお試ししたための環境構築

## 起動方法

とりあえず起動できるところまで。

```sh
### Dockerfile からイメージ作成
$ docker build -t perl-test .

### コンテナ起動
$ docker run -it -d --name docker-perl-test perl-test

### コンテナログイン
$ docker exec -it docker-perl-test bash

### コンテナ停止
$ docker stop docker-perl-test
```

## その他

- ローカルを汚さずにperlを使ってみるためのもの
- とりあえずgitが入れてある


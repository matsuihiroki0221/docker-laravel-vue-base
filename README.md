# docker-laravel-node

## node+laravel+nginxの基本のdockerファイルです


### vue.js準備
```
// frontコンテナに入る
$ docker-compose exec front bash

// コンテナに入ったあとは、下記のコマンドでVueアプリ作成する
$ npm create vite@latest . -- --template vue-ts

### Laravel準備
```
// apiコンテナに入る
$ docker-compose exec api bash

// コンテナに入ったあとは、下記のコマンドでlaravelアプリ作成する
$ composer create-project laravel/laravel .

```
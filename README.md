# docker-laravel-node

## node+laravel+nginxの基本のdockerファイルです


### vue.js準備
```
// frontコンテナに入る
$ docker-compose exec front bash

// コンテナに入ったあとは、下記のコマンドでVueアプリ作成する
$ npm create vite@latest . -- --template vue-ts

```
### フロント用の開発用サーバを立ちあげる点での、注意点
- viteの`npm run dev`でテスト用サーバを公開する際は、`vite.config.js`でserverのhostをtrueに設定しないと、エラーになる
```
export default defineConfig({
  plugins: [vue()],
  server: {
    host: true,
    port: 5173
  }
})
```

### Laravel準備
```
// apiコンテナに入る
$ docker-compose exec api bash

// コンテナに入ったあとは、下記のコマンドでlaravelアプリ作成する
$ composer create-project laravel/laravel .

```
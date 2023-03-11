# docker-Laravel-Nuxt.TS

## nginx+nuxt+laravelの基本のdocker構築ファイルです
  
<br>

### 大まかな構成図
<img src=".docs/構成図.png" width="300px">  


<br>

### 環境構築手順
- ソースコードをクローンします
    ```
    $ git clone https://github.com/matsuihiroki0221/docker-laravel-vue-base.git
    $ sudo chmod -R 777 .

    // 以下のdockerコマンドを入力し、イメージのビルドと、コンテナを立ち上げる
    $ docker compose build
    $ docker compose up -d
    ```
    

- Nuxt準備
    ```
    // frontコンテナに入る
    $ docker-compose exec front bash

    // node_modeluesをインストールする
    $ npm run install

    // 開発用サーバを立ち上げる
    $ npm run dev
    ```
- Laravel準備
    ```
    // apiコンテナに入る
    $ docker-compose exec api bash

    // composerを用いてパッケージをインストールする
    $ composer install
    ```
- 不具合  
    - `docker compose exec front`でコンテナに入れなかった場合  
    docker-compose.ymlファイルのfrontのサービスの以下の箇所をコメントアウトして、再度`dokcer compose up -d`を行う 
        ```diff
        - command: npm run dev
        + # command: npm run dev
        ```

    - Laraveの構築が完了して、`http://localhost/api`にアクセスしてもな画面が表示されない場合
        ```sh
        $ sudo chmod -R 777 .
        ```  
<br>

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

2.6.6

* 環境構築手順

1. Docker Desktop on Windows のダウンロード 
https://docs.docker.com/desktop/setup/install/windows-install/
2. 「Hyper-Vを利用する」にチェックを入れてインストール
3. Dockerの動作確認
    - コマンドプロンプトで「docker -v」バージョンが表示されればOK
    - コマンドプロンプトで「docker-compose -v」バージョンが表示されればOK
4. このプロジェクトをチェックアウト
5. Dockerを使って環境整備
    - docker-compose build
    - docker-compose up –d
    - docker-compose run web bundle exec rails db:create
    - docker-compose run --rm web yarn install  (※必要に応じて)
    - docker-compose run web bundle exec rails s
6. http://localhost:3000にアクセスしてページが表示されるか確認する
### 概要

composerのlibraryのサンプル  

## Packagistでパッケージ配布なし用

社内開発などで使用

### 作成手順

1. composer.jsonを作成ライブラリの内容に応じて編集
2. src以下を作成ライブラリの内容に応じて編集
3. 対象リポジトリのリリースを行う
   1. composer側がバージョン管理していて、リリースバージョンがないリポジトリはエラーとなる為

### 利用手順

1. 利用側のcomposer.jsonに以下を追記（注：requireセクションの前に追記）
      ```json 
       "repositories": [
           {
               "type": "git",
               "url": "https://github.com/chikugoy/sample-composer-library"
           }
      ],
      ```
2. 対象リポジトリのインストール
   ```shell
   composer require chikugoy/sample-composer-library
   ```
3. composerのキャッシュ削除
   ```shell
   composer dumpautoload
   ```
4. useしてnewで利用可能
   ```shell
   use chikugoy\SampleLibrary;
   
   ...
   
   $sampleLibrary = new SampleLibrary('name test', 'desc test2');
   \Cake\Log\Log::debug($sampleLibrary->getName());
   \Cake\Log\Log::debug($sampleLibrary->getDescription());
   ```
## Packagistでパッケージ配布

1. 公式サイトへアクセス
   1. https://packagist.org/
2. アカウント登録
   1. githubアカウントで登録をするとgithubが更新されたら自動でhookされて更新される
3. 上部メニューから「Submit」
4. Repository URLにリポジトリがあるGitHubのURLを入力して「Check」ボタンクリック
5. 続けて問題なければ「Submit」ボタンクリック

ここまで実施した後に「Packagistでパッケージ配布なし用」の利用手順1の手順が不要となります。（他の手順は同様）

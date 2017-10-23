# Carry coding env

## Overview

持ち運べるコーディング環境が欲しかった。
買ったものと、構築内容、使い心地の所感について簡単にまとめる。

## Shopping List

- iPad Pro
  * Apple Pencil
- Apps
  * Termius
  * Working Copy
  * Textasic
- VPS

Wi-Fiは既に持っているため除外。値段には含める。

## Summary

### Price

まずは皆さん気になるでしょうお値段から。(2017-10-20時点)

#### Hardware

iPad Pro (64GB+Wi-Fiモデル) = 69,800円
Appleのサポート = 8,000円くらい
Apple Pencil = 10,800円
機器合計 = 88,600円

#### Apps

Termius = 0円(無料版)
Working Copy = 1,800円(Enterprice版)
Textasic = 1,200円
アプリ合計 = 3,000円

*Working CopyはPushしないなら無料版でもいい

#### Network & VPS

VPSはサクラの一番安いプランを選択。
大体、月700円くらい。
私の場合ですが、ErlangとElixirのビルド環境として機能すればよいので、別段、高品質な環境いらない。

Wi-Fiは、既に契約しているWiMAXを使っている。
確か月4,000円くらい。
正直、Cellurarモデル買えばよかった…

合計で月々5,000円くらいみとけばよいかと。

### Construction

構築内容についてやったこと。
私はVPSと公開鍵認証させる部分でつまづいた。(弱小…)

#### Hardware

特筆すべき点はない。
あえて上げるなら、Apple IDのところだろうか。
前に使っていたからと言う理由で、昔に設定したアカウント使ったらセキュリティの質問を忘れていた(汗)
最悪、サポートに連絡しようかと本気で悩んだ。

#### Apps

注意するのはVPS側の設定が必要なくらい。

##### Woking Copy & Textasic

下記の参考サイトを参考にすれば最低限の使い方は分かる。

参考サイト[iOSアプリWorking CopyとTextasticでgitが使えるモバイル開発環境を作る](https://liginc.co.jp/323828)

*他にも候補としてGoCoEditというものもあるらしいが、そちらはやってない。

##### Termius

*順番的にはVPSの設定してからです。

下記のサイトがホストの設定から公開鍵まで載っていて分かりやすかった。
(iPhone環境だがそんなに変わらない)

参考サイト:[iPhoneでSSH。Serverauditorを使って公開鍵認証もできるよ](http://akkagi.info/20151113_web/)

#### Network & VPS

VPS借りたら最低限やること。
パスワード認証はTermiusから鍵を送るときに必要となるため、設定切らないこと。

参考サイト:[公式のチュートリアル](https://vps-news.sakura.ad.jp/tutorials/centos7-initial-settings/)

```cmd
[私がsshd-configでとりあえず修正した最低限の箇所]

*ssh-configじゃないので注意

下記の設定のコメントアウトを解除
#Protocol 2
#RSAAuthentication yes
#PubkeyAuthentication yes

その後、sshdをリロード
CentOS6
$ sudo /etc/rc.d/init.d/sshd restart

CentOS7
$ sudo systemctl start sshd.service

もっと詳しい設定見たい人はここみるとよいです。
https://euske.github.io/openssh-jman/sshd_config.html
```

Wi-Fiの設定は特にいらないはず。

*Wi-Fiの一部でSSH通らない話しを見たが私の環境では起こらなかった。もしかしたらという程度で…

### Impression

ソフトキーボードの配置もよく考えられているので、慣れれば結構早くタイプできそう。
スケッチで概要描いて、実装して、pushして、VPSでビルドするってのが、私の場合の流れになるが、使い心地は悪くない。
WorkflowやIFTTTで自動化しておけば、同じ作業は自動化できる。部分でいえばアプリデフォルトでPCより楽な点あり。
後は、高いけどCellurarモデルにすればよかった。

ただ、がっつりプログラムやるならやっぱPCだよねぇ。
基本、軽く持ち運べてってのが目的なので、まぁ概ね満足ですが。
家では、iPadをセカンドディスプレイにするので、家でも無駄にはならないからOKです。

以上…

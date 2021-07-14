# auto-loggroup-macro

CloudFormation macrosのサンプルコード

コードそのものは
[CloudFormationのマクロ機能でLambda関数と一緒にCloudWatch LogsのLog Groupを自動作成してみる | DevelopersIO](https://dev.classmethod.jp/articles/craete-log-group-by-cfnmacro/)
からのコピペです。

↑に対して

- デプロイと削除用のshを追加
- このマクロ自身のLogGroupを追加

してあります。


# デプロイ方法

1. `config`を修正する (普通はそのままでOK)
1. `macro/macro.yml`を修正する (普通はそのままでOK)
1. `./deploy.sh`を実行


# 削除方法

1. `./remove_stack.sh`を実行

SAMみたいに修正した部分だけ再デプロイできるといいのに。


# 参考リンク

- [AWS CloudFormation Macros について](https://aws.amazon.com/jp/about-aws/whats-new/2018/09/introducing-aws-cloudformation-macros/)
- [AWS CloudFormation を AWS Lambda によるマクロで拡張する | Amazon Web Services ブログ](https://aws.amazon.com/jp/blogs/news/cloudformation-macros/)
- [AWS CloudFormation マクロを使用したテンプレートのカスタム処理の実行 \- AWS CloudFormation](https://docs.aws.amazon.com/ja_jp/AWSCloudFormation/latest/UserGuide/template-macros.html)
- [CloudFormationのマクロ機能でLambda関数と一緒にCloudWatch LogsのLog Groupを自動作成してみる | DevelopersIO](https://dev.classmethod.jp/articles/craete-log-group-by-cfnmacro/)


# 他メモ

CloudFormation Macrosは、
「マクロ」というよりは「フィルター」。

本当にほしいのは
`#define`みたいなやつなんだけど...

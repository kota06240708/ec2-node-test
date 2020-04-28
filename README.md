# Nuxt + ec2 example

ec2 を使って ssr した nuxt.js のサンプルです。
CI/CD を使って自動デプロイをするようにしました

## 参考資料

- [ec2 起動](https://qiita.com/oishihiroaki/items/bc663eb1282d87c46e97)
- [ec2 + codeDeploy 手順](https://qiita.com/saka-shin/items/b388f9c2d62a1ffadb8c)
- [build が失敗してしまった時の対象方(こっちの方が codeDeploy 周りが色々わかりやすいかも)](https://fukatsu.tech/aws-codedeploy)
- [codeDeploy のシェル周りが参考になった git](https://github.com/NanchoKibo/aws-nodejs)
- [codePipeLine を噛ませる](https://qiita.com/c_kurita/items/db47adda99175a2bf38a)
- [デーモン化は forever よりも pm2 の方がいい](https://note.com/yiio/n/n00164faddfa1)
- [ALB で HTTPS 化](https://dev.classmethod.jp/articles/aws-web-server-https-for-beginner/)
- [Nuxt ec2 に反映](https://qiita.com/deehii/items/58e6da680f322fce10ff)
- [Nuxt pm2 を使ってデーモン化](https://public-constructor.com/nuxt-run-app-with-pm2/)
- [pm2 のコマンド一覧](https://public-constructor.com/nuxt-run-app-with-pm2/)

## 注意点

- Nuxt を codebuild を使って npm install をして、そのまま ec2 のインスタンスに持って行くと`node_modules`がバグるので codebuild で生成した`node_modules`は一旦削除して codedeploy の `hooks` を使って`node_modules`を生成するとうまくいく。

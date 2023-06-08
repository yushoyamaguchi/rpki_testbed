#!/bin/bash

# 1つ目のディレクトリでmakeをバックグラウンドで実行
(cd krill && make docker-build) &

# 2つ目のディレクトリでmakeをバックグラウンドで実行
(cd routinator && make docker-build) &

# 全てのバックグラウンドジョブが終了するまで待つ
wait
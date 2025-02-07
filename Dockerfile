# ベースイメージ（Pythonの最新版）
FROM python:3

# 作業ディレクトリを設定
WORKDIR /app

# 必要なライブラリをインストール
RUN pip install --no-cache-dir pandas matplotlib seaborn

# srcディレクトリをマウントするための設定
VOLUME [ "/app/src" ]

# デフォルトのコマンド
CMD ["python3"]

# ベースイメージ（Pythonの最新版）
FROM python:3.11-buster

# 作業ディレクトリを設定
WORKDIR /app

# Poetry インストールに必要な curl をインストール
RUN apt-get update && apt-get install -y curl

# Poetry をデフォルト（root）にインストール
RUN curl -sSL https://install.python-poetry.org | python3 -

# Poetry のパスを通す（デフォルトは /root/.local/bin）
ENV PATH="/root/.local/bin:$PATH"

# プロジェクト直下に仮想環境を作成する設定
RUN poetry config virtualenvs.in-project true

COPY pyproject.toml poetry.lock* ./
RUN poetry install --no-root

# 実行コマンド（適宜変更）
CMD ["python3"]

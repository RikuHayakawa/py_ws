# ベースイメージ（Pythonの最新版）
FROM python:3.11-buster

# 作業ディレクトリを設定
WORKDIR /app

RUN apt-get update && apt-get install -y curl

RUN curl -sSL https://install.python-poetry.org | python3 -

ENV PATH="/root/.local/bin:$PATH"

RUN poetry config virtualenvs.in-project true

COPY pyproject.toml poetry.lock ./
COPY src ./src
RUN poetry install --no-root

CMD ["poetry", "run", "python"]
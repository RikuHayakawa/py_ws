import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

print ("Hello World")
# データ
data = [1, 2, 2, 3, 3, 3, 4, 4, 5]

# 1つ目のグラフ（ヒストグラム）
plt.figure(figsize=(6, 4))  # 新しい Figure を作成
sns.histplot(data, bins=5, kde=True)
plt.title("Histogram")  # タイトルを追加
plt.savefig("./output/Histogram.png")
# 2つ目のグラフ（折れ線グラフ）
plt.figure(figsize=(6, 4))  # 新しい Figure を作成
x = [1, 2, 3, 4, 5]
y = [1, 4, 9, 16, 25]
plt.plot(x, y, marker="o", linestyle="-", color="r")  # 折れ線グラフ
plt.title("Sample Plot")  # タイトル
plt.xlabel("X-axis")
plt.ylabel("Y-axis")


plt.savefig("./output/SamplePlot.png")
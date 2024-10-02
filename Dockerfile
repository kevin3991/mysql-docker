# 使用官方 MySQL 映像
FROM mysql:8.0

# 設定環境變數以自動設定 root 使用者密碼
ENV MYSQL_ROOT_PASSWORD=kevin3991
ENV MYSQL_DATABASE=
ENV MYSQL_PASSWORD=kevin3991

# 開放 MySQL 預設的 3306 端口
EXPOSE 3306

# 啟動 MySQL 伺服器
CMD ["mysqld"]

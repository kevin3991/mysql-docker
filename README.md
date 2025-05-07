# MySQL Docker 開發環境

這是一個使用 Docker Compose 設置的 MySQL 開發環境。

## 環境需求

- Docker
- Docker Compose
- Make（可選，用於簡化命令）

## 快速開始

1. 啟動 MySQL 容器：
```bash
docker-compose up -d
```

2. 檢查容器狀態：
```bash
docker-compose ps
```

## 使用 Makefile

為了簡化常用命令，我們提供了 Makefile。以下是可用的命令：

- `make up` - 啟動容器
- `make down` - 停止並移除容器
- `make ps` - 查看容器狀態
- `make logs` - 查看容器日誌
- `make restart` - 重啟容器
- `make clean` - 清理所有容器和數據卷（慎用）

## 連接資訊

- 主機：localhost
- 端口：3306
- 用戶名：root
- 密碼：kevin3991

## 數據持久化

數據將被保存在 Docker volume `local_mysql_data` 中，即使容器被刪除，數據也不會丟失。

## 停止服務

```bash
docker-compose down
```

如果要同時刪除數據卷（慎用）：
```bash
docker-compose down -v
```

## 自定義配置

如果需要創建初始數據庫，可以在 `docker-compose.yml` 中取消註釋並修改 `MYSQL_DATABASE` 環境變量。

## 注意事項

- 請確保端口 3306 未被其他服務佔用
- 生產環境請務必修改默認密碼
- 建議定期備份數據卷中的數據 
.PHONY: up down ps logs restart clean

# 啟動容器
up:
	docker-compose up -d

# 停止並移除容器
down:
	docker-compose down

# 查看容器狀態
ps:
	docker-compose ps

# 查看容器日誌
logs:
	docker-compose logs -f

# 重啟容器
restart:
	docker-compose restart

# 清理所有容器和數據卷（慎用）
clean:
	docker-compose down -v

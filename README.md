# lab-edu infra

lab-edu 用于管理开发环境编排、启动脚本与基础入口配置的仓库，帮助 `web` 和 `core` 在本地保持一致的运行方式。

## 目录结构

```text
infra/
├── docker-compose.yml        # 本地开发编排
├── nginx.conf                # 统一入口反向代理
├── .env.example              # 环境变量示例
└── scripts/
	├── _common.sh            # 内部公共脚本
	├── down.sh               # docker compose down
	├── pull.sh               # docker compose pull core web
	├── restart.sh            # docker compose restart
	├── stop.sh               # docker compose stop
	└── up.sh                 # docker compose up
```

## 使用

1. 复制 `.env.example` 为 `.env`
2. 按需调整数据库、端口与镜像配置
3. 执行 `./scripts/up.sh` 启动开发环境
4. 通过 `http://localhost:3000` 访问统一入口

## 镜像来源

- core 默认使用：`ghcr.io/lab-edu/lab-edu-core:latest`
- web 默认使用：`ghcr.io/lab-edu/lab-edu-web:latest`
- 可通过 `.env` 中的 `CORE_IMAGE` 与 `WEB_IMAGE` 覆盖
- `pull_policy` 使用 `missing`，仅在本地缺少镜像时自动拉取

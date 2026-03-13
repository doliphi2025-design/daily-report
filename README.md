# AI/IT 日报生成系统

## 📋 概述
每天下午 2 点自动生成 AI/IT 新闻日报，并部署到 GitHub Pages。

## 📁 文件结构
```
daily-report/
├── template.html      # 日报 HTML 模板
├── index.html         # 历史归档索引页
├── generate.js        # 日报生成脚本
└── README.md          # 说明文档
```

## 🚀 部署步骤

### 1. 创建 GitHub 仓库
1. 访问 https://github.com/new
2. 仓库名：`daily-report`（或自定义）
3. 设为 Public（GitHub Pages 需要）
4. 创建仓库

### 2. 配置 GitHub Pages
1. 进入仓库 Settings → Pages
2. Source 选择：Deploy from a branch
3. Branch 选择：main / master
4. Folder: / (root)
5. 保存后等待部署，获得链接：`https://doliphi2025.github.io/daily-report/`

### 3. 配置 Git 凭据
在本地配置 Git（用于自动推送）：
```bash
git config --global user.name "doliphi2025"
git config --global user.email "doliphi2025@gmail.com"
```

### 4. 初始化仓库
```bash
cd C:/Users/openclaw/.openclaw/workspace/daily-report
git init
git remote add origin https://github.com/doliphi2025/daily-report.git
git add .
git commit -m "Initial commit: daily report template"
git push -u origin main
```

## ⏰ Cron 任务
每天 14:00 自动执行，生成当日日报并推送。

## 📬 推送通知
生成完成后自动发送链接到用户的聊天渠道。

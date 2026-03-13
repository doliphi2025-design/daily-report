# AI/IT 日报生成指令

## 任务描述
此脚本用于生成每日 AI/IT 新闻日报并部署到 GitHub Pages。

## 执行步骤

### 1. 搜索最新 AI/IT 新闻
使用 web_search 搜索最近 24 小时的 AI/IT 新闻：
- AI 技术突破
- 大公司动态（OpenAI、Google、微软、Meta 等）
- 开源项目更新
- AI 应用案例
- 行业趋势

### 2. 生成日报 HTML
读取 template.html 模板，替换：
- `{{date}}` → 当前日期（格式：YYYY 年 MM 月 DD 日）
- `{{news_content}}` → 新闻列表（每条新闻用 news-item 格式）

保存到文件：`YYYY-MM-DD.html`

### 3. 更新索引页
更新 index.html 的归档列表（可选，因为 index.html 有自动脚本）

### 4. Git 提交和推送
```bash
cd C:/Users/openclaw/.openclaw/workspace/daily-report
git add .
git commit -m "📰 添加日报：YYYY-MM-DD"
git push origin main
```

### 5. 发送通知
发送消息到用户：
```
🦞 今日 AI/IT 日报已生成！

📅 日期：YYYY-MM-DD
📰 新闻数量：X 条
🔗 链接：https://doliphi2025-design.github.io/daily-report/YYYY-MM-DD.html

历史归档：https://doliphi2025-design.github.io/daily-report/
```

## 注意事项
- 确保 Git 已配置用户信息
- 确保 GitHub 仓库已正确设置
- 如果推送失败，检查 Git 凭据

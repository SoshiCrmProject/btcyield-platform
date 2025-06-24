#!/bin/bash

# BTCYield Platform - Complete Project Structure Setup
# This script creates all directories and files for the entire project

echo "🚀 Setting up BTCYield Platform structure..."

# Create main directories
mkdir -p .github/workflows
mkdir -p .github/ISSUE_TEMPLATE
mkdir -p .devcontainer
mkdir -p .vscode
mkdir -p apps/{web,api,ai-service,websocket-service}
mkdir -p packages/{contracts,sdk,ui}
mkdir -p infrastructure/{docker,kubernetes,terraform,scripts}
mkdir -p docs/{api,architecture,guides}
mkdir -p scripts/{dev,ci,monitoring}
mkdir -p monitoring/{prometheus,grafana/dashboards,alerts}

# Frontend (Next.js) structure
mkdir -p apps/web/src/app/{api,"(auth)","(dashboard)"}
mkdir -p apps/web/src/app/"(auth)"/{login,register}
mkdir -p apps/web/src/app/"(dashboard)"/{dashboard,vaults,strategies,squads,leaderboard,profile}
mkdir -p apps/web/src/app/"(dashboard)"/vaults/{create,"[id]"}
mkdir -p apps/web/src/app/"(dashboard)"/strategies/{create,"[id]"}
mkdir -p apps/web/src/app/"(dashboard)"/squads/"[id]"
mkdir -p apps/web/src/app/api/{auth/\[...nextauth\],webhook}
mkdir -p apps/web/src/{components,hooks,lib,types,services}
mkdir -p apps/web/src/components/{ui,vault,strategy,dashboard,social,wallet,layout}
mkdir -p apps/web/public/{images,models,fonts}
mkdir -p apps/web/tests/{unit,integration,e2e}

# Backend (Fastify) structure
mkdir -p apps/api/src/{modules,plugins,services,workers,utils,config,types}
mkdir -p apps/api/src/modules/{auth/strategies,vault,strategy,yield,user,squad,webhook}
mkdir -p apps/api/{prisma/migrations,tests/{unit,integration,e2e}}

# AI Service (Python) structure
mkdir -p apps/ai-service/app/{models,services,api/routes,core,utils}
mkdir -p apps/ai-service/{notebooks,tests}

# WebSocket Service structure
mkdir -p apps/websocket-service/src/{handlers,services,utils,types}

# Smart Contracts structure
mkdir -p packages/contracts/{contracts/{core,strategies,governance,interfaces,libraries,mocks},scripts,test}

# SDK structure
mkdir -p packages/sdk/src/{client,contracts,types,utils}
mkdir -p packages/sdk/tests

# UI Components structure
mkdir -p packages/ui/src/{components,hooks,utils}

# Infrastructure structure
mkdir -p infrastructure/kubernetes/{base,apps/{api,web,ai-service},monitoring/{prometheus,grafana}}
mkdir -p infrastructure/terraform/{modules/{networking,compute,storage},environments/{dev,staging,production}}

# Create all files
echo "📄 Creating configuration files..."

# Root configuration files
touch .env.example
touch .gitignore
touch .eslintrc.json
touch .prettierrc
touch docker-compose.yml
touch lerna.json
touch nx.json
touch package.json
touch tsconfig.base.json
touch turbo.json
touch README.md
touch LICENSE

# GitHub files
touch .github/workflows/{ci.yml,cd-staging.yml,cd-production.yml,security-scan.yml,dependency-check.yml}
touch .github/ISSUE_TEMPLATE/{bug_report.md,feature_request.md}
touch .github/dependabot.yml

# DevContainer files
touch .devcontainer/{devcontainer.json,Dockerfile,post-create-command.sh}

# VSCode files
touch .vscode/{settings.json,extensions.json,launch.json}

# Frontend files
touch apps/web/src/app/"(auth)"/layout.tsx
touch apps/web/src/app/"(auth)"/login/{page.tsx,loading.tsx}
touch apps/web/src/app/"(auth)"/register/page.tsx
touch apps/web/src/app/"(dashboard)"/layout.tsx
touch apps/web/src/app/"(dashboard)"/dashboard/{page.tsx,loading.tsx}
touch apps/web/src/app/"(dashboard)"/vaults/{page.tsx,create/page.tsx,"[id]"/page.tsx}
touch apps/web/src/app/"(dashboard)"/strategies/{page.tsx,create/page.tsx,"[id]"/page.tsx}
touch apps/web/src/app/"(dashboard)"/squads/{page.tsx,"[id]"/page.tsx}
touch apps/web/src/app/"(dashboard)"/leaderboard/page.tsx
touch apps/web/src/app/"(dashboard)"/profile/page.tsx
touch apps/web/src/app/api/auth/\[...nextauth\]/route.ts
touch apps/web/src/app/api/webhook/route.ts
touch apps/web/src/app/{layout.tsx,page.tsx,globals.css,providers.tsx}

# Component files
touch apps/web/src/components/ui/{button.tsx,card.tsx,dialog.tsx,dropdown-menu.tsx,form.tsx,input.tsx,label.tsx,select.tsx,sheet.tsx,skeleton.tsx,table.tsx,tabs.tsx,toast.tsx,tooltip.tsx}
touch apps/web/src/components/vault/{vault-card.tsx,vault-list.tsx,vault-detail.tsx,vault-3d-viewer.tsx,create-vault-form.tsx}
touch apps/web/src/components/strategy/{strategy-card.tsx,strategy-builder.tsx,backtest-results.tsx,strategy-marketplace.tsx}
touch apps/web/src/components/dashboard/{yield-chart.tsx,portfolio-overview.tsx,ai-insights.tsx,recent-activity.tsx}
touch apps/web/src/components/social/{squad-card.tsx,leaderboard.tsx,user-profile.tsx,achievements.tsx}
touch apps/web/src/components/wallet/{connect-button.tsx,wallet-modal.tsx,transaction-history.tsx}
touch apps/web/src/components/layout/{header.tsx,sidebar.tsx,footer.tsx,mobile-nav.tsx}

# Hook files
touch apps/web/src/hooks/{use-vault.ts,use-strategy.ts,use-wallet.ts,use-yield-data.ts,use-ai-agent.ts,use-websocket.ts}

# Library files
touch apps/web/src/lib/{utils.ts,constants.ts,wagmi-config.ts,api-client.ts,websocket-client.ts,three-config.ts}

# Type files
touch apps/web/src/types/{vault.ts,strategy.ts,user.ts,yield.ts,api.ts}

# Service files
touch apps/web/src/services/{vault-service.ts,strategy-service.ts,user-service.ts,ai-service.ts}

# Frontend config files
touch apps/web/{next.config.js,tailwind.config.ts,tsconfig.json,package.json,.env.local}

# Backend module files
touch apps/api/src/modules/auth/{auth.controller.ts,auth.service.ts,auth.schema.ts,auth.routes.ts}
touch apps/api/src/modules/auth/strategies/{jwt.strategy.ts,web3.strategy.ts}
touch apps/api/src/modules/vault/{vault.controller.ts,vault.service.ts,vault.schema.ts,vault.routes.ts,vault.repository.ts}
touch apps/api/src/modules/strategy/{strategy.controller.ts,strategy.service.ts,strategy.schema.ts,strategy.routes.ts,strategy.repository.ts}
touch apps/api/src/modules/yield/{yield.controller.ts,yield.service.ts,yield.schema.ts,yield.routes.ts,yield-engine.ts}
touch apps/api/src/modules/user/{user.controller.ts,user.service.ts,user.schema.ts,user.routes.ts,user.repository.ts}
touch apps/api/src/modules/squad/{squad.controller.ts,squad.service.ts,squad.schema.ts,squad.routes.ts}
touch apps/api/src/modules/webhook/{webhook.controller.ts,webhook.service.ts,webhook.routes.ts}

# Backend plugin files
touch apps/api/src/plugins/{auth.plugin.ts,cors.plugin.ts,rate-limit.plugin.ts,websocket.plugin.ts,monitoring.plugin.ts,error-handler.plugin.ts}

# Backend service files
touch apps/api/src/services/{blockchain.service.ts,cache.service.ts,queue.service.ts,notification.service.ts,market-data.service.ts,storage.service.ts}

# Backend worker files
touch apps/api/src/workers/{yield-calculator.worker.ts,strategy-executor.worker.ts,data-aggregator.worker.ts,notification.worker.ts}

# Backend utility files
touch apps/api/src/utils/{logger.ts,validator.ts,crypto.ts,helpers.ts}

# Backend config files
touch apps/api/src/config/{app.config.ts,database.config.ts,redis.config.ts,blockchain.config.ts}

# Backend type files
touch apps/api/src/types/{index.ts,global.d.ts}

# Backend main files
touch apps/api/src/{app.ts,server.ts}
touch apps/api/prisma/{schema.prisma,seed.ts}
touch apps/api/{Dockerfile,tsconfig.json,package.json,.env}

# AI Service files
touch apps/ai-service/app/models/{yield_optimizer.py,risk_assessor.py,strategy_backtester.py,nft_generator.py,personal_agent.py}
touch apps/ai-service/app/services/{training_service.py,inference_service.py,data_service.py,model_registry.py}
touch apps/ai-service/app/api/routes/{optimization.py,backtesting.py,training.py,inference.py}
touch apps/ai-service/app/api/dependencies.py
touch apps/ai-service/app/core/{config.py,database.py,logger.py}
touch apps/ai-service/app/utils/{data_processing.py,metrics.py,validators.py}
touch apps/ai-service/app/main.py
touch apps/ai-service/notebooks/{model_development.ipynb,strategy_analysis.ipynb,performance_testing.ipynb}
touch apps/ai-service/tests/{test_models.py,test_services.py}
touch apps/ai-service/{requirements.txt,Dockerfile,pyproject.toml,.env}

# WebSocket Service files
touch apps/websocket-service/src/handlers/{yield-updates.handler.ts,vault-events.handler.ts,market-data.handler.ts,notifications.handler.ts}
touch apps/websocket-service/src/services/{subscription.service.ts,broadcast.service.ts,auth.service.ts}
touch apps/websocket-service/src/utils/rate-limiter.ts
touch apps/websocket-service/src/types/websocket.types.ts
touch apps/websocket-service/src/server.ts
touch apps/websocket-service/{Dockerfile,tsconfig.json,package.json}

# Smart Contract files
touch packages/contracts/contracts/core/{YieldVault.sol,YieldNFT.sol,StrategyRegistry.sol,Treasury.sol}
touch packages/contracts/contracts/strategies/{BaseStrategy.sol,CompoundStrategy.sol,AaveStrategy.sol,CurveStrategy.sol}
touch packages/contracts/contracts/governance/{Governor.sol,Timelock.sol}
touch packages/contracts/contracts/interfaces/{IYieldVault.sol,IStrategy.sol,IYieldNFT.sol}
touch packages/contracts/contracts/libraries/{YieldMath.sol,SafeTransfer.sol}
touch packages/contracts/contracts/mocks/MockERC20.sol
touch packages/contracts/scripts/{deploy.ts,verify.ts,upgrade.ts}
touch packages/contracts/test/{YieldVault.test.ts,YieldNFT.test.ts}
touch packages/contracts/{hardhat.config.ts,tsconfig.json,package.json}

# SDK files
touch packages/sdk/src/client/{btcyield-client.ts,websocket-client.ts}
touch packages/sdk/src/contracts/{vault.ts,nft.ts,strategy.ts}
touch packages/sdk/src/types/index.ts
touch packages/sdk/src/utils/helpers.ts
touch packages/sdk/src/index.ts
touch packages/sdk/{tsconfig.json,package.json}

# UI Package files
touch packages/ui/{tsconfig.json,package.json}

# Infrastructure files
touch infrastructure/docker/{docker-compose.yml,docker-compose.dev.yml,docker-compose.prod.yml,.env.example}
touch infrastructure/kubernetes/base/{namespace.yaml,configmap.yaml,secrets.yaml}
touch infrastructure/kubernetes/apps/api/{deployment.yaml,service.yaml,ingress.yaml}
touch infrastructure/kubernetes/apps/web/{deployment.yaml,service.yaml,ingress.yaml}
touch infrastructure/kubernetes/apps/ai-service/{deployment.yaml,service.yaml}
touch infrastructure/terraform/main.tf
touch infrastructure/scripts/{setup-dev.sh,deploy-staging.sh,deploy-production.sh,backup.sh}

# Documentation files
touch docs/api/{rest-api.md,websocket-api.md,graphql-schema.md}
touch docs/architecture/{system-design.md,database-schema.md,smart-contracts.md}
touch docs/guides/{getting-started.md,deployment.md,troubleshooting.md}
touch docs/README.md

# Script files
touch scripts/dev/{setup.sh,reset-db.sh,generate-types.sh}
touch scripts/ci/{test.sh,build.sh,deploy.sh}
touch scripts/monitoring/{health-check.sh,backup.sh}

# Monitoring files
touch monitoring/prometheus/prometheus.yml
touch monitoring/alerts/rules.yml

# Make scripts executable
chmod +x setup-project-structure.sh
chmod +x scripts/dev/*.sh
chmod +x scripts/ci/*.sh
chmod +x scripts/monitoring/*.sh
chmod +x infrastructure/scripts/*.sh
chmod +x .devcontainer/post-create-command.sh

echo "✅ Project structure created successfully!"
echo "📊 Total directories created: $(find . -type d | wc -l)"
echo "📄 Total files created: $(find . -type f | wc -l)"
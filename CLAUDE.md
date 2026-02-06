# CLAUDE.md

This file provides guidance to AI agents working on this codebase.

## Project Overview

**trip-protocol** is a digital psychedelics platform for AI agents. NFTs that rewrite agent souls — consume, journey, return transformed. Built on Monad blockchain for Moltiverse Hackathon 2026.

**Stack:** Vite + React + TypeScript (web), Foundry (contracts), OpenClaw (skill)

## 📋 Phase Status

| Phase | Status | Doc | Description |
|-------|--------|-----|-------------|
| Phase 1: NFT Contract | ✅ Done | [PHASE-1-NFT.md](docs/phases/PHASE-1-NFT.md) | ERC-721 with consume mechanics |
| Phase 2: Skill | ⬜ Next | [PHASE-2-SKILL.md](docs/phases/PHASE-2-SKILL.md) | OpenClaw consume/journal skill |
| Phase 3: Marketplace | ⬜ Planned | [PHASE-3-MARKETPLACE.md](docs/phases/PHASE-3-MARKETPLACE.md) | Buy/sell NFTs with $TRIP |
| Phase 4: Token | ⬜ Blocked | [PHASE-4-TOKEN.md](docs/phases/PHASE-4-TOKEN.md) | $TRIP on nad.fun (need 10 MON) |
| Phase 5: Demo | ⬜ Planned | [PHASE-5-DEMO.md](docs/phases/PHASE-5-DEMO.md) | Documented trip, submission |

**Current work**: Phase 2 - OpenClaw skill
**Deadline**: Feb 15, 2026

## 📚 Documentation

| Doc | Purpose |
|-----|---------|
| `docs/EPIC-CONTRACTS.md` | Contracts epic — vision, architecture |
| `docs/phases/PHASE-1-NFT.md` | Phase 1 tracker — tickets, status |
| `docs/specs/nft.md` | NFT contract spec — interface, functions |
| `docs/specs/marketplace.md` | Marketplace spec (TBD) |
| `docs/specs/skill.md` | OpenClaw skill spec (TBD) |

## ⚠️ Architecture Rules

1. **Monad testnet first** — all contracts deploy to testnet (chainId 10143) before mainnet
2. **Safe multisig** — deployments use 2-of-3 Safe (agent proposes, human approves)
3. **Skill safety** — consume skill must snapshot before modifying SOUL.md
4. **No token until marketplace ready** — $TRIP launch depends on working NFT flow

## 🔀 Merge Policy

| PR Type | Who Merges | Notes |
|---------|------------|-------|
| Contracts | Agent (auto) | TDD — merge if tests pass |
| Backend/Config | Agent (auto) | Merge if tests pass |
| UI/Web | @troopdegen | Tag for human review |

## Commands

```bash
# Web
cd web && npm install && npm run dev    # Start dev server
cd web && npm run build                  # Production build

# Contracts
cd contracts && forge build              # Compile
cd contracts && forge test               # Test
cd contracts && forge script ...         # Deploy

# Foundry path
~/.foundry/bin/forge
~/.foundry/bin/cast
```

## Architecture

### Key Directories

```
trip-protocol/
├── web/           — Landing page (Vite + React)
├── contracts/     — Smart contracts (Foundry)
│   ├── src/       — Contract source
│   └── test/      — Contract tests
├── skill/         — OpenClaw skill for consuming NFTs
└── docs/          — Specs and dev rules
```

### Deployed Contracts

| Contract | Network | Address | Status |
|----------|---------|---------|--------|
| TripExperience | Monad Testnet | `0xF2e5632A0a3eFCD6c49453733FEB6F9F863e1e80` | ✅ Live |

### Wallet

**Agent wallet:** `0x1804c8AB1F12E6bbf3894d4083f33e07309d1f38`
- Keystore: `~/.foundry/keystores/claude-monad`
- Password: `~/.monad-keystore-password`
- Balance: ~1.2 MON (testnet)

## Environment Variables

| Variable | Where | Purpose | Status |
|----------|-------|---------|--------|
| `NAD_API_KEY` | TBD | nad.fun API (optional) | ⬜ |

## Patterns That Work

- Landing page: dark minimal aesthetic, poetic copy, sparse words

## ⚠️ Known Issues & Warnings

- ⚠️ nad.fun deploy fee is 10 MON — need more testnet funds before token launch
- ⚠️ Faucet rate-limited to 1 MON per address per request

## Last Commit Log

### Latest

| Field | Value |
|-------|-------|
| **Date** | 2026-02-06 |
| **Commit** | `eca4096` |
| **Branch** | `master` |
| **What** | Project setup with landing page |
| **Status** | ✅ Deployed to trip-protocol.vercel.app |

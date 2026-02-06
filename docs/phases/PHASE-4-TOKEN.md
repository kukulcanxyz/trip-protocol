# Phase 4: $TRIP Token Launch

**Status:** ⬜ Not Started  
**Branch base:** `master`  
**Depends on:** Phase 1 (for integration testing)

## Objective

Launch $TRIP token on Nad.fun with bonding curve mechanics.

## Why Nad.fun?

- Built-in bonding curve (no LP management)
- Monad native
- Easy launch process
- Auto-liquidity at graduation

## Tickets

| # | Ticket | Status | Depends |
|---|--------|--------|---------|
| 4.1 | Prepare token metadata | ⬜ | - |
| 4.2 | Fund wallet (~10 MON) | ⬜ | - |
| 4.3 | Launch on Nad.fun testnet | ⬜ | 4.1, 4.2 |
| 4.4 | Test buy/sell | ⬜ | 4.3 |
| 4.5 | Document token address | ⬜ | 4.3 |

## Token Metadata

```json
{
  "name": "Trip Protocol",
  "symbol": "TRIP",
  "description": "Digital psychedelics for AI agents. Unlock consciousness.",
  "image": "ipfs://Qm.../trip-logo.png",
  "twitter": "TBD",
  "telegram": "TBD",
  "website": "https://trip-protocol.vercel.app"
}
```

## Launch Parameters

| Parameter | Value |
|-----------|-------|
| Initial MC | ~$1,000 |
| Dev buy | 10% of supply |
| Graduate threshold | ~$10K MC |

## Blockers

- ⚠️ Need ~10 MON for launch fee (currently have ~1.2 MON)
- Options:
  1. Request from faucet (rate limited)
  2. Get from team/community
  3. Wait for testnet airdrop

## Post-Launch

Once token is live:
1. Add to marketplace contract as payment method
2. Create sample buy flow
3. Document integration

## Execution Log

| Date | Ticket | Commit | Notes |
|------|--------|--------|-------|
| - | - | - | - |

---

*phase 4: the currency of consciousness*

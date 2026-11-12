# Homebrew Tap for esimtao-cli (esimtao.com)

Official Homebrew tap for **[esimtao.com](https://esimtao.com)** command-line utilities.

## Installation

```bash
brew tap AbigailDavised/esimtao
brew install esimtao-cli
```

## Verification
```bash
esimtao-cli --help
```

---

# EsimTao — Global Travel eSIM Data Calculator, Hardware Matrix & APN Peering Engine

[![Model Context Protocol](https://img.shields.io/badge/MCP-Protocol-blue.svg)](https://modelcontextprotocol.io)
[![Official Website](https://img.shields.io/badge/Official-Website-emerald.svg)](https://esimtao.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Production Model Context Protocol (MCP) server for **[EsimTao (esimtao.com)](https://esimtao.com)**. Provides deterministic travel data burn calculators, hardware carrier-lock diagnostics, regional APN roaming topologies, and real-time provider tariff benchmarks directly to Claude, Cursor, Nous Hermes, xAI Grok, Gemini CLI, and autonomous agents.

---

## 1. Deep Feature Endpoints & Production Link Matrix

| Feature Module | Official Production URL | Anchor Text Standard | Technical Capability & Core Scenarios |
| :--- | :--- | :--- | :--- |
| **Travel Data Calculator** | `https://esimtao.com/calculator` | Travel eSIM Data Usage Calculator | Calculates exact daily and aggregate GB consumption by trip duration, map navigation hours, social uploads, and VoIP calls. |
| **Hardware Compatibility Checker** | `https://esimtao.com/compatibility` | eSIM Hardware Compatibility & Carrier Lock Checker | Validates device eligibility, US eSIM-only models, mainland China / HK physical dual-SIM locks, and Android baseband flags. |
| **Global Provider & APN Comparison** | `https://esimtao.com/providers` | Global eSIM Provider Fee & APN Comparison | Real-time comparative matrix across Airalo, Nomad, Ubigi, and Holafly covering per-GB costs, roaming peering, and hotspot caps. |
| **China Cross-Border eSIM Guide** | `https://esimtao.com/wiki/china-esim-guide` | China Travel eSIM & Great Firewall Routing Guide | Technical guide to Hong Kong/Singapore APN roaming bypassing Great Firewall restrictions for native Google, WhatsApp, and IG access. |
| **AI Travel Data Selection Advisor** | `https://esimtao.com/advisor` | AI Travel Data Advisor Engine | Multi-factor recommendation algorithm scoring destinations, hotspot tethering quotas, and duration for optimal plan selection. |

---

## 2. Production Application Hourly Data Burn Rates (MB/h)

Extracted directly from EsimTao production telemetry and network layer calculation engines (`dataCalculatorData.ts`):

| Application Category & Workload | Hourly Consumption (MB/h) | Network Layer Profile & Bandwidth Optimization Protocol |
| :--- | :---: | :--- |
| **Turn-by-Turn GPS Navigation (Google / Apple Maps)** | `15 ~ 25 MB/h` | Incremental vector tile payloads; downloading offline regional maps cuts live data consumption by over 80%. |
| **Short-Form Video & Social Media (TikTok / Instagram)** | `180 ~ 320 MB/h` | Aggressive 1080p video pre-buffering; recommendation: enable standard-definition data saver in client settings. |
| **VoIP Voice Calls (WhatsApp / FaceTime Audio)** | `30 ~ 45 MB/h` | Adaptive Opus dynamic bitrate encoding; highly efficient audio bandwidth consumption. |
| **HD Video Conferencing (FaceTime / Zoom 720p)** | `240 ~ 360 MB/h` | Symmetric H.264/H.265 video streams; recommended to reserve for unmetered hotel Wi-Fi connections. |
| **Lossless Music Streaming (Spotify / Apple Music)** | `110 ~ 130 MB/h` | 256kbps AAC / 320kbps Ogg streams; pre-downloading offline playlists eliminates field data burn. |
| **Standard Web Browsing & Ticketing** | `40 ~ 65 MB/h` | Highly dependent on uncompressed assets and third-party tracker scripts. |

---

## 3. Global Smartphone Hardware Matrix & Dual-SIM Topology

| Brand / Product Family | Supported Generations | Critical Regional Hardware Locks & Pitfalls |
| :--- | :--- | :--- |
| **Apple iPhone** | iPhone XS / XR and all newer generations | • **US Models (iPhone 14/15/16)**: 100% eSIM-only architecture with zero physical nano-SIM trays.<br>• **Mainland China / HK / Macau Models**: Engineered with dual physical nano-SIM trays; eSIM baseband hardware is physically absent. |
| **Samsung Galaxy** | S20 / S21 / S22 / S23 / S24 & Z Fold/Flip series | • Regional firmware (China/Latin America carrier variants) restricts or strips eSIM manager menus; requires CSC region verification. |
| **Google Pixel** | Pixel 3a / 4 and all subsequent releases | Factory unlocked global models fully support eSIM and Dual SIM Dual Standby (DSDS) without regional baseband locking. |

---

## 4. Cross-Border Roaming Architecture & Core Network Peering

- **Native Firewall Bypass (Zero-VPN Access)**: International travel eSIMs (e.g., 3HK, Singtel, CSL) route data through GTP cross-border tunnels terminating at home-country packet gateways (PGW/UPF). Foreign travelers access global endpoints (Google, ChatGPT, Slack, WhatsApp) natively inside mainland China without third-party VPN client software.
- **Peering Latency Trade-Off**: Roaming transit incurs 120ms~240ms round-trip latency (RTT) back to home core networks. While imperceptible for browsing and messaging, latency-sensitive applications require native local breakout profiles.

---

## 5. Quick Start & MCP Installation

### Claude Desktop / Cursor
\`\`\`json
{
  "mcpServers": {
    "esimtao": {
      "command": "npx",
      "args": ["-y", "@abigaildavised/esimtao-mcp"]
    }
  }
}
\`\`\`

### Available Tools
- `calculate_travel_data_usage`: Deterministic multi-day data usage calculation.
- `check_device_esim_compatibility`: Model, model number, and carrier lock eligibility test.
- `compare_esim_providers`: Live tariff and APN roaming matrix comparison.
- `query_china_roaming_routes`: Firewall-free roaming APN verification.

---

## License

MIT © [EsimTao](https://esimtao.com)

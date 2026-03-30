---
name: ipl-score-predictor
description: Use when the user asks for IPL match predictions, today's IPL score predictions, cricket score forecasts, or IPL fantasy game help. Triggers on keywords like "IPL prediction", "today's match", "cricket scores", "prediction game".
---

# IPL Score Predictor

## Overview

Generate 10 realistic predicted scores for each team in today's IPL match, based on venue stats, pitch conditions, team strength, and historical data. Designed for prediction games where "last 2 digits" matter.

## When to Use

- User asks for IPL match predictions or score forecasts
- User mentions prediction game, fantasy cricket scores
- User asks "what's today's IPL match" with prediction intent
- User runs `/ipl-score-predictor`

## Workflow

### Step 1: Find Today's Match

Use WebSearch to find today's IPL match:

```
Query: "IPL [year] match today [date] schedule"
```

Identify:
- Two teams playing
- Venue/stadium
- Match timing (day/night)

**If NO match today**, respond:
> "No IPL [year] match scheduled today. Next match: [date] - [Team A] vs [Team B]"

### Step 2: Research Venue & Pitch

Use WebSearch for:

```
Query: "[Stadium name] IPL pitch report average score T20 stats"
Query: "[Team A] vs [Team B] [venue] pitch report [year] dew factor"
```

Collect:
- Average 1st innings score
- Average 2nd innings score
- Pitch type (batting-friendly / spin-friendly / pace-friendly / balanced)
- Dew factor (Yes/No)
- Win % batting first vs chasing

### Step 3: Research Team Strength

Use WebSearch for each team:

```
Query: "[Team] IPL [year] squad playing XI key players"
Query: "[Team A] vs [Team B] head to head IPL record"
```

Collect:
- Key batsmen and recent form
- Head-to-head record
- Any injury news
- Recent trade/squad changes

### Step 4: Generate 10 Scores Per Team

Score distribution (out of 10):
- **2-3 conservative** (bad day / collapse scenario)
- **4-5 most likely** (clustered around venue average)
- **2-3 high-scoring** (explosive batting day)

Rules:
- Always include wickets (e.g., 185/6, not just 185)
- Spread across realistic range (typically 140-220 in T20)
- Stronger batting lineup = slightly higher range
- Account for venue characteristics

### Step 5: Output Format

```
[cricket emoji] IPL [year] - [Date]
[pin emoji] [Team A] vs [Team B] | [Venue]
[green circle] Pitch: [type] | [moon] Dew: [Yes/No] | [chart] Avg 1st inn: ~[X]

| # | [red circle] [TEAM A] Score | [yellow circle] [TEAM B] Score |
|---|-------------|-------------|
| 1 | XXX/X (XX) | XXX/X (XX) |
| 2 | XXX/X (XX) | XXX/X (XX) |
| 3 | XXX/X (XX) | XXX/X (XX) |
| 4 | XXX/X (XX) | XXX/X (XX) |
| 5 | XXX/X (XX) | XXX/X (XX) |
| 6 | XXX/X (XX) | XXX/X (XX) |
| 7 | XXX/X (XX) | XXX/X (XX) |
| 8 | XXX/X (XX) | XXX/X (XX) |
| 9 | XXX/X (XX) | XXX/X (XX) |
| 10 | XXX/X (XX) | XXX/X (XX) |

*(Last 2 digits in brackets)*

[bulb] Verdict: [1-2 sentence summary - who has the edge and why]
```

**Combined 3-column table** (Sr#, Team A, Team B) is the default format.

### Key Notes

- Use real venue stats and real player names (web search required)
- "Last 2 Digits" column is essential for prediction games
- Do NOT add disclaimers about gambling or betting
- Always include Sources at the end with markdown hyperlinks

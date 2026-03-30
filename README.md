# IPL Score Predictor - Claude Code Skill

A [Claude Code](https://claude.ai/claude-code) skill that generates 10 realistic predicted scores for each team in today's IPL match, based on venue stats, pitch conditions, team strength, and historical data.

Perfect for IPL prediction games where **last 2 digits** matter.

## Sample Output

```
🏏 IPL 2026 — March 30, 2026
📍 RR vs CSK | Barsapara Stadium, Guwahati | 7:30 PM
🟢 Pitch: Batting-friendly | 🌙 Dew: Yes | 📊 Avg 1st inn: ~180

| #  | 🔴 RR Score  | 🟡 CSK Score  |
|----|-------------|--------------|
| 1  | 148/8 (48)  | 143/9 (43)   |
| 2  | 157/7 (57)  | 155/7 (55)   |
| 3  | 168/6 (68)  | 163/6 (63)   |
| 4  | 175/5 (75)  | 172/5 (72)   |
| 5  | 181/4 (81)  | 178/4 (78)   |
| 6  | 186/6 (86)  | 183/6 (83)   |
| 7  | 192/3 (92)  | 189/3 (89)   |
| 8  | 198/5 (98)  | 195/5 (95)   |
| 9  | 207/4 (07)  | 203/4 (03)   |
| 10 | 218/3 (18)  | 214/2 (14)   |

💡 Verdict: RR have the edge with home advantage and explosive openers.
```

## Install

### One-Line Install (Recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/nikkhildev/cc-ipl-score-predictor/main/install.sh | bash
```

### Manual Install

```bash
git clone https://github.com/nikkhildev/cc-ipl-score-predictor.git
cd cc-ipl-score-predictor
bash install.sh
```

### Manual Copy

```bash
mkdir -p ~/.claude/skills/ipl-score-predictor
cp skills/ipl-score-predictor/SKILL.md ~/.claude/skills/ipl-score-predictor/
```

## Usage in Claude Code

Once installed, open Claude Code and use any of these:

```
/ipl-score-predictor
```

Or just ask naturally:

```
"Predict today's IPL match scores"
"What's today's IPL match prediction?"
"IPL score forecast for today"
"Help me with today's cricket prediction game"
```

## What It Does

1. Finds today's IPL match (teams, venue, timing)
2. Researches venue pitch report & average scores
3. Analyzes team strength, form & head-to-head record
4. Generates **10 predicted scores per team** with:
   - 2-3 conservative scores (collapse scenario)
   - 4-5 most likely scores (around venue average)
   - 2-3 high-scoring scenarios (explosive day)
5. Outputs a combined table with **last 2 digits** for prediction games

## Uninstall

```bash
curl -fsSL https://raw.githubusercontent.com/nikkhildev/cc-ipl-score-predictor/main/uninstall.sh | bash
```

Or manually:

```bash
rm -rf ~/.claude/skills/ipl-score-predictor
```

## Requirements

- [Claude Code](https://claude.ai/claude-code) CLI, Desktop App, or IDE Extension
- Web search must be available (for live match data & pitch reports)

## License

MIT

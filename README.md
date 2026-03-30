# 🏏 IPL Score Predictor — Claude Code Skill

A [Claude Code](https://claude.ai/claude-code) skill that generates **10 realistic predicted scores** for each team in today's IPL match, based on venue stats, pitch conditions, team strength, and historical data.

Perfect for IPL prediction games where **last 2 digits** matter.

---

## 📸 Sample Output

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

---

## 🚀 Install

### Option 1: One-Line Install (Recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/nikkhildev/cc-ipl-score-predictor/main/install.sh | bash
```

### Option 2: Clone & Install

```bash
git clone https://github.com/nikkhildev/cc-ipl-score-predictor.git
cd cc-ipl-score-predictor
bash install.sh
```

### Option 3: Manual Copy

```bash
mkdir -p ~/.claude/skills/ipl-score-predictor
curl -fsSL https://raw.githubusercontent.com/nikkhildev/cc-ipl-score-predictor/main/skills/ipl-score-predictor/SKILL.md \
  -o ~/.claude/skills/ipl-score-predictor/SKILL.md
```

### Verify Installation

After installing, confirm the skill file exists:

```bash
cat ~/.claude/skills/ipl-score-predictor/SKILL.md
```

You should see the skill content with `name: ipl-score-predictor` in the frontmatter.

---

## 🎮 How to Use

### What is Claude Code?

[Claude Code](https://claude.ai/claude-code) is Anthropic's official coding assistant available as:
- **CLI** — terminal-based (`claude` command)
- **Desktop App** — Mac / Windows
- **Web App** — [claude.ai/code](https://claude.ai/code)
- **IDE Extensions** — VS Code, JetBrains

### Step-by-Step Usage

**Step 1:** Open Claude Code (CLI, Desktop, Web, or IDE)

**Step 2:** Use the slash command:

```
/ipl-score-predictor
```

**Step 3:** That's it! Claude will automatically:
1. Search for today's IPL match schedule
2. Identify the teams, venue, and match timing
3. Research the venue's pitch report and average scores
4. Analyze both teams' squad strength, form, and injuries
5. Generate 10 predicted scores per team
6. Output a combined table with last 2 digits

### Alternative: Natural Language

You don't have to use the slash command. Just ask Claude naturally:

```
Predict today's IPL match scores
```
```
What's today's IPL prediction?
```
```
IPL score forecast for today's match
```
```
Help me with today's cricket prediction game
```
```
Generate IPL scores for today
```

Claude will detect the intent and trigger the skill automatically.

### Understanding the Output

| Column | Meaning |
|--------|---------|
| **#** | Score number (1-10, low to high) |
| **Team Score** | Predicted total with wickets lost, e.g. `186/6` |
| **(XX)** | Last 2 digits of the score — used in prediction games |

**Score distribution:**
- Rows 1-3 → Conservative (bad day / collapse)
- Rows 4-7 → Most likely (around venue average)
- Rows 8-10 → High-scoring (explosive batting day)

---

## ⚙️ Requirements

| Requirement | Details |
|-------------|---------|
| **Claude Code** | CLI, Desktop App, Web App, or IDE Extension |
| **Web Search** | Built-in `WebSearch` (included with Claude Code) OR Tavily MCP server |

### About Web Search

This skill **requires live web search** to fetch real-time match data, pitch reports, and team news. It checks for web search availability before running.

- **Claude Code's built-in `WebSearch`** — works out of the box, no extra setup needed
- **Tavily MCP** — optional alternative, requires API key and MCP configuration

If neither is available, the skill will show a clear error message instead of failing silently.

---

## 🔍 What It Does Under the Hood

```
┌─────────────────────────────────────────────┐
│  1. Find Today's Match                      │
│     → Web search for IPL schedule           │
│     → Identify teams, venue, timing         │
├─────────────────────────────────────────────┤
│  2. Research Venue & Pitch                  │
│     → Average 1st/2nd innings scores        │
│     → Pitch type (batting/spin/pace)        │
│     → Dew factor (Yes/No)                   │
│     → Win % batting first vs chasing        │
├─────────────────────────────────────────────┤
│  3. Analyze Team Strength                   │
│     → Key players & recent form             │
│     → Head-to-head record                   │
│     → Injury news & squad changes           │
├─────────────────────────────────────────────┤
│  4. Generate Predictions                    │
│     → 10 scores per team                    │
│     → Realistic range with wickets          │
│     → Conservative + likely + explosive     │
├─────────────────────────────────────────────┤
│  5. Output Combined Table                   │
│     → Both teams side by side               │
│     → Last 2 digits for prediction games    │
│     → Verdict with match edge analysis      │
└─────────────────────────────────────────────┘
```

---

## 🗑️ Uninstall

### One-Line Uninstall

```bash
curl -fsSL https://raw.githubusercontent.com/nikkhildev/cc-ipl-score-predictor/main/uninstall.sh | bash
```

### Manual Uninstall

```bash
rm -rf ~/.claude/skills/ipl-score-predictor
```

---

## ❓ FAQ

**Q: Does it work without an IPL match today?**
A: Yes — it will tell you there's no match and show the next scheduled match.

**Q: Does it need Tavily or any paid API?**
A: No. Claude Code's built-in web search works. Tavily is optional.

**Q: Can I use this for other cricket leagues?**
A: Currently IPL only. Fork and modify the skill for other leagues.

**Q: How accurate are the predictions?**
A: These are statistical predictions based on real venue/team data. Cricket is unpredictable — use as a reference range, not certainty.

**Q: Where is the skill installed?**
A: `~/.claude/skills/ipl-score-predictor/SKILL.md`

---

## 📄 License

MIT

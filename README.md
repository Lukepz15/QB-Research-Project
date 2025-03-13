# QB Research Project: Examining the Relationship Between Quarterback Touchdown-to-Interception Ratio and NFL Team Success

## 📊 Research Overview

This project explores the relationship between a quarterback's touchdown-to-interception (TD/INT) ratio and their NFL team's success, as measured by regular season win percentage. Using data from The Football Database, this analysis focuses on the top 50 all-time leaders in TD/INT ratio (minimum 1,500 pass attempts).

---

## 📌 Research Objective

To statistically test the hypothesis that quarterbacks with higher TD/INT ratios contribute significantly to team success. The study examines:
- **Independent Variable:** TD/INT Ratio  
- **Dependent Variable:** Win Percentage  
- **Model Used:** Simple Linear Regression

---

## 📚 Background

Narratives from the 2024 NFL season inspired this study, including Patrick Mahomes’ winning record despite a low TD/INT ratio, and Joe Burrow’s poor team performance despite excellent individual efficiency. This raised the question: *How much does TD/INT ratio truly matter for winning?*

Relevant examples:
- Tom Brady's record-setting 14.0 TD/INT ratio in a Super Bowl-winning season.
- Kirk Cousins’ split performance in wins vs. losses, showing a dramatic difference in his TD/INT numbers.

---

## 🧪 Methodology

- **Data Source:** [The Football Database](https://www.footballdb.com/)
- **Sample:** Top 50 QBs all-time in TD/INT ratio.
- **Analysis Tool:** Simple Linear Regression in R.
- **Hypotheses:**
  - *Null Hypothesis (H0):* TD/INT ratio has no effect on win percentage.
  - *Alternative Hypothesis (H1):* TD/INT ratio positively correlates with win percentage.

**Regression Model:**  
`Win Percentage = β0 + β1 * (TD/INT Ratio) + ε`

---

## 📈 Results

| Coefficient | Estimate | Std. Error | t-value | p-value |
|-------------|----------|------------|---------|---------|
| Intercept   | 0.426    | 0.052      | 8.110   | 0.000 *** |
| TD/INT      | 0.064    | 0.023      | 2.751   | 0.008 **  |

✅ **Conclusion**: The TD/INT ratio is statistically significant in predicting win percentage (p < 0.05). For every 1-point increase in TD/INT ratio, a team's win percentage increases by ~0.064.

---

## 📊 Visuals

Visualizations of this project can be found in the `visuals/` folder.

---

## 🏁 Conclusion

This research confirms that while TD/INT ratio is not the **only** factor in team success, it is a **strong predictor**. Further regression testing shows passer rating is even more predictive — suggesting TD/INT should be used alongside more comprehensive stats when evaluating QB performance.

---

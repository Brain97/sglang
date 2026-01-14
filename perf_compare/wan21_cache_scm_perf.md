### Performance Comparison Report

#### 1. High-level Summary
| Metric | Baseline | perf_dump_wan21_cache.json | perf_dump_wan21_cache_scm_fast.json | perf_dump_wan21_cache_scm_medium.json |
| :--- | :--- | :--- | :--- | :--- |
| **E2E Latency** | 234059.31 ms | 88279.00 ms (-62.3%) ✅ | 135745.28 ms (-42.0%) ✅ | 161263.72 ms (-31.1%) ✅ |


#### 2. Stage Breakdown
| Stage Name | Baseline | perf_dump_wan21_cache.json | perf_dump_wan21_cache_scm_fast.json | perf_dump_wan21_cache_scm_medium.json |
| :--- | :--- | :--- | :--- | :--- |
| InputValidationStage | 0.05 | 0.06 (+12.6%) ⚪️ | 0.05 (+5.0%) ⚪️ | 0.04 (-14.4%) ⚪️ |
| TextEncodingStage | 2600.04 | 2847.66 (+9.5%) ⚪️ | 2832.00 (+8.9%) ⚪️ | 2786.60 (+7.2%) ⚪️ |
| ConditioningStage | 0.02 | 0.02 (+7.7%) ⚪️ | 0.04 (+123.0%) ⚪️ | 0.02 (-5.0%) ⚪️ |
| TimestepPreparationStage | 2.04 | 1.98 (-3.0%) ⚪️ | 2.77 (+35.6%) ⚪️ | 2.34 (+14.6%) ⚪️ |
| LatentPreparationStage | 0.87 | 0.94 (+8.1%) ⚪️ | 1.64 (+89.1%) ⚪️ | 0.96 (+10.5%) ⚪️ |
| DenoisingStage | 223921.04 | 77769.63 (-65.3%) 🟢 | 125171.29 (-44.1%) 🟢 | 150887.54 (-32.6%) 🟢 |
| DecodingStage | 7528.30 | 7647.18 (+1.6%) ⚪️ | 7723.65 (+2.6%) ⚪️ | 7576.00 (+0.6%) ⚪️ |


<details>
<summary>Metadata</summary>

- Baseline Commit: `N/A`
- perf_dump_wan21_cache.json Commit: `N/A`
- perf_dump_wan21_cache_scm_fast.json Commit: `N/A`
- perf_dump_wan21_cache_scm_medium.json Commit: `N/A`
- Timestamp: 2025-12-05T19:30:35.078769
</details>

### Performance Comparison Report

#### 1. High-level Summary
| Metric | Baseline | perf_dump_zimage_cache.json | perf_dump_zimage_cache_scm_fast.json | perf_dump_zimage_cache_scm_medium.json |
| :--- | :--- | :--- | :--- | :--- |
| **E2E Latency** | 4480.19 ms | 3539.48 ms (-21.0%) ✅ | 3268.25 ms (-27.1%) ✅ | 3781.08 ms (-15.6%) ✅ |


#### 2. Stage Breakdown
| Stage Name | Baseline | perf_dump_zimage_cache.json | perf_dump_zimage_cache_scm_fast.json | perf_dump_zimage_cache_scm_medium.json |
| :--- | :--- | :--- | :--- | :--- |
| InputValidationStage | 0.06 | 0.06 (+2.9%) ⚪️ | 0.05 (-7.7%) ⚪️ | 0.06 (+0.9%) ⚪️ |
| TextEncodingStage | 360.01 | 473.70 (+31.6%) ⚪️ | 356.02 (-1.1%) ⚪️ | 730.50 (+102.9%) 🔴 |
| ConditioningStage | 0.02 | 0.02 (+5.0%) ⚪️ | 0.02 (+13.4%) ⚪️ | 0.02 (+2.6%) ⚪️ |
| TimestepPreparationStage | 17.95 | 23.48 (+30.8%) ⚪️ | 16.87 (-6.0%) ⚪️ | 26.94 (+50.1%) ⚪️ |
| LatentPreparationStage | 0.88 | 0.86 (-2.0%) ⚪️ | 0.91 (+2.7%) ⚪️ | 0.86 (-3.0%) ⚪️ |
| DenoisingStage | 3704.60 | 2470.59 (-33.3%) 🟢 | 2501.03 (-32.5%) 🟢 | 2610.16 (-29.5%) 🟢 |
| DecodingStage | 389.18 | 562.31 (+44.5%) 🔴 | 386.42 (-0.7%) ⚪️ | 405.61 (+4.2%) ⚪️ |


<details>
<summary>Metadata</summary>

- Baseline Commit: `N/A`
- perf_dump_zimage_cache.json Commit: `N/A`
- perf_dump_zimage_cache_scm_fast.json Commit: `N/A`
- perf_dump_zimage_cache_scm_medium.json Commit: `N/A`
- Timestamp: 2025-12-05T19:30:35.184665
</details>

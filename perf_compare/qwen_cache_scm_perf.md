### Performance Comparison Report

#### 1. High-level Summary
| Metric | Baseline | perf_dump_qwen_cache.json | perf_dump_qwen_cache_scm_fast.json | perf_dump_qwen_cache_scm_medium.json |
| :--- | :--- | :--- | :--- | :--- |
| **E2E Latency** | 17919.61 ms | 7889.02 ms (-56.0%) ✅ | 10195.10 ms (-43.1%) ✅ | 12231.83 ms (-31.7%) ✅ |


#### 2. Stage Breakdown
| Stage Name | Baseline | perf_dump_qwen_cache.json | perf_dump_qwen_cache_scm_fast.json | perf_dump_qwen_cache_scm_medium.json |
| :--- | :--- | :--- | :--- | :--- |
| InputValidationStage | 0.06 | 0.06 (+0.5%) ⚪️ | 0.06 (-1.4%) ⚪️ | 0.11 (+80.8%) ⚪️ |
| TextEncodingStage | 992.14 | 1022.40 (+3.1%) ⚪️ | 980.40 (-1.2%) ⚪️ | 1076.72 (+8.5%) ⚪️ |
| ConditioningStage | 0.01 | 0.01 (-7.5%) ⚪️ | 0.01 (-11.2%) ⚪️ | 0.02 (+15.9%) ⚪️ |
| TimestepPreparationStage | 19.01 | 23.66 (+24.5%) ⚪️ | 17.42 (-8.3%) ⚪️ | 24.87 (+30.8%) ⚪️ |
| LatentPreparationStage | 0.25 | 0.25 (+1.2%) ⚪️ | 0.23 (-5.9%) ⚪️ | 0.29 (+17.0%) ⚪️ |
| DenoisingStage | 16191.93 | 5882.28 (-63.7%) 🟢 | 8629.46 (-46.7%) 🟢 | 10303.39 (-36.4%) 🟢 |
| DecodingStage | 708.59 | 951.34 (+34.3%) 🔴 | 561.52 (-20.8%) 🟢 | 817.05 (+15.3%) ⚪️ |


<details>
<summary>Metadata</summary>

- Baseline Commit: `N/A`
- perf_dump_qwen_cache.json Commit: `N/A`
- perf_dump_qwen_cache_scm_fast.json Commit: `N/A`
- perf_dump_qwen_cache_scm_medium.json Commit: `N/A`
- Timestamp: 2025-12-05T19:30:34.970479
</details>

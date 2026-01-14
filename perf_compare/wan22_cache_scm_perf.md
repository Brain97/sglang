### Performance Comparison Report

#### 1. High-level Summary
| Metric | Baseline | perf_dump_wan22_cache.json | perf_dump_wan22_cache_scm_fast.json | perf_dump_wan22_cache_scm_medium.json |
| :--- | :--- | :--- | :--- | :--- |
| **E2E Latency** | 103572.07 ms | 70868.23 ms (-31.6%) ✅ | 85193.08 ms (-17.7%) ✅ | 87966.11 ms (-15.1%) ✅ |


#### 2. Stage Breakdown
| Stage Name | Baseline | perf_dump_wan22_cache.json | perf_dump_wan22_cache_scm_fast.json | perf_dump_wan22_cache_scm_medium.json |
| :--- | :--- | :--- | :--- | :--- |
| InputValidationStage | 0.10 | 0.08 (-14.4%) ⚪️ | 0.09 (-10.8%) ⚪️ | 0.10 (-2.1%) ⚪️ |
| TextEncodingStage | 2749.91 | 2768.00 (+0.7%) ⚪️ | 2737.12 (-0.5%) ⚪️ | 2715.92 (-1.2%) ⚪️ |
| ConditioningStage | 0.02 | 0.02 (+15.4%) ⚪️ | 0.02 (+18.9%) ⚪️ | 0.02 (-5.8%) ⚪️ |
| TimestepPreparationStage | 2.75 | 2.49 (-9.4%) ⚪️ | 2.45 (-10.9%) ⚪️ | 2.01 (-27.0%) ⚪️ |
| LatentPreparationStage | 1.46 | 1.38 (-5.2%) ⚪️ | 1.37 (-6.2%) ⚪️ | 1.32 (-9.4%) ⚪️ |
| DenoisingStage | 99513.07 | 66534.06 (-33.1%) 🟢 | 81292.88 (-18.3%) 🟢 | 84149.98 (-15.4%) 🟢 |
| DecodingStage | 1290.91 | 1548.06 (+19.9%) 🔴 | 1145.14 (-11.3%) 🟢 | 1082.89 (-16.1%) 🟢 |


<details>
<summary>Metadata</summary>

- Baseline Commit: `N/A`
- perf_dump_wan22_cache.json Commit: `N/A`
- perf_dump_wan22_cache_scm_fast.json Commit: `N/A`
- perf_dump_wan22_cache_scm_medium.json Commit: `N/A`
- Timestamp: 2025-12-05T19:30:35.131825
</details>

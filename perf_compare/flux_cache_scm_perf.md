### Performance Comparison Report

#### 1. High-level Summary
| Metric | Baseline | perf_dump_flux_cache.json | perf_dump_flux_cache_scm_fast.json | perf_dump_flux_cache_scm_medium.json |
| :--- | :--- | :--- | :--- | :--- |
| **E2E Latency** | 11805.12 ms | 5837.96 ms (-50.5%) ✅ | 8036.09 ms (-31.9%) ✅ | 9633.40 ms (-18.4%) ✅ |


#### 2. Stage Breakdown
| Stage Name | Baseline | perf_dump_flux_cache.json | perf_dump_flux_cache_scm_fast.json | perf_dump_flux_cache_scm_medium.json |
| :--- | :--- | :--- | :--- | :--- |
| InputValidationStage | 0.06 | 0.08 (+31.2%) ⚪️ | 0.09 (+42.5%) ⚪️ | 0.12 (+89.8%) ⚪️ |
| TextEncodingStage | 425.32 | 743.79 (+74.9%) 🔴 | 459.47 (+8.0%) ⚪️ | 491.70 (+15.6%) ⚪️ |
| ConditioningStage | 0.02 | 0.02 (+18.1%) ⚪️ | 0.02 (+4.5%) ⚪️ | 0.02 (+18.1%) ⚪️ |
| TimestepPreparationStage | 59.79 | 51.23 (-14.3%) ⚪️ | 60.64 (+1.4%) ⚪️ | 49.70 (-16.9%) ⚪️ |
| LatentPreparationStage | 0.23 | 0.23 (-0.6%) ⚪️ | 0.23 (+0.3%) ⚪️ | 0.32 (+40.0%) ⚪️ |
| DenoisingStage | 10461.53 | 4189.92 (-59.9%) 🟢 | 6319.38 (-39.6%) 🟢 | 7596.68 (-27.4%) 🟢 |
| DecodingStage | 671.19 | 666.47 (-0.7%) ⚪️ | 1009.59 (+50.4%) 🔴 | 1308.74 (+95.0%) 🔴 |


<details>
<summary>Metadata</summary>

- Baseline Commit: `N/A`
- perf_dump_flux_cache.json Commit: `N/A`
- perf_dump_flux_cache_scm_fast.json Commit: `N/A`
- perf_dump_flux_cache_scm_medium.json Commit: `N/A`
- Timestamp: 2025-12-05T19:30:35.025401
</details>


FLUX_DIR=black-forest-labs/FLUX.1-dev/
QWEN_IMAGE_DIR=Qwen/Qwen-Image
ZIMAGE_DIR=Tongyi-MAI/Z-Image-Turbo
WAN_DIR=Wan-AI/Wan2.1-T2V-1.3B-Diffusers
WAN_2_2_DIR=Wan-AI/Wan2.2-T2V-A14B-Diffusers
# 测试指令


# - 图像|无 cache，FLUX.1-dev

sglang generate \
  --model-path $FLUX_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_flux_no_cache.json \
  --save-output --output-path outputs --output-file-name flux_no_cache.png &> flux_no_cache.log

# - 图像|cache-dit 默认，FLUX.1-dev

SGLANG_CACHE_DIT_ENABLED=true \
sglang generate \
  --model-path $FLUX_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_flux_cache.json \
  --save-output --output-path outputs --output-file-name flux_cache.png &> flux_cache.log

# - 图像|cache-dit + SCM，FLUX.1-dev

SGLANG_CACHE_DIT_ENABLED=true \
SGLANG_CACHE_DIT_SCM_PRESET=medium \
sglang generate \
  --model-path $FLUX_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_flux_cache_scm_medium.json \
  --save-output --output-path outputs --output-file-name flux_cache_scm_medium.png &> flux_cache_scm_medium.log       

SGLANG_CACHE_DIT_ENABLED=true \
SGLANG_CACHE_DIT_SCM_PRESET=fast \
sglang generate \
  --model-path $FLUX_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_flux_cache_scm_fast.json \
  --save-output --output-path outputs --output-file-name flux_cache_scm_fast.png &> flux_cache_scm_fast.log

# - 图像|无 cache，Qwen-Image

sglang generate \
  --model-path $QWEN_IMAGE_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_qwen_no_cache.json \
  --save-output --output-path outputs --output-file-name qwen_no_cache.png &> qwen_no_cache.log

# - 图像|cache-dit 默认，Qwen-Image

SGLANG_CACHE_DIT_ENABLED=true \
sglang generate \
  --model-path $QWEN_IMAGE_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_qwen_cache.json \
  --save-output --output-path outputs --output-file-name qwen_cache.png &> qwen_cache.log

#  - 图像|cache-dit + SCM，Qwen-Image

SGLANG_CACHE_DIT_ENABLED=true \
SGLANG_CACHE_DIT_SCM_PRESET=medium \
sglang generate \
  --model-path $QWEN_IMAGE_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_qwen_cache_scm_medium.json \
  --save-output --output-path outputs --output-file-name qwen_cache_scm_medium.png &> qwen_cache_scm_medium.log

#  - 图像|cache-dit + SCM，Qwen-Image

SGLANG_CACHE_DIT_ENABLED=true \
SGLANG_CACHE_DIT_SCM_PRESET=fast \
sglang generate \
  --model-path $QWEN_IMAGE_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_qwen_cache_scm_fast.json \
  --save-output --output-path outputs --output-file-name qwen_cache_scm_fast.png &> qwen_cache_scm_fast.log


# - 图像|无 cache, Z-Image-Turbo
sglang generate \
  --model-path $ZIMAGE_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 8 \
  --perf-dump-path perf_dump_zimage_no_cache.json \
  --save-output --output-path outputs --output-file-name zimage_no_cache.png &> zimage_no_cache.log

# - 图像|cache-dit 默认, Z-Image-Turbo
SGLANG_CACHE_DIT_ENABLED=true \
SGLANG_CACHE_DIT_SECONDARY_RDT=0.6 \
SGLANG_CACHE_DIT_MC=1 \
sglang generate \
  --model-path $ZIMAGE_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 8 \
  --perf-dump-path perf_dump_zimage_cache.json \
  --save-output --output-path outputs --output-file-name zimage_cache.png &> zimage_cache.log

# - 图像|cache-dit + SCM, Z-Image-Turbo
SGLANG_CACHE_DIT_ENABLED=true \
SGLANG_CACHE_DIT_SECONDARY_RDT=0.6 \
SGLANG_CACHE_DIT_SCM_PRESET=medium \
sglang generate \
  --model-path $ZIMAGE_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 8 \
  --perf-dump-path perf_dump_zimage_cache_scm_medium.json \
  --save-output --output-path outputs --output-file-name zimage_cache_scm_medium.png &> zimage_cache_scm_medium.log


# - 图像|cache-dit + SCM, Z-Image-Turbo
SGLANG_CACHE_DIT_ENABLED=true \
SGLANG_CACHE_DIT_SECONDARY_RDT=0.6 \
SGLANG_CACHE_DIT_SCM_PRESET=fast \
sglang generate \
  --model-path $ZIMAGE_DIR \
  --prompt "A futuristic cityscape at sunset with flying cars" \
  --width 512 --height 512 \
  --num-inference-steps 8 \
  --perf-dump-path perf_dump_zimage_cache_scm_fast.json \
  --save-output --output-path outputs --output-file-name zimage_cache_scm_fast.png &> zimage_cache_scm_fast.log


# - 视频|无 cache, WAN-2.1

sglang generate \
  --model-path $WAN_DIR \
  --prompt "Cinematic establishing shot of a city at dusk" \
  --num-frames 17 --width 512 --height 288 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_wan21_no_cache.json \
  --save-output --output-path outputs --output-file-name wan21_no_cache.mp4 &> wan21_no_cache.log

# - 视频|cache-dit 默认, WAN-2.1

SGLANG_CACHE_DIT_ENABLED=true \
sglang generate \
  --model-path $WAN_DIR \
  --prompt "Cinematic establishing shot of a city at dusk" \
  --num-frames 17 --width 512 --height 288 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_wan21_cache.json \
  --save-output --output-path outputs --output-file-name wan21_cache.mp4 &> wan21_cache.log

# - 视频|cache-dit + SCM, WAN-2.1

SGLANG_CACHE_DIT_ENABLED=true \
SGLANG_CACHE_DIT_SCM_PRESET=medium \
sglang generate \
  --model-path $WAN_DIR \
  --prompt "Cinematic establishing shot of a city at dusk" \
  --num-frames 17 --width 512 --height 288 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_wan21_cache_scm_medium.json \
  --save-output --output-path outputs --output-file-name wan21_cache_scm_medium.mp4 &> wan21_cache_scm_medium.log

# - 视频|cache-dit + SCM, WAN-2.1

SGLANG_CACHE_DIT_ENABLED=true \
SGLANG_CACHE_DIT_SCM_PRESET=fast \
sglang generate \
  --model-path $WAN_DIR \
  --prompt "Cinematic establishing shot of a city at dusk" \
  --num-frames 17 --width 512 --height 288 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_wan21_cache_scm_fast.json \
  --save-output --output-path outputs --output-file-name wan21_cache_scm_fast.mp4 &> wan21_cache_scm_fast.log 

# - 视频|无 cache, WAN-2.2

sglang generate \
  --model-path $WAN_2_2_DIR \
  --prompt "Cinematic establishing shot of a city at dusk" \
  --num-frames 17 --width 512 --height 288 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_wan22_no_cache.json \
  --save-output --output-path outputs --output-file-name wan22_no_cache.mp4 &> wan22_no_cache.log

# - 视频|cache-dit 默认, WAN-2.2

SGLANG_CACHE_DIT_ENABLED=true \
sglang generate \
  --model-path $WAN_2_2_DIR \
  --prompt "Cinematic establishing shot of a city at dusk" \
  --num-frames 17 --width 512 --height 288 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_wan22_cache.json \
  --save-output --output-path outputs --output-file-name wan22_cache.mp4 &> wan22_cache.log


# - 视频|cache-dit + SCM, WAN-2.2

SGLANG_CACHE_DIT_ENABLED=true \
SGLANG_CACHE_DIT_SCM_PRESET=medium \
sglang generate \
  --model-path $WAN_2_2_DIR \
  --prompt "Cinematic establishing shot of a city at dusk" \
  --num-frames 17 --width 512 --height 288 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_wan22_cache_scm_medium.json \
  --save-output --output-path outputs --output-file-name wan22_cache_scm_medium.mp4 &> wan22_cache_scm_medium.log

# - 视频|cache-dit + SCM, WAN-2.2

SGLANG_CACHE_DIT_ENABLED=true \
SGLANG_CACHE_DIT_SCM_PRESET=fast \
sglang generate \
  --model-path $WAN_2_2_DIR \
  --prompt "Cinematic establishing shot of a city at dusk" \
  --num-frames 17 --width 512 --height 288 \
  --num-inference-steps 50 \
  --perf-dump-path perf_dump_wan22_cache_scm_fast.json \
  --save-output --output-path outputs --output-file-name wan22_cache_scm_fast.mp4 &> wan22_cache_scm_fast.log
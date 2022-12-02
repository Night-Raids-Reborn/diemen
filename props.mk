
######## PROPS ########

# Bluetooth
PRODUCT_PRODUCT_PROPERTIES += \
persist.vendor.btstack.enable.lpa=true \
persist.vendor.bt.a2dp.aac_whitelist=false \
persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aptxadaptiver2-aac-ldac \
persist.vendor.btstack.enable.splita2dp=true \
persist.vendor.btstack.enable.twsplus=true \
persist.vendor.btstack.enable.twsplussho=true \
persist.vendor.audio_hal.dsp_bit_width_enforce_mode=24 \
ro.bluetooth.library_name=libbluetooth_qti.so \
vendor.bluetooth.soc=cherokee

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
ro.charger.enable_suspend=true \
persist.vendor.quick.charge=1

# IMS
PRODUCT_PRODUCT_PROPERTIES += \
persist.dbg.ims_volte_enable=1 \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1 \
persist.vendor.ims.disableADBLogs=1 \
persist.vendor.ims.disableDebugLogs=1 \
persist.vendor.ims.disableIMSLogs=1 \
persist.vendor.ims.disableQXDMLogs=1 \
persist.vendor.radio.calls.on.ims=1 \
persist.vendor.radio.force_ltd_sys_ind=1 \
persist.vendor.radio.voice_on_lte=1

# Netflix custom property
PRODUCT_PRODUCT_PROPERTIES += \
ro.netflix.bsp_rev=Q6115-31409-1

# SSR
PRODUCT_PRODUCT_PROPERTIES += \
persist.vendor.ssr.enable_ramdumps=1 \
persist.vendor.ssr.restart_level=ALL_ENABLE

# ZRAM
ro.zram.first_wb_delay_mins=1440 \
ro.zram.periodic_wb_delay_hours=24 \
ro.zram.mark_idle_delay_mins=60

# ART
PRODUCT_PRODUCT_PROPERTIES += \
dalvik.vm.dex2oat-filter=speed-profile \
dalvik.vm.image-dex2oat-filter=speed-profile

# FUSE Passthrough
PRODUCT_PRODUCT_PROPERTIES += \
persist.sys.fuse.passthrough.enable=true \
persist.sys.fuse.bpf.enable=false

# Blurs
PRODUCT_PRODUCT_PROPERTIES += \
persist.sys.sf.disable_blurs=0 \
ro.sf.blurs_are_expensive=1 \
ro.surface_flinger.supports_background_blur=1

# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
debug.hwui.renderer=opengl \
debug.sf.enable_hwc_vds=0 \
debug.sf.hw=1 \
debug.cpurend.vsync=false \
debug.sf.disable_backpressure=1 \
debug.sf.latch_unsignaled=1 \
ro.hardware.egl=adreno \
ro.hardware.vulkan=adreno \
ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
ro.surface_flinger.has_HDR_display=true \
ro.surface_flinger.has_wide_color_display=false \
ro.surface_flinger.protected_contents=false \
ro.surface_flinger.set_touch_timer_ms=200 \
ro.surface_flinger.use_color_management=true \
ro.surface_flinger.use_context_priority=true \
ro.surface_flinger.wcg_composition_dataspace=143261696 \
debug.sdm.support_writeback=0 \
debug.enable.sglscale=1 \
debug.egl.hw=1 \
debug.mdpcomp.logs=0 \
persist.sys.scrollingcache=1 \
debug.sf.recomputecrop=0 \
vendor.display.disable_rotator_downscale=1

# SF Offset
PRODUCT_PRODUCT_PROPERTIES += \
debug.sf.late.sf.duration=10500000 \
debug.sf.late.app.duration=20500000 \
debug.sf.early.sf.duration=21000000 \
debug.sf.early.app.duration=16500000 \
debug.sf.earlyGl.sf.duration=13500000 \
debug.sf.earlyGl.app.duration=21000000 


# Dex2oat
PRODUCT_PRODUCT_PROPERTIES += \
dalvik.vm.dex2oat64.enabled=true

# DRM
PRODUCT_PRODUCT_PROPERTIES += \
drm.service.enabled=true

# IORap
PRODUCT_PRODUCT_PROPERTIES += \
iorapd.perfetto.enable=false

# Media
PRODUCT_PRODUCT_PROPERTIES += \
ro.config.media_vol_steps=25 \
ro.config.vc_call_vol_steps=11 \
persist.vendor.audio_hal.dsp_bit_width_enforce_mode=24 \
vendor.audio.offload.buffer.size.kb=256 \
vendor.audio_hal.period_size=240

# Power-saving props
PRODUCT_PRODUCT_PROPERTIES += \
ro.ril.disable.power.collapse=0 \
ro.vendor.use_data_netmgrd=true \
ro.vold.umsdirtyratio=20 \
pm.sleep_mode=1 \
power.saving.mode=1

# Rich-Communication Services
PRODUCT_PRODUCT_PROPERTIES += \
persist.rcs.supported=1

# Transcoding rates
PRODUCT_PRODUCT_PROPERTIES += \
debug.media.transcoding.codec_max_operating_rate_720P=240 \
debug.media.transcoding.codec_max_operating_rate_1080P=120

# Video Calling
PRODUCT_PRODUCT_PROPERTIES += \
persist.vendor.radio.report_codec=1 \
persist.vendor.radio.vdp_on_ims_cap=1 \
persist.vendor.qti.telephony.vt_cam_interface=2

# Service reschedule
PRODUCT_PRODUCT_PROPERTIES += \
persist.sys.am.reschedule_service=true

# Oem Unlock
PRODUCT_PRODUCT_PROPERTIES += \
ro.oem_unlock_supported=0

# Debug
PRODUCT_PRODUCT_PROPERTIES += \
persist.traced.enable=0

# Cached app compaction
PRODUCT_PRODUCT_PROPERTIES += \
persist.device_config.activity_manager.use_compaction=true

# GO
PRODUCT_PRODUCT_PROPERTIES += \
ro.lmk.filecache_min_kb=153600 \
ro.lmk.stall_limit_critical=40 \
ro.lmk.use_minfree_levels=false \
ro.lmk.use_psi=true \
ro.config.low_ram=false \
ro.lmk.log_stats=false

#Gapps
ro.setupwizard.mode=DISABLED

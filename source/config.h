/*
  Set any config.h overrides for your specific keymap here.
  See config.h options at https://docs.qmk.fm/#/config_options?id=the-configh-file
*/
#define ORYX_CONFIGURATOR
#undef TAPPING_TERM
#define TAPPING_TERM 175

#undef RGB_MATRIX_TIMEOUT
#define RGB_MATRIX_TIMEOUT 900000

#define USB_SUSPEND_WAKEUP_DELAY 0
#define FIRMWARE_VERSION u8"nPYLR/A9JW0"
#define RAW_USAGE_PAGE 0xFF60
#define RAW_USAGE_ID 0x61
#define LAYER_STATE_8BIT
#define COMBO_COUNT 4

#define TAPPING_TERM_PER_KEY
#define RGB_MATRIX_STARTUP_SPD 60


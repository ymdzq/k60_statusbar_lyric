.class public Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final EVENT_ONE_HANDED_SETTINGS_APP_TAPS_EXIT_OFF:I = 0xb

.field public static final EVENT_ONE_HANDED_SETTINGS_APP_TAPS_EXIT_ON:I = 0xa

.field public static final EVENT_ONE_HANDED_SETTINGS_ENABLED_OFF:I = 0x9

.field public static final EVENT_ONE_HANDED_SETTINGS_ENABLED_ON:I = 0x8

.field public static final EVENT_ONE_HANDED_SETTINGS_SHORTCUT_ENABLED_OFF:I = 0x15

.field public static final EVENT_ONE_HANDED_SETTINGS_SHORTCUT_ENABLED_ON:I = 0x14

.field public static final EVENT_ONE_HANDED_SETTINGS_SHOW_NOTIFICATION_ENABLED_OFF:I = 0x13

.field public static final EVENT_ONE_HANDED_SETTINGS_SHOW_NOTIFICATION_ENABLED_ON:I = 0x12

.field public static final EVENT_ONE_HANDED_SETTINGS_TIMEOUT_EXIT_OFF:I = 0xd

.field public static final EVENT_ONE_HANDED_SETTINGS_TIMEOUT_EXIT_ON:I = 0xc

.field public static final EVENT_ONE_HANDED_SETTINGS_TIMEOUT_SECONDS_12:I = 0x11

.field public static final EVENT_ONE_HANDED_SETTINGS_TIMEOUT_SECONDS_4:I = 0xf

.field public static final EVENT_ONE_HANDED_SETTINGS_TIMEOUT_SECONDS_8:I = 0x10

.field public static final EVENT_ONE_HANDED_SETTINGS_TIMEOUT_SECONDS_NEVER:I = 0xe

.field public static final EVENT_ONE_HANDED_TRIGGER_APP_TAPS_OUT:I = 0x5

.field public static final EVENT_ONE_HANDED_TRIGGER_DENSITY_OUT:I = 0x16

.field public static final EVENT_ONE_HANDED_TRIGGER_GESTURE_IN:I = 0x0

.field public static final EVENT_ONE_HANDED_TRIGGER_GESTURE_OUT:I = 0x1

.field public static final EVENT_ONE_HANDED_TRIGGER_OVERSPACE_OUT:I = 0x2

.field public static final EVENT_ONE_HANDED_TRIGGER_POP_IME_OUT:I = 0x3

.field public static final EVENT_ONE_HANDED_TRIGGER_ROTATION_OUT:I = 0x4

.field public static final EVENT_ONE_HANDED_TRIGGER_SCREEN_OFF_OUT:I = 0x7

.field public static final EVENT_ONE_HANDED_TRIGGER_TIMEOUT_OUT:I = 0x6

.field public static final EVENT_ONE_HANDED_TRIGGER_UNFOLD_OUT:I = 0x17

.field private static final EVENT_TAGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OneHandedUiEventLogger"


# instance fields
.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    const-string v0, "one_handed_trigger_gesture_in"

    .line 2
    const-string v1, "one_handed_trigger_gesture_out"

    .line 4
    const-string v2, "one_handed_trigger_overspace_out"

    .line 6
    const-string v3, "one_handed_trigger_pop_ime_out"

    .line 8
    const-string v4, "one_handed_trigger_rotation_out"

    .line 10
    const-string v5, "one_handed_trigger_app_taps_out"

    .line 12
    const-string v6, "one_handed_trigger_timeout_out"

    .line 14
    const-string v7, "one_handed_trigger_screen_off_out"

    .line 16
    const-string v8, "one_handed_settings_enabled_on"

    .line 18
    const-string v9, "one_handed_settings_enabled_off"

    .line 20
    const-string v10, "one_handed_settings_app_taps_exit_on"

    .line 22
    const-string v11, "one_handed_settings_app_taps_exit_off"

    .line 24
    const-string v12, "one_handed_settings_timeout_exit_on"

    .line 26
    const-string v13, "one_handed_settings_timeout_exit_off"

    .line 28
    const-string v14, "one_handed_settings_timeout_seconds_never"

    .line 30
    const-string v15, "one_handed_settings_timeout_seconds_4"

    .line 32
    const-string v16, "one_handed_settings_timeout_seconds_8"

    .line 34
    const-string v17, "one_handed_settings_timeout_seconds_12"

    .line 36
    const-string v18, "one_handed_settings_show_notification_enabled_on"

    .line 38
    const-string v19, "one_handed_settings_show_notification_enabled_off"

    .line 40
    const-string v20, "one_handed_settings_shortcut_enabled_on"

    .line 42
    const-string v21, "one_handed_trigger_density_out"

    .line 44
    const-string v22, "one_handed_trigger_unfold_out"

    .line 46
    const-string v23, "one_handed_settings_shortcut_enabled_off"

    .line 48
    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    sput-object v0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->EVENT_TAGS:[Ljava/lang/String;

    .line 54
    return-void
    .line 56
.end method

.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 5
    return-void
    .line 7
.end method

.method private logEvent(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    goto/16 :goto_0

    .line 5
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 7
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_UNFOLD_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    .line 9
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 11
    goto/16 :goto_0

    .line 14
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 16
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_DENSITY_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    .line 18
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 20
    goto/16 :goto_0

    .line 23
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 25
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_SHORTCUT_ENABLED_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 27
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 29
    goto/16 :goto_0

    .line 32
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 34
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_SHORTCUT_ENABLED_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 36
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 38
    goto/16 :goto_0

    .line 41
    :pswitch_4
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 43
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_SHOW_NOTIFICATION_ENABLED_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 45
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 47
    goto/16 :goto_0

    .line 50
    :pswitch_5
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 52
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_SHOW_NOTIFICATION_ENABLED_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 54
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 56
    goto/16 :goto_0

    .line 59
    :pswitch_6
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 61
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_12:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 63
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 65
    goto/16 :goto_0

    .line 68
    :pswitch_7
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 70
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_8:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 72
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 74
    goto/16 :goto_0

    .line 77
    :pswitch_8
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 79
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_4:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 81
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 83
    goto/16 :goto_0

    .line 86
    :pswitch_9
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 88
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_SECONDS_NEVER:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 90
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 92
    goto/16 :goto_0

    .line 95
    :pswitch_a
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 97
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 99
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 101
    goto/16 :goto_0

    .line 104
    :pswitch_b
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 106
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_TIMEOUT_EXIT_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 108
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 110
    goto :goto_0

    .line 113
    :pswitch_c
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 114
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 116
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 118
    goto :goto_0

    .line 121
    :pswitch_d
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 122
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_APP_TAPS_EXIT_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 124
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 126
    goto :goto_0

    .line 129
    :pswitch_e
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 130
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_ENABLED_OFF:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 132
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 134
    goto :goto_0

    .line 137
    :pswitch_f
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 138
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;->ONE_HANDED_SETTINGS_TOGGLES_ENABLED_ON:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedSettingsTogglesEvent;

    .line 140
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 142
    goto :goto_0

    .line 145
    :pswitch_10
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 146
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_SCREEN_OFF_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    .line 148
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 150
    goto :goto_0

    .line 153
    :pswitch_11
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 154
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_TIMEOUT_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    .line 156
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 158
    goto :goto_0

    .line 161
    :pswitch_12
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 162
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_APP_TAPS_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    .line 164
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 166
    goto :goto_0

    .line 169
    :pswitch_13
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 170
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_ROTATION_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    .line 172
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 174
    goto :goto_0

    .line 177
    :pswitch_14
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 178
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_POP_IME_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    .line 180
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 182
    goto :goto_0

    .line 185
    :pswitch_15
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 186
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_OVERSPACE_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    .line 188
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 190
    goto :goto_0

    .line 193
    :pswitch_16
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 194
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_GESTURE_OUT:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    .line 196
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 198
    goto :goto_0

    .line 201
    :pswitch_17
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 202
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;->ONE_HANDED_TRIGGER_GESTURE_IN:Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger$OneHandedTriggerEvent;

    .line 204
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 206
    :goto_0
    return-void

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 210
.end method


# virtual methods
.method public writeEvent(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->logEvent(I)V

    .line 2
    return-void
    .line 5
.end method

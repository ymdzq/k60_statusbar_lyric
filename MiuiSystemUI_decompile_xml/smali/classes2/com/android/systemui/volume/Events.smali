.class public abstract Lcom/android/systemui/volume/Events;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DISMISS_REASONS:[Ljava/lang/String;

.field public static final EVENT_TAGS:[Ljava/lang/String;

.field public static final SHOW_REASONS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field static sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

.field static sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    const-class v0, Lcom/android/systemui/volume/Events;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    .line 8
    const-string/jumbo v1, "show_dialog"

    .line 10
    const-string v2, "dismiss_dialog"

    .line 13
    const-string v3, "active_stream_changed"

    .line 15
    const-string v4, "expand"

    .line 17
    const-string v5, "key"

    .line 19
    const-string v6, "collection_started"

    .line 21
    const-string v7, "collection_stopped"

    .line 23
    const-string v8, "icon_click"

    .line 25
    const-string/jumbo v9, "settings_click"

    .line 27
    const-string/jumbo v10, "touch_level_changed"

    .line 30
    const-string v11, "level_changed"

    .line 33
    const-string v12, "internal_ringer_mode_changed"

    .line 35
    const-string v13, "external_ringer_mode_changed"

    .line 37
    const-string/jumbo v14, "zen_mode_changed"

    .line 39
    const-string/jumbo v15, "suppressor_changed"

    .line 42
    const-string v16, "mute_changed"

    .line 45
    const-string/jumbo v17, "touch_level_done"

    .line 47
    const-string/jumbo v18, "zen_mode_config_changed"

    .line 50
    const-string v19, "ringer_toggle"

    .line 53
    const-string/jumbo v20, "show_usb_overheat_alarm"

    .line 55
    const-string v21, "dismiss_usb_overheat_alarm"

    .line 58
    const-string v22, "odi_captions_click"

    .line 60
    const-string v23, "odi_captions_tooltip_click"

    .line 62
    const-string v24, "max_level_changed"

    .line 64
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 69
    sput-object v0, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    .line 70
    const-string/jumbo v1, "unknown"

    .line 72
    const-string/jumbo v2, "touch_outside"

    .line 75
    const-string/jumbo v3, "volume_controller"

    .line 78
    const-string/jumbo v4, "timeout"

    .line 81
    const-string v5, "screen_off"

    .line 84
    const-string/jumbo v6, "settings_clicked"

    .line 86
    const-string v7, "done_clicked"

    .line 89
    const-string v8, "a11y_stream_changed"

    .line 91
    const-string v9, "output_chooser"

    .line 93
    const-string/jumbo v10, "usb_temperature_below_threshold"

    .line 95
    const-string v11, "csd_warning_timeout"

    .line 98
    const-string v12, "posture_changed"

    .line 100
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 105
    sput-object v0, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    .line 106
    const-string v0, "remote_volume_changed"

    .line 108
    const-string/jumbo v1, "usb_temperature_above_threshold"

    .line 110
    const-string/jumbo v2, "unknown"

    .line 113
    const-string/jumbo v3, "volume_changed"

    .line 116
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 122
    sput-object v0, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    .line 125
    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 127
    sput-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 130
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 132
    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 134
    sput-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 137
    return-void
    .line 139
.end method

.method public static varargs writeEvent(I[Ljava/lang/Object;)V
    .locals 17

    .line 1
    move/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    sget-object v2, Lcom/android/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    .line 9
    array-length v3, v2

    .line 11
    if-lt v0, v3, :cond_0

    .line 12
    const-string v0, ""

    .line 14
    goto/16 :goto_e

    .line 16
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v4, "writeEvent "

    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    aget-object v2, v2, v0

    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    array-length v2, v1

    .line 31
    if-nez v2, :cond_2

    .line 32
    const/16 v1, 0x8

    .line 34
    if-ne v0, v1, :cond_1

    .line 36
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 38
    const/16 v1, 0x56a

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 42
    sget-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 45
    sget-object v1, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SETTINGS_CLICK:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 47
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 49
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    goto/16 :goto_e

    .line 56
    :cond_2
    const-string v2, " "

    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "normal"

    .line 63
    const-string/jumbo v4, "silent"

    .line 65
    const-string/jumbo v5, "unknown"

    .line 68
    const-string/jumbo v6, "vibrate"

    .line 71
    const/4 v7, 0x1

    .line 74
    const/4 v8, 0x2

    .line 75
    sget-object v9, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    .line 76
    const/16 v10, 0x5b1

    .line 78
    sget-object v11, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    .line 80
    const/16 v12, 0xcf

    .line 82
    const-string v13, " keyguard="

    .line 84
    const/16 v14, 0x20

    .line 86
    const/4 v15, 0x3

    .line 88
    const/16 v16, 0x0

    .line 89
    packed-switch v0, :pswitch_data_0

    .line 91
    :pswitch_0
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    move-result-object v0

    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    goto/16 :goto_d

    .line 101
    :pswitch_1
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 103
    invoke-virtual {v0, v10}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 105
    sget-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 108
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM_DISMISSED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 110
    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 112
    array-length v0, v1

    .line 115
    if-le v0, v7, :cond_28

    .line 116
    aget-object v0, v1, v7

    .line 118
    check-cast v0, Ljava/lang/Boolean;

    .line 120
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    move-result v4

    .line 127
    const-string v5, "dismiss_usb_overheat_alarm"

    .line 128
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 130
    aget-object v1, v1, v16

    .line 133
    check-cast v1, Ljava/lang/Integer;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 137
    move-result v1

    .line 140
    aget-object v1, v11, v1

    .line 141
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    goto/16 :goto_d

    .line 152
    :pswitch_2
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 154
    invoke-virtual {v0, v10}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 156
    sget-object v0, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 159
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->USB_OVERHEAT_ALARM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 161
    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 163
    array-length v0, v1

    .line 166
    if-le v0, v7, :cond_28

    .line 167
    aget-object v0, v1, v7

    .line 169
    check-cast v0, Ljava/lang/Boolean;

    .line 171
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 173
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    move-result v4

    .line 178
    const-string/jumbo v5, "show_usb_overheat_alarm"

    .line 179
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 182
    aget-object v1, v1, v16

    .line 185
    check-cast v1, Ljava/lang/Integer;

    .line 187
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 189
    move-result v1

    .line 192
    aget-object v1, v9, v1

    .line 193
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    goto/16 :goto_d

    .line 204
    :pswitch_3
    aget-object v0, v1, v16

    .line 206
    check-cast v0, Ljava/lang/Integer;

    .line 208
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 210
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 212
    move-result v9

    .line 215
    const/16 v10, 0x569

    .line 216
    invoke-virtual {v1, v10, v9}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 218
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 221
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 223
    move-result v9

    .line 226
    if-eqz v9, :cond_5

    .line 227
    if-eq v9, v7, :cond_4

    .line 229
    if-eq v9, v8, :cond_3

    .line 231
    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 233
    goto :goto_0

    .line 235
    :cond_3
    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_NORMAL:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 236
    goto :goto_0

    .line 238
    :cond_4
    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_VIBRATE:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 239
    goto :goto_0

    .line 241
    :cond_5
    sget-object v9, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->RINGER_MODE_SILENT:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 242
    :goto_0
    invoke-interface {v1, v9}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 247
    move-result v0

    .line 250
    if-eqz v0, :cond_7

    .line 251
    if-eq v0, v7, :cond_6

    .line 253
    if-eq v0, v8, :cond_8

    .line 255
    move-object v2, v5

    .line 257
    goto :goto_1

    .line 258
    :cond_6
    move-object v2, v6

    .line 259
    goto :goto_1

    .line 260
    :cond_7
    move-object v2, v4

    .line 261
    :cond_8
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    goto/16 :goto_d

    .line 265
    :pswitch_4
    array-length v0, v1

    .line 267
    if-le v0, v7, :cond_15

    .line 268
    aget-object v0, v1, v7

    .line 270
    check-cast v0, Ljava/lang/Integer;

    .line 272
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 274
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 276
    move-result v4

    .line 279
    const/16 v5, 0xd1

    .line 280
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 282
    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 285
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 287
    move-result v0

    .line 290
    if-nez v0, :cond_9

    .line 291
    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 293
    goto :goto_2

    .line 295
    :cond_9
    sget-object v0, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_SLIDER:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 296
    :goto_2
    invoke-interface {v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 298
    goto/16 :goto_6

    .line 301
    :pswitch_5
    array-length v0, v1

    .line 303
    if-le v0, v7, :cond_28

    .line 304
    aget-object v0, v1, v16

    .line 306
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    aget-object v0, v1, v7

    .line 314
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    goto/16 :goto_d

    .line 319
    :pswitch_6
    aget-object v0, v1, v16

    .line 321
    check-cast v0, Ljava/lang/Integer;

    .line 323
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 325
    move-result v1

    .line 328
    if-eqz v1, :cond_d

    .line 329
    if-eq v1, v7, :cond_c

    .line 331
    if-eq v1, v8, :cond_b

    .line 333
    if-eq v1, v15, :cond_a

    .line 335
    goto :goto_3

    .line 337
    :cond_a
    const-string v5, "alarms"

    .line 338
    goto :goto_3

    .line 340
    :cond_b
    const-string v5, "no_interruptions"

    .line 341
    goto :goto_3

    .line 343
    :cond_c
    const-string v5, "important_interruptions"

    .line 344
    goto :goto_3

    .line 346
    :cond_d
    const-string v5, "off"

    .line 347
    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 352
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 354
    move-result v0

    .line 357
    if-eqz v0, :cond_11

    .line 358
    if-eq v0, v7, :cond_10

    .line 360
    if-eq v0, v8, :cond_f

    .line 362
    if-eq v0, v15, :cond_e

    .line 364
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->INVALID:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 366
    goto :goto_4

    .line 368
    :cond_e
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_ALARMS_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 369
    goto :goto_4

    .line 371
    :cond_f
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_NO_INTERRUPTIONS:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 372
    goto :goto_4

    .line 374
    :cond_10
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_IMPORTANT_ONLY:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 375
    goto :goto_4

    .line 377
    :cond_11
    sget-object v0, Lcom/android/systemui/volume/Events$ZenModeEvent;->ZEN_MODE_OFF:Lcom/android/systemui/volume/Events$ZenModeEvent;

    .line 378
    :goto_4
    invoke-interface {v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 380
    goto/16 :goto_d

    .line 383
    :pswitch_7
    aget-object v0, v1, v16

    .line 385
    check-cast v0, Ljava/lang/Integer;

    .line 387
    sget-object v9, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 389
    const/16 v10, 0xd5

    .line 391
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 393
    move-result v0

    .line 396
    invoke-virtual {v9, v10, v0}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 397
    :pswitch_8
    aget-object v0, v1, v16

    .line 400
    check-cast v0, Ljava/lang/Integer;

    .line 402
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 404
    move-result v0

    .line 407
    if-eqz v0, :cond_13

    .line 408
    if-eq v0, v7, :cond_12

    .line 410
    if-eq v0, v8, :cond_14

    .line 412
    move-object v2, v5

    .line 414
    goto :goto_5

    .line 415
    :cond_12
    move-object v2, v6

    .line 416
    goto :goto_5

    .line 417
    :cond_13
    move-object v2, v4

    .line 418
    :cond_14
    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    goto/16 :goto_d

    .line 422
    :cond_15
    :goto_6
    :pswitch_9
    array-length v0, v1

    .line 424
    if-le v0, v7, :cond_28

    .line 425
    aget-object v0, v1, v16

    .line 427
    check-cast v0, Ljava/lang/Integer;

    .line 429
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 431
    move-result v0

    .line 434
    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 435
    move-result-object v0

    .line 438
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    aget-object v0, v1, v7

    .line 445
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 447
    goto/16 :goto_d

    .line 450
    :pswitch_a
    array-length v0, v1

    .line 452
    if-le v0, v7, :cond_28

    .line 453
    aget-object v0, v1, v16

    .line 455
    check-cast v0, Ljava/lang/Integer;

    .line 457
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 459
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 461
    move-result v4

    .line 464
    const/16 v5, 0xd4

    .line 465
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 467
    aget-object v1, v1, v7

    .line 470
    check-cast v1, Ljava/lang/Integer;

    .line 472
    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 474
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 476
    move-result v4

    .line 479
    if-eq v4, v7, :cond_18

    .line 480
    if-eq v4, v8, :cond_17

    .line 482
    if-eq v4, v15, :cond_16

    .line 484
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 486
    goto :goto_7

    .line 488
    :cond_16
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_TO_VIBRATE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 489
    goto :goto_7

    .line 491
    :cond_17
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_MUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 492
    goto :goto_7

    .line 494
    :cond_18
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_UNMUTE_STREAM:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 495
    :goto_7
    invoke-interface {v2, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 497
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 500
    move-result v0

    .line 503
    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 504
    move-result-object v0

    .line 507
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 514
    move-result v0

    .line 517
    if-eq v0, v7, :cond_1a

    .line 518
    if-eq v0, v8, :cond_19

    .line 520
    if-eq v0, v15, :cond_1b

    .line 522
    const-string/jumbo v1, "unknown_state_"

    .line 524
    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 527
    move-result-object v6

    .line 530
    goto :goto_8

    .line 531
    :cond_19
    const-string v6, "mute"

    .line 532
    goto :goto_8

    .line 534
    :cond_1a
    const-string/jumbo v6, "unmute"

    .line 535
    :cond_1b
    :goto_8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    goto/16 :goto_d

    .line 541
    :pswitch_b
    array-length v0, v1

    .line 543
    if-le v0, v7, :cond_28

    .line 544
    aget-object v0, v1, v16

    .line 546
    check-cast v0, Ljava/lang/Integer;

    .line 548
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 550
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 552
    move-result v4

    .line 555
    const/16 v5, 0xd3

    .line 556
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 558
    aget-object v1, v1, v7

    .line 561
    check-cast v1, Ljava/lang/Integer;

    .line 563
    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 565
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 567
    move-result v4

    .line 570
    if-nez v4, :cond_1c

    .line 571
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY_TO_ZERO:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 573
    goto :goto_9

    .line 575
    :cond_1c
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_KEY:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 576
    :goto_9
    invoke-interface {v2, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 578
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 581
    move-result v0

    .line 584
    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 585
    move-result-object v0

    .line 588
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 595
    goto/16 :goto_d

    .line 598
    :pswitch_c
    aget-object v0, v1, v16

    .line 600
    check-cast v0, Ljava/lang/Boolean;

    .line 602
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 604
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 606
    move-result v2

    .line 609
    const/16 v4, 0xd0

    .line 610
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 612
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 615
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 617
    move-result v2

    .line 620
    if-eqz v2, :cond_1d

    .line 621
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_EXPAND_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 623
    goto :goto_a

    .line 625
    :cond_1d
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_COLLAPSE_DETAILS:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 626
    :goto_a
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 628
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 631
    goto/16 :goto_d

    .line 634
    :pswitch_d
    aget-object v0, v1, v16

    .line 636
    check-cast v0, Ljava/lang/Integer;

    .line 638
    sget-object v1, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 640
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 642
    move-result v2

    .line 645
    const/16 v4, 0xd2

    .line 646
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 648
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 651
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogEvent;->VOLUME_DIALOG_ACTIVE_STREAM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogEvent;

    .line 653
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 655
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 658
    move-result v0

    .line 661
    invoke-static {v0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 662
    move-result-object v0

    .line 665
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    goto/16 :goto_d

    .line 669
    :pswitch_e
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 671
    invoke-virtual {v0, v12}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    .line 673
    aget-object v0, v1, v16

    .line 676
    check-cast v0, Ljava/lang/Integer;

    .line 678
    sget-object v1, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 680
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 682
    move-result v2

    .line 685
    if-eq v2, v7, :cond_24

    .line 686
    if-eq v2, v8, :cond_23

    .line 688
    if-eq v2, v15, :cond_22

    .line 690
    const/4 v4, 0x4

    .line 692
    if-eq v2, v4, :cond_21

    .line 693
    const/4 v4, 0x5

    .line 695
    if-eq v2, v4, :cond_20

    .line 696
    const/4 v4, 0x7

    .line 698
    if-eq v2, v4, :cond_1f

    .line 699
    const/16 v4, 0x9

    .line 701
    if-eq v2, v4, :cond_1e

    .line 703
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 705
    goto :goto_b

    .line 707
    :cond_1e
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 708
    goto :goto_b

    .line 710
    :cond_1f
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_STREAM_GONE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 711
    goto :goto_b

    .line 713
    :cond_20
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SETTINGS:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 714
    goto :goto_b

    .line 716
    :cond_21
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SCREEN_OFF:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 717
    goto :goto_b

    .line 719
    :cond_22
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TIMEOUT:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 720
    goto :goto_b

    .line 722
    :cond_23
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_SYSTEM:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 723
    goto :goto_b

    .line 725
    :cond_24
    sget-object v2, Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;->VOLUME_DIALOG_DISMISS_TOUCH_OUTSIDE:Lcom/android/systemui/volume/Events$VolumeDialogCloseEvent;

    .line 726
    :goto_b
    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 728
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 731
    move-result v0

    .line 734
    aget-object v0, v11, v0

    .line 735
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    goto :goto_d

    .line 740
    :pswitch_f
    sget-object v0, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 741
    invoke-virtual {v0, v12}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    .line 743
    array-length v0, v1

    .line 746
    if-le v0, v7, :cond_28

    .line 747
    aget-object v0, v1, v16

    .line 749
    check-cast v0, Ljava/lang/Integer;

    .line 751
    aget-object v1, v1, v7

    .line 753
    check-cast v1, Ljava/lang/Boolean;

    .line 755
    sget-object v2, Lcom/android/systemui/volume/Events;->sLegacyLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 757
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 759
    move-result v4

    .line 762
    const-string/jumbo v5, "volume_from_keyguard"

    .line 763
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 766
    sget-object v2, Lcom/android/systemui/volume/Events;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 769
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 771
    move-result v4

    .line 774
    if-eq v4, v7, :cond_27

    .line 775
    if-eq v4, v8, :cond_26

    .line 777
    if-eq v4, v15, :cond_25

    .line 779
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->INVALID:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    .line 781
    goto :goto_c

    .line 783
    :cond_25
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_USB_TEMP_ALARM_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    .line 784
    goto :goto_c

    .line 786
    :cond_26
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_REMOTE_VOLUME_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    .line 787
    goto :goto_c

    .line 789
    :cond_27
    sget-object v4, Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;->VOLUME_DIALOG_SHOW_VOLUME_CHANGED:Lcom/android/systemui/volume/Events$VolumeDialogOpenEvent;

    .line 790
    :goto_c
    invoke-interface {v2, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 792
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 795
    move-result v0

    .line 798
    aget-object v0, v9, v0

    .line 799
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 807
    :cond_28
    :goto_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    move-result-object v0

    .line 813
    :goto_e
    sget-object v1, Lcom/android/systemui/volume/Events;->TAG:Ljava/lang/String;

    .line 814
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return-void

    .line 819
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
    .line 820
.end method

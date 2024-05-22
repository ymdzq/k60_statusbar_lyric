.class public abstract Lcom/miui/utils/configs/MiuiConfigs;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final BACKGROUND_BLUR_SUPPORTED:Z

.field public static final BROAD_SIDE_FP:Z

.field public static final CN_CUSTOMIZATION_TEST:Z

.field public static final CUSTOMIZED_REGION:Ljava/lang/String;

.field public static final FONT_MIPRO_PATH:Ljava/lang/String;

.field public static final GXZW_SENSOR:Z

.field public static final HAS_CAMERA_IN_LARGESCREEN:Z

.field public static final IS_CM_CUSTOMIZATION:Z

.field public static final IS_CM_CUSTOMIZATION_TEST:Z

.field public static final IS_CUST_SINGLE_SIM:Z

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_FOLD:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_MEDIATEK:Z

.field public static final IS_NOTCH:Z

.field public static final IS_PAD:Z

.field public static IS_RSA4_FROM_WC:Z

.field public static final MIUI_LITE_V2:Z

.field public static final NOT_SUPPORT_FASHION_GALLERY_CN:Z

.field public static final SHADOW_SUPPORTED:Z

.field public static final SUPPORT_GESTURE_WAKEUP:Z

.field public static final SUPPORT_LEAUDIO_CG:Z

.field public static final cpuLevel:I

.field public static final gpuLevel:I

.field public static final sDeviceLevelFromFolme:I

.field public static final sMiproTypeface:Landroid/graphics/Typeface;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 12
    const-string v3, "\\d+(.\\d+){2,}(-internal)?"

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 25
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 33
    const-string v4, "^(V\\d{1,})(\\.\\d{1,})*(\\.DEV)$"

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 37
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    move v3, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v3, v2

    .line 45
    :goto_1
    const-string v4, "ro.product.mod_device"

    .line 46
    const-string v5, ""

    .line 48
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 53
    const-string v6, "ro.miui.customized.region"

    .line 54
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v6

    .line 59
    sput-object v6, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 60
    const-string v6, "_global"

    .line 62
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v4

    .line 67
    sput-boolean v4, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 68
    if-nez v0, :cond_3

    .line 70
    if-eqz v3, :cond_2

    .line 72
    goto :goto_2

    .line 74
    :cond_2
    move v0, v2

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    :goto_2
    move v0, v1

    .line 77
    :goto_3
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_DEVELOPMENT_VERSION:Z

    .line 78
    const-string v0, "ro.cust.test"

    .line 80
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 85
    const-string v3, "ro.carrier.name"

    .line 86
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 91
    const-string v4, "cm"

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v6

    .line 97
    sput-boolean v6, Lcom/miui/utils/configs/MiuiConfigs;->IS_CM_CUSTOMIZATION_TEST:Z

    .line 98
    const-string v7, "ct"

    .line 100
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v8

    .line 105
    const-string v9, "cu"

    .line 106
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v0

    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v4

    .line 115
    sput-boolean v4, Lcom/miui/utils/configs/MiuiConfigs;->IS_CM_CUSTOMIZATION:Z

    .line 116
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    if-nez v6, :cond_5

    .line 124
    if-nez v8, :cond_5

    .line 126
    if-eqz v0, :cond_4

    .line 128
    goto :goto_4

    .line 130
    :cond_4
    move v0, v2

    .line 131
    goto :goto_5

    .line 132
    :cond_5
    :goto_4
    move v0, v1

    .line 133
    :goto_5
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 134
    const-string v0, "ro.debuggable"

    .line 136
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 138
    const-string v0, "not_support_fashion_gallery"

    .line 141
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 143
    move-result v0

    .line 146
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->NOT_SUPPORT_FASHION_GALLERY_CN:Z

    .line 147
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 149
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 151
    move-result v0

    .line 154
    const/4 v3, 0x2

    .line 155
    if-ne v0, v3, :cond_6

    .line 156
    move v0, v1

    .line 158
    goto :goto_6

    .line 159
    :cond_6
    move v0, v2

    .line 160
    :goto_6
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 161
    const-string v0, "ro.build.characteristics"

    .line 163
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 168
    const-string/jumbo v4, "tablet"

    .line 169
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 172
    move-result v0

    .line 175
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 176
    const-string v0, "ro.miui.singlesim"

    .line 178
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 180
    move-result v0

    .line 183
    if-ne v0, v1, :cond_7

    .line 184
    move v0, v1

    .line 186
    goto :goto_7

    .line 187
    :cond_7
    move v0, v2

    .line 188
    :goto_7
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_CUST_SINGLE_SIM:Z

    .line 189
    const-string v0, "ro.miui.notch"

    .line 191
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 193
    move-result v0

    .line 196
    if-ne v0, v1, :cond_8

    .line 197
    move v0, v1

    .line 199
    goto :goto_8

    .line 200
    :cond_8
    move v0, v2

    .line 201
    :goto_8
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_NOTCH:Z

    .line 202
    const-string v0, "is_mediatek"

    .line 204
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 206
    move-result v0

    .line 209
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_MEDIATEK:Z

    .line 210
    const-string v0, "persist.vendor.bluetooth.leaudio_mode"

    .line 212
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v0

    .line 217
    const-string/jumbo v4, "ums-cg"

    .line 218
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 221
    move-result v0

    .line 224
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_LEAUDIO_CG:Z

    .line 225
    const-string v0, "ro.com.miui.rsa.feature"

    .line 227
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 232
    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    move-result v0

    .line 236
    xor-int/2addr v0, v1

    .line 237
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_RSA4_FROM_WC:Z

    .line 238
    const-string v0, "ro.hardware.fp.fod"

    .line 240
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 242
    move-result v0

    .line 245
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 246
    const-string v0, "ro.vendor.localhbm.enable"

    .line 248
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 250
    const-string v0, "ro.hardware.fp.sideCap"

    .line 253
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 255
    move-result v0

    .line 258
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->BROAD_SIDE_FP:Z

    .line 259
    const-string/jumbo v0, "sys.power.nonui"

    .line 261
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 264
    const-string v0, "ro.boot.hwc"

    .line 267
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    const-string v0, "ro.vendor.miui.support_esim"

    .line 272
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 274
    const-string/jumbo v0, "support_gesture_wakeup"

    .line 277
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 280
    move-result v0

    .line 283
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_GESTURE_WAKEUP:Z

    .line 284
    const-string v0, "ro.miui.cust_variant"

    .line 286
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    move-result-object v0

    .line 291
    const-string v4, "cn"

    .line 292
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    const-string v0, "persist.sys.frontcamera_type"

    .line 297
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 299
    move-result v0

    .line 302
    if-ne v0, v3, :cond_9

    .line 303
    move v0, v1

    .line 305
    goto :goto_9

    .line 306
    :cond_9
    move v0, v2

    .line 307
    :goto_9
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->HAS_CAMERA_IN_LARGESCREEN:Z

    .line 308
    const-string v0, "ro.miui.ui.font.mi_font_path"

    .line 310
    const-string v4, "/system/fonts/MiSansVF.ttf"

    .line 312
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    move-result-object v0

    .line 317
    sput-object v0, Lcom/miui/utils/configs/MiuiConfigs;->FONT_MIPRO_PATH:Ljava/lang/String;

    .line 318
    new-instance v4, Landroid/graphics/Typeface$Builder;

    .line 320
    invoke-direct {v4, v0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    .line 322
    const-string v0, "\'wght\' 430"

    .line 325
    invoke-virtual {v4, v0}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 327
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    .line 331
    move-result-object v0

    .line 334
    sput-object v0, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypeface:Landroid/graphics/Typeface;

    .line 335
    sget v0, Lmiui/util/DeviceLevel;->TOTAL_RAM:I

    .line 337
    invoke-static {}, Lmiui/util/DeviceLevel;->getMiuiLiteVersion()I

    .line 339
    move-result v0

    .line 342
    if-ne v0, v3, :cond_a

    .line 343
    move v0, v1

    .line 345
    goto :goto_a

    .line 346
    :cond_a
    move v0, v2

    .line 347
    :goto_a
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->MIUI_LITE_V2:Z

    .line 348
    const-string v0, "persist.sys.background_blur_supported"

    .line 350
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 352
    move-result v0

    .line 355
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->BACKGROUND_BLUR_SUPPORTED:Z

    .line 356
    const-string v0, "persist.sys.mi_shadow_supported"

    .line 358
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 360
    move-result v0

    .line 363
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SHADOW_SUPPORTED:Z

    .line 364
    sget v0, Lmiui/util/DeviceLevel;->CPU:I

    .line 366
    invoke-static {v1, v0}, Lmiui/util/DeviceLevel;->getDeviceLevel(II)I

    .line 368
    move-result v0

    .line 371
    sput v0, Lcom/miui/utils/configs/MiuiConfigs;->cpuLevel:I

    .line 372
    sget v0, Lmiui/util/DeviceLevel;->GPU:I

    .line 374
    invoke-static {v1, v0}, Lmiui/util/DeviceLevel;->getDeviceLevel(II)I

    .line 376
    move-result v0

    .line 379
    sput v0, Lcom/miui/utils/configs/MiuiConfigs;->gpuLevel:I

    .line 380
    sget v0, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    .line 382
    sget v1, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    .line 384
    invoke-static {v0, v1}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel(II)I

    .line 386
    move-result v0

    .line 389
    sget v1, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    .line 390
    sget v2, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    .line 392
    invoke-static {v1, v2}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel(II)I

    .line 394
    move-result v1

    .line 397
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 398
    move-result v0

    .line 401
    sput v0, Lcom/miui/utils/configs/MiuiConfigs;->sDeviceLevelFromFolme:I

    .line 402
    new-instance v0, Landroid/util/ArraySet;

    .line 404
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 406
    const-string v1, "dandelion"

    .line 409
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 411
    const-string v1, "angelica"

    .line 414
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 416
    const-string v1, "angelican"

    .line 419
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 421
    const-string v1, "cattail"

    .line 424
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 426
    const-string v1, "angelicain"

    .line 429
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 431
    return-void
    .line 434
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object p0

    .line 9
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 10
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 16
    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 20
    move-result p0

    .line 23
    new-instance v1, Landroid/graphics/Point;

    .line 24
    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 26
    return-object v1
    .line 29
.end method

.method public static isCupAndGupHighLevel()Z
    .locals 2

    .line 1
    sget v0, Lmiui/util/DeviceLevel;->HIGH:I

    .line 2
    sget v1, Lcom/miui/utils/configs/MiuiConfigs;->cpuLevel:I

    .line 4
    if-ne v1, v0, :cond_0

    .line 6
    sget v1, Lcom/miui/utils/configs/MiuiConfigs;->gpuLevel:I

    .line 8
    if-ne v1, v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
    .line 15
.end method

.method public static isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    move-result-object p0

    .line 17
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 18
    const/16 v0, 0x258

    .line 20
    if-lt p0, v0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method

.method public static isLiteOrLowDevice()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_3

    .line 7
    sget v0, Lmiui/util/DeviceLevel;->LOW:I

    .line 9
    sget v2, Lcom/miui/utils/configs/MiuiConfigs;->cpuLevel:I

    .line 11
    const/4 v3, 0x0

    .line 13
    if-eq v2, v0, :cond_1

    .line 14
    sget v2, Lcom/miui/utils/configs/MiuiConfigs;->gpuLevel:I

    .line 16
    if-ne v2, v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move v0, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v0, v1

    .line 23
    :goto_1
    if-eqz v0, :cond_2

    .line 24
    goto :goto_2

    .line 26
    :cond_2
    move v1, v3

    .line 27
    :cond_3
    :goto_2
    return v1
    .line 28
.end method

.method public static isLowEndDevice()Z
    .locals 1

    .line 1
    sget-boolean v0, Lmiui/util/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Lmiui/util/DeviceLevel;->IS_MIUI_MIDDLE_VERSION:Z

    .line 6
    if-nez v0, :cond_1

    .line 8
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
    .line 18
.end method

.method public static isPadOrFoldLargeScreen(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    move-result-object p0

    .line 17
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 18
    const/16 v0, 0x258

    .line 20
    if-lt p0, v0, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    :goto_1
    return p0
    .line 28
.end method

.method public static varargs setMiuiStatusBarTypeface([Landroid/widget/TextView;)V
    .locals 7

    .line 1
    const-string v0, "mipro-medium"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 5
    move-result-object v0

    .line 8
    iget-object v2, v0, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    .line 9
    array-length v3, v2

    .line 11
    move v4, v1

    .line 12
    :goto_0
    if-ge v4, v3, :cond_1

    .line 13
    aget-object v5, v2, v4

    .line 15
    const-string v6, "mipro"

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    sget-object v0, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypeface:Landroid/graphics/Typeface;

    .line 25
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    array-length v2, p0

    .line 31
    :goto_2
    if-ge v1, v2, :cond_3

    .line 32
    aget-object v3, p0, v1

    .line 34
    if-eqz v3, :cond_2

    .line 36
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_2

    .line 43
    :cond_3
    return-void
    .line 44
.end method

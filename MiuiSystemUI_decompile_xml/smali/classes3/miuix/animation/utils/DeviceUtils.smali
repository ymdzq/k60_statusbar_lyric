.class public Lmiuix/animation/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final ARCHITECTURE:Ljava/lang/String; = "CPU architecture"

.field static final ARM_V8:I = 0x8

.field static final BIG_CORE_FREQ:I = 0x1e8480

.field static final CORE_COUNT:I = 0x8

.field static final CpuMaxInfoFormat:Ljava/lang/String; = "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

.field static final D800:I = 0x49

.field public static final DEVICE_HIGHEND:I = 0x2

.field public static final DEVICE_MIDDLE:I = 0x1

.field public static final DEVICE_PRIMARY:I = 0x0

.field public static final DEVICE_UNKNOWN:I = -0x1

.field public static DEV_STANDARD_VERSION:I = 0x0

.field static final HEX:Ljava/lang/String; = "0x"

.field private static HIGH:I = 0x0

.field static final HIGH_FREQ:I = 0x2932e0

.field static final IMPLEMENTOR:Ljava/lang/String; = "CPU implementer"

.field private static LOW:I = 0x0

.field private static MIDDLE:I = 0x0

.field static final MIDDLE_FREQ:I = 0x231860

.field static final MTK_DIMENSITY:I = 0x44

.field static final MT_PATTERN:Ljava/util/regex/Pattern;

.field static final PART:Ljava/lang/String; = "CPU part"

.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.miui.performance.DeviceLevelUtils"

.field private static final PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/MiuiBooster.jar"

.field static final PROCESSOR:Ljava/lang/String; = "processor"

.field static final QUALCOMM:Ljava/lang/String; = "Qualcomm"

.field static final SEPARATOR:Ljava/lang/String; = ": "

.field static final SM_PATTERN:Ljava/util/regex/Pattern;

.field static final SNAPDRAGON1:Ljava/lang/String; = "msm"

.field static final SNAPDRAGON2:Ljava/lang/String; = "sdm"

.field static final SNAPDRAGON3:Ljava/lang/String; = "sm"

.field private static final STOCK_DEVICE:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "DeviceUtils"

.field public static TYPE_CPU:I

.field public static TYPE_GPU:I

.field public static TYPE_RAM:I

.field private static UNKNOWN:I

.field private static application:Landroid/app/Application;

.field private static applicationContext:Landroid/content/Context;

.field private static mConstructor:Ljava/lang/reflect/Constructor;

.field static mCpuLevel:I

.field private static mGetDeviceLevel:Ljava/lang/reflect/Method;

.field private static mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

.field static mGpuLevel:I

.field private static mIsSupportPrune:Ljava/lang/reflect/Method;

.field private static mLastVersion:I

.field static mLevel:I

.field private static mPerf:Ljava/lang/Object;

.field static mRamLevel:I

.field static mTotalRam:I

.field private static perfClass:Ljava/lang/Class;

.field private static perfClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method public static constructor <clinit>()V
    .locals 42

    .line 1
    const-string v0, "getDeviceLevel"

    .line 2
    const-string v1, "DeviceUtils"

    .line 4
    const-string v2, "Inc ([A-Z]+)([\\d]+)"

    .line 6
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    move-result-object v2

    .line 11
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    .line 12
    const-string v2, "MT([\\d]{2})([\\d]+)"

    .line 14
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 16
    move-result-object v2

    .line 19
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

    .line 20
    const/4 v2, -0x1

    .line 22
    sput v2, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    .line 23
    sput v2, Lmiuix/animation/utils/DeviceUtils;->mCpuLevel:I

    .line 25
    sput v2, Lmiuix/animation/utils/DeviceUtils;->mGpuLevel:I

    .line 27
    sput v2, Lmiuix/animation/utils/DeviceUtils;->mRamLevel:I

    .line 29
    const v2, 0x7fffffff

    .line 31
    sput v2, Lmiuix/animation/utils/DeviceUtils;->mTotalRam:I

    .line 34
    const/4 v2, 0x0

    .line 36
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 37
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 39
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 41
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 43
    sput-object v2, Lmiuix/animation/utils/DeviceUtils;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 45
    const/4 v3, 0x1

    .line 47
    sput v3, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    .line 48
    sput v3, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    .line 50
    sput v3, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    .line 52
    const/4 v4, 0x2

    .line 54
    sput v4, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    .line 55
    const/4 v5, 0x3

    .line 57
    sput v5, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    .line 58
    const/4 v5, 0x0

    .line 60
    :try_start_0
    new-instance v6, Ldalvik/system/PathClassLoader;

    .line 61
    const-string v7, "/system/framework/MiuiBooster.jar"

    .line 63
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 65
    move-result-object v8

    .line 68
    invoke-direct {v6, v7, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 69
    sput-object v6, Lmiuix/animation/utils/DeviceUtils;->perfClassLoader:Ldalvik/system/PathClassLoader;

    .line 72
    const-string v7, "com.miui.performance.DeviceLevelUtils"

    .line 74
    invoke-virtual {v6, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 76
    move-result-object v6

    .line 79
    sput-object v6, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 80
    new-array v7, v3, [Ljava/lang/Class;

    .line 82
    const-class v8, Landroid/content/Context;

    .line 84
    aput-object v8, v7, v5

    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 88
    move-result-object v6

    .line 91
    sput-object v6, Lmiuix/animation/utils/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 92
    new-array v4, v4, [Ljava/lang/Class;

    .line 94
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 96
    aput-object v6, v4, v5

    .line 98
    aput-object v6, v4, v3

    .line 100
    sget-object v7, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 102
    invoke-virtual {v7, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 104
    move-result-object v4

    .line 107
    sput-object v4, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 108
    new-array v4, v3, [Ljava/lang/Class;

    .line 110
    aput-object v6, v4, v5

    .line 112
    sget-object v7, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 114
    invoke-virtual {v7, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 116
    move-result-object v0

    .line 119
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 120
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 122
    const-string v4, "isSupportPrune"

    .line 124
    new-array v7, v5, [Ljava/lang/Class;

    .line 126
    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 128
    move-result-object v0

    .line 131
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 132
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 134
    const-string v4, "DEVICE_LEVEL_FOR_RAM"

    .line 136
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/Integer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 144
    move-result v0

    .line 147
    sput v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    .line 148
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 150
    const-string v4, "DEVICE_LEVEL_FOR_CPU"

    .line 152
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 154
    move-result-object v0

    .line 157
    check-cast v0, Ljava/lang/Integer;

    .line 158
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 160
    move-result v0

    .line 163
    sput v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    .line 164
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 166
    const-string v4, "DEVICE_LEVEL_FOR_GPU"

    .line 168
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/Integer;

    .line 174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 176
    move-result v0

    .line 179
    sput v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    .line 180
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 182
    const-string v4, "LOW_DEVICE"

    .line 184
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 186
    move-result-object v0

    .line 189
    check-cast v0, Ljava/lang/Integer;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 192
    move-result v0

    .line 195
    sput v0, Lmiuix/animation/utils/DeviceUtils;->LOW:I

    .line 196
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 198
    const-string v4, "MIDDLE_DEVICE"

    .line 200
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 202
    move-result-object v0

    .line 205
    check-cast v0, Ljava/lang/Integer;

    .line 206
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 208
    move-result v0

    .line 211
    sput v0, Lmiuix/animation/utils/DeviceUtils;->MIDDLE:I

    .line 212
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 214
    const-string v4, "HIGH_DEVICE"

    .line 216
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 218
    move-result-object v0

    .line 221
    check-cast v0, Ljava/lang/Integer;

    .line 222
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 224
    move-result v0

    .line 227
    sput v0, Lmiuix/animation/utils/DeviceUtils;->HIGH:I

    .line 228
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->perfClass:Ljava/lang/Class;

    .line 230
    const-string v4, "DEVICE_LEVEL_UNKNOWN"

    .line 232
    invoke-static {v0, v4, v6}, Lmiuix/animation/utils/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 234
    move-result-object v0

    .line 237
    check-cast v0, Ljava/lang/Integer;

    .line 238
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 240
    move-result v0

    .line 243
    sput v0, Lmiuix/animation/utils/DeviceUtils;->UNKNOWN:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v4, "DeviceLevel(): Load Class Exception:"

    .line 248
    invoke-static {v4, v0, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 250
    :goto_0
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 253
    if-nez v0, :cond_0

    .line 255
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    .line 257
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 259
    move-result-object v0

    .line 262
    const-string v4, "currentApplication"

    .line 263
    new-array v6, v5, [Ljava/lang/Class;

    .line 265
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 267
    move-result-object v0

    .line 270
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    move-result-object v0

    .line 274
    check-cast v0, Landroid/app/Application;

    .line 275
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->application:Landroid/app/Application;

    .line 277
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 281
    move-result-object v0

    .line 284
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    goto :goto_1

    .line 287
    :catch_1
    move-exception v0

    .line 288
    const-string v4, "android.app.ActivityThread Exception:"

    .line 289
    invoke-static {v4, v0, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 291
    :cond_0
    :goto_1
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 294
    if-nez v0, :cond_1

    .line 296
    :try_start_2
    const-string v0, "android.app.AppGlobals"

    .line 298
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 300
    move-result-object v0

    .line 303
    const-string v4, "getInitialApplication"

    .line 304
    new-array v6, v5, [Ljava/lang/Class;

    .line 306
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 308
    move-result-object v0

    .line 311
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    move-result-object v0

    .line 315
    check-cast v0, Landroid/app/Application;

    .line 316
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->application:Landroid/app/Application;

    .line 318
    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 322
    move-result-object v0

    .line 325
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 326
    goto :goto_2

    .line 328
    :catch_2
    move-exception v0

    .line 329
    const-string v2, "android.app.AppGlobals Exception:"

    .line 330
    invoke-static {v2, v0, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 332
    :cond_1
    :goto_2
    :try_start_3
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 335
    if-eqz v0, :cond_2

    .line 337
    new-array v2, v3, [Ljava/lang/Object;

    .line 339
    sget-object v3, Lmiuix/animation/utils/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 341
    aput-object v3, v2, v5

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    move-result-object v0

    .line 348
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->mPerf:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 349
    goto :goto_3

    .line 351
    :catch_3
    move-exception v0

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    .line 353
    const-string v3, "DeviceLevelUtils(): newInstance Exception:"

    .line 355
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    move-result-object v2

    .line 366
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    :cond_2
    :goto_3
    const-string v3, "cactus"

    .line 373
    const-string v4, "cereus"

    .line 375
    const-string v5, "pine"

    .line 377
    const-string v6, "olive"

    .line 379
    const-string v7, "ginkgo"

    .line 381
    const-string v8, "olivelite"

    .line 383
    const-string v9, "olivewood"

    .line 385
    const-string v10, "willow"

    .line 387
    const-string v11, "wayne"

    .line 389
    const-string v12, "dandelion"

    .line 391
    const-string v13, "angelica"

    .line 393
    const-string v14, "angelicain"

    .line 395
    const-string v15, "whyred"

    .line 397
    const-string v16, "tulip"

    .line 399
    const-string v17, "onc"

    .line 401
    const-string v18, "onclite"

    .line 403
    const-string v19, "lavender"

    .line 405
    const-string v20, "lotus"

    .line 407
    const-string v21, "laurus"

    .line 409
    const-string v22, "merlinnfc"

    .line 411
    const-string v23, "merlin"

    .line 413
    const-string v24, "lancelot"

    .line 415
    const-string v25, "citrus"

    .line 417
    const-string v26, "pomelo"

    .line 419
    const-string v27, "lemon"

    .line 421
    const-string v28, "shiva"

    .line 423
    const-string v29, "lime"

    .line 425
    const-string v30, "cannon"

    .line 427
    const-string v31, "curtana"

    .line 429
    const-string v32, "durandal"

    .line 431
    const-string v33, "excalibur"

    .line 433
    const-string v34, "joyeuse"

    .line 435
    const-string v35, "gram"

    .line 437
    const-string v36, "sunny"

    .line 439
    const-string v37, "mojito"

    .line 441
    const-string v38, "rainbow"

    .line 443
    const-string v39, "cattail"

    .line 445
    const-string v40, "angelican"

    .line 447
    const-string v41, "camellia"

    .line 449
    filled-new-array/range {v3 .. v41}, [Ljava/lang/String;

    .line 451
    move-result-object v0

    .line 454
    sput-object v0, Lmiuix/animation/utils/DeviceUtils;->STOCK_DEVICE:[Ljava/lang/String;

    .line 455
    return-void
    .line 457
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCpuInfo(Ljava/lang/String;)Lmiuix/animation/utils/DeviceUtils$CpuInfo;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/utils/DeviceUtils$CpuInfo;-><init>()V

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    move-result p0

    .line 10
    iput p0, v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->id:I

    .line 11
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p0

    .line 18
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    const-string v2, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

    .line 23
    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    invoke-static {p0}, Lmiuix/animation/utils/DeviceUtils;->getContentFromFileInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    move-result p0

    .line 38
    iput p0, v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->maxFreq:I

    .line 39
    :cond_0
    return-object v0
    .line 41
.end method

.method private static decideLevel(Lmiuix/animation/utils/DeviceUtils$CpuStats;)V
    .locals 5

    .line 1
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->bigCoreCount:I

    .line 8
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const v4, 0x231860

    .line 13
    if-lt v0, v1, :cond_3

    .line 16
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->maxFreq:I

    .line 18
    const v1, 0x2932e0

    .line 20
    if-le v0, v1, :cond_1

    .line 23
    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    if-le v0, v4, :cond_2

    .line 29
    iput v2, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    iput v3, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 34
    goto :goto_0

    .line 36
    :cond_3
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->maxFreq:I

    .line 37
    if-le v0, v4, :cond_4

    .line 39
    iput v2, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 41
    goto :goto_0

    .line 43
    :cond_4
    iput v3, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 44
    :goto_0
    return-void
    .line 46
.end method

.method private static doCpuStats(Lmiuix/animation/utils/DeviceUtils$CpuStats;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;

    .line 16
    iget v1, v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->architecture:I

    .line 18
    const/16 v2, 0x8

    .line 20
    if-ge v1, v2, :cond_0

    .line 22
    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 25
    :cond_0
    iget v0, v0, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->maxFreq:I

    .line 27
    iget v1, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->maxFreq:I

    .line 29
    if-le v0, v1, :cond_1

    .line 31
    iput v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->maxFreq:I

    .line 33
    :cond_1
    const v1, 0x1e8480

    .line 35
    if-lt v0, v1, :cond_2

    .line 38
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->bigCoreCount:I

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 42
    iput v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->bigCoreCount:I

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    iget v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->smallCoreCount:I

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 49
    iput v0, p0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->smallCoreCount:I

    .line 51
    goto :goto_0

    .line 53
    :cond_3
    invoke-static {p0}, Lmiuix/animation/utils/DeviceUtils;->decideLevel(Lmiuix/animation/utils/DeviceUtils$CpuStats;)V

    .line 54
    return-void
    .line 57
.end method

.method private static getContentFromFileInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 3
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 8
    new-instance v2, Ljava/io/InputStreamReader;

    .line 10
    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 12
    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 15
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    :catch_0
    return-object v2

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    move-object v0, v1

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    :goto_0
    if-eqz v0, :cond_0

    .line 33
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 35
    :catch_1
    :cond_0
    throw p0

    .line 38
    :catch_2
    move-object v1, v0

    .line 39
    :catch_3
    if-eqz v1, :cond_1

    .line 40
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 42
    :catch_4
    :cond_1
    return-object v0
    .line 45
.end method

.method private static getCpuInfo(Ljava/lang/String;Ljava/lang/String;Lmiuix/animation/utils/DeviceUtils$CpuInfo;)V
    .locals 1

    .line 1
    const-string v0, "CPU implementer"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1}, Lmiuix/animation/utils/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 10
    move-result p0

    .line 13
    iput p0, p2, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->implementor:I

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "CPU architecture"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    invoke-static {p1}, Lmiuix/animation/utils/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 25
    move-result p0

    .line 28
    iput p0, p2, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->architecture:I

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "CPU part"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    invoke-static {p1}, Lmiuix/animation/utils/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 40
    move-result p0

    .line 43
    iput p0, p2, Lmiuix/animation/utils/DeviceUtils$CpuInfo;->part:I

    .line 44
    :cond_2
    :goto_0
    return-void
    .line 46
.end method

.method public static getCpuInfoList()Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    .line 7
    new-instance v2, Ljava/io/File;

    .line 9
    const-string v3, "/proc/cpuinfo"

    .line 11
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 16
    const/4 v2, 0x0

    .line 19
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    .line 20
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 29
    const-string v4, ": "

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 35
    array-length v4, v3

    .line 36
    const/4 v5, 0x1

    .line 37
    if-le v4, v5, :cond_0

    .line 38
    invoke-static {v3, v0, v2}, Lmiuix/animation/utils/DeviceUtils;->parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/animation/utils/DeviceUtils$CpuInfo;)Lmiuix/animation/utils/DeviceUtils$CpuInfo;

    .line 40
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    const-string v2, "DeviceUtils"

    .line 46
    const-string v3, "getChipSetFromCpuInfo failed"

    .line 48
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :cond_1
    return-object v0
    .line 53
.end method

.method private static getCpuLevel()I
    .locals 3

    .line 1
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getHardwareInfo()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-lez v1, :cond_1

    .line 11
    const-string v1, "Qualcomm"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    invoke-static {v0}, Lmiuix/animation/utils/DeviceUtils;->getQualcommCpuLevel(Ljava/lang/String;)I

    .line 21
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v0}, Lmiuix/animation/utils/DeviceUtils;->getMtkCpuLevel(Ljava/lang/String;)I

    .line 26
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :goto_0
    if-ne v0, v2, :cond_2

    .line 32
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getCpuStats()Lmiuix/animation/utils/DeviceUtils$CpuStats;

    .line 34
    move-result-object v0

    .line 37
    iget v0, v0, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 38
    :cond_2
    return v0
    .line 40
.end method

.method public static getCpuStats()Lmiuix/animation/utils/DeviceUtils$CpuStats;
    .locals 4

    .line 1
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getCpuInfoList()Ljava/util/List;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/animation/utils/DeviceUtils$CpuStats;

    .line 6
    invoke-direct {v1}, Lmiuix/animation/utils/DeviceUtils$CpuStats;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    move-result v2

    .line 14
    const/16 v3, 0x8

    .line 15
    if-ge v2, v3, :cond_0

    .line 17
    const/4 v2, 0x0

    .line 19
    iput v2, v1, Lmiuix/animation/utils/DeviceUtils$CpuStats;->level:I

    .line 20
    :cond_0
    invoke-static {v1, v0}, Lmiuix/animation/utils/DeviceUtils;->doCpuStats(Lmiuix/animation/utils/DeviceUtils$CpuStats;Ljava/util/List;)V

    .line 22
    return-object v1
    .line 25
.end method

.method public static getDeviceLevel()I
    .locals 1

    .line 1
    sget v0, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    invoke-static {v0}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel(I)I

    move-result v0

    return v0
.end method

.method public static getDeviceLevel(I)I
    .locals 2

    .line 2
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    const/4 v1, -0x1

    if-ne v0, p0, :cond_0

    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    sput p0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    .line 4
    invoke-static {p0}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel2(I)I

    move-result p0

    sput p0, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    if-eq p0, v1, :cond_1

    return p0

    .line 5
    :cond_1
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel1()I

    move-result p0

    return p0
.end method

.method public static getDeviceLevel(II)I
    .locals 2

    .line 6
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    .line 7
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_2

    sget v0, Lmiuix/animation/utils/DeviceUtils;->mCpuLevel:I

    if-eq v0, v1, :cond_2

    return v0

    .line 8
    :cond_0
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    if-ne p1, v0, :cond_1

    .line 9
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_2

    sget v0, Lmiuix/animation/utils/DeviceUtils;->mGpuLevel:I

    if-eq v0, v1, :cond_2

    return v0

    .line 10
    :cond_1
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    if-ne p1, v0, :cond_2

    .line 11
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    if-ne v0, p0, :cond_2

    sget v0, Lmiuix/animation/utils/DeviceUtils;->mRamLevel:I

    if-eq v0, v1, :cond_2

    return v0

    .line 12
    :cond_2
    invoke-static {p0, p1}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel2(II)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 13
    invoke-static {p0, v0, p1}, Lmiuix/animation/utils/DeviceUtils;->setDeviceLevel(III)I

    move-result p0

    return p0

    .line 14
    :cond_3
    invoke-static {p1}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel1(I)I

    move-result v0

    .line 15
    invoke-static {p0, v0, p1}, Lmiuix/animation/utils/DeviceUtils;->setDeviceLevel(III)I

    move-result p0

    return p0
.end method

.method private static getDeviceLevel1()I
    .locals 4

    .line 5
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->isMiuiLite()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 7
    sput v0, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    goto :goto_0

    .line 8
    :cond_1
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    invoke-static {v0}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel1(I)I

    move-result v0

    .line 9
    sget v1, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    invoke-static {v1}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel1(I)I

    move-result v1

    .line 10
    sget v2, Lmiuix/animation/utils/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v3, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    invoke-static {v2, v3}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel(II)I

    move-result v2

    .line 11
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/utils/DeviceUtils;->getMinLevel([I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    .line 12
    :goto_0
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mLevel:I

    return v0
.end method

.method private static getDeviceLevel1(I)I
    .locals 1

    .line 1
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    if-ne p0, v0, :cond_2

    .line 2
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getTotalRam()I

    move-result p0

    const/4 v0, 0x6

    if-le p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-lez p0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_2
    sget v0, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    if-ne p0, v0, :cond_3

    .line 4
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getCpuLevel()I

    move-result p0

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static getDeviceLevel2(I)I
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    sget-object v1, Lmiuix/animation/utils/DeviceUtils;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceLevel failed , e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DeviceUtils"

    .line 4
    invoke-static {p0, v0, v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 5
    :goto_0
    invoke-static {p0}, Lmiuix/animation/utils/DeviceUtils;->transDeviceLevel(I)I

    move-result p0

    return p0
.end method

.method private static getDeviceLevel2(II)I
    .locals 4

    .line 14
    :try_start_0
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    sget-object v1, Lmiuix/animation/utils/DeviceUtils;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getDeviceLevel failed , e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "DeviceUtils"

    .line 17
    invoke-static {p0, p1, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 18
    :goto_0
    invoke-static {p0}, Lmiuix/animation/utils/DeviceUtils;->transDeviceLevel(I)I

    move-result p0

    return p0
.end method

.method private static getHardwareInfo()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    .line 2
    new-instance v1, Ljava/io/File;

    .line 4
    const-string v2, "/proc/cpuinfo"

    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    .line 24
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    const-string v2, ": "

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 35
    array-length v2, v1

    .line 36
    const/4 v3, 0x1

    .line 37
    if-le v2, v3, :cond_0

    .line 38
    aget-object v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "DeviceUtils"

    .line 44
    const-string v2, "getChipSetFromCpuInfo failed"

    .line 46
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :cond_1
    const-string v0, ""

    .line 51
    return-object v0
    .line 53
.end method

.method private static varargs getMinLevel([I)I
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, -0x1

    .line 3
    if-nez v0, :cond_0

    .line 4
    return v1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    aget v2, p0, v0

    .line 8
    array-length v3, p0

    .line 10
    :goto_0
    if-ge v0, v3, :cond_2

    .line 11
    aget v4, p0, v0

    .line 13
    if-le v4, v1, :cond_1

    .line 15
    if-ge v4, v2, :cond_1

    .line 17
    move v2, v4

    .line 19
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 22
    :cond_2
    return v2
    .line 23
.end method

.method private static getMtkCpuLevel(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    const/4 v2, 0x2

    .line 21
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    move-result v1

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    move-result p0

    .line 35
    const/16 v2, 0x44

    .line 36
    if-ne v1, v2, :cond_0

    .line 38
    const/16 v1, 0x49

    .line 40
    if-lt p0, v1, :cond_0

    .line 42
    return v0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :cond_1
    const/4 p0, -0x1

    .line 47
    return p0
    .line 48
.end method

.method public static getProductDevice()Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    const-string v1, ""

    .line 4
    const/4 v2, 0x2

    .line 6
    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    const/4 v4, 0x0

    .line 9
    aput-object v0, v3, v4

    .line 10
    const/4 v5, 0x1

    .line 12
    aput-object v0, v3, v5

    .line 13
    const-string v0, "android.os.SystemProperties"

    .line 15
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 20
    const-string v6, "get"

    .line 21
    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    const-string v3, "ro.product.device"

    .line 29
    aput-object v3, v2, v4

    .line 31
    aput-object v1, v2, v5

    .line 33
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    const-string v3, "getProductDevice failed , e:"

    .line 46
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v3, "DeviceUtils"

    .line 51
    invoke-static {v0, v2, v3}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 53
    return-object v1
    .line 56
.end method

.method public static getQualcommCpuLevel(Ljava/lang/String;)I
    .locals 6

    .line 1
    sget-object v0, Lmiuix/animation/utils/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    if-eqz v1, :cond_5

    .line 19
    const/4 v2, 0x2

    .line 21
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    if-eqz p0, :cond_5

    .line 26
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    const-string v3, "sm"

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 39
    const/4 v4, 0x7

    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    move-result p0

    .line 51
    const/16 v1, 0x8

    .line 52
    if-lt p0, v1, :cond_0

    .line 54
    return v2

    .line 56
    :cond_0
    if-lt p0, v4, :cond_1

    .line 57
    return v0

    .line 59
    :cond_1
    return v5

    .line 60
    :cond_2
    const-string v2, "sdm"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    move-result p0

    .line 76
    if-lt p0, v4, :cond_3

    .line 77
    return v0

    .line 79
    :cond_3
    return v5

    .line 80
    :cond_4
    const-string p0, "msm"

    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p0

    .line 86
    if-eqz p0, :cond_5

    .line 87
    return v5

    .line 89
    :cond_5
    const/4 p0, -0x1

    .line 90
    return p0
    .line 91
.end method

.method private static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public static getTotalRam()I
    .locals 5

    .line 1
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mTotalRam:I

    .line 2
    const v1, 0x7fffffff

    .line 4
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    :try_start_0
    const-string v1, "miui.util.HardwareInfo"

    .line 10
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 15
    const-string v2, "getTotalPhysicalMemory"

    .line 16
    new-array v3, v0, [Ljava/lang/Class;

    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v1

    .line 23
    new-array v2, v0, [Ljava/lang/Object;

    .line 24
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Long;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v1

    .line 36
    const-wide/16 v3, 0x400

    .line 37
    div-long/2addr v1, v3

    .line 39
    div-long/2addr v1, v3

    .line 40
    div-long/2addr v1, v3

    .line 41
    long-to-int v1, v1

    .line 42
    sput v1, Lmiuix/animation/utils/DeviceUtils;->mTotalRam:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    const-string v2, "DeviceUtils"

    .line 47
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 52
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sput v0, Lmiuix/animation/utils/DeviceUtils;->mTotalRam:I

    .line 56
    :cond_0
    :goto_0
    sget v0, Lmiuix/animation/utils/DeviceUtils;->mTotalRam:I

    .line 58
    return v0
    .line 60
.end method

.method private static isMiuiLite()Z
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "miui.os.Build"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "IS_MIUI_LITE_VERSION"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 10
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    return v0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    const-string v1, "DeviceUtils"

    .line 27
    const-string v2, "getDeviceLevel failed"

    .line 29
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    const/4 v0, 0x0

    .line 34
    return v0
    .line 35
.end method

.method public static isStockDevice()Z
    .locals 6

    .line 1
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getProductDevice()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    sget-object v2, Lmiuix/animation/utils/DeviceUtils;->STOCK_DEVICE:[Ljava/lang/String;

    .line 16
    array-length v3, v2

    .line 18
    move v4, v1

    .line 19
    :goto_0
    if-ge v4, v3, :cond_2

    .line 20
    aget-object v5, v2, v4

    .line 22
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    return v1
    .line 35
.end method

.method public static isSupportPrune()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lmiuix/animation/utils/DeviceUtils;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 3
    sget-object v2, Lmiuix/animation/utils/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 5
    new-array v3, v0, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    const-string v3, "isSupportPrune failed , e:"

    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v3, "DeviceUtils"

    .line 28
    invoke-static {v1, v2, v3}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    :goto_0
    return v0
    .line 33
.end method

.method private static parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/animation/utils/DeviceUtils$CpuInfo;)Lmiuix/animation/utils/DeviceUtils$CpuInfo;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    aget-object v0, p0, v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v2, p0, v1

    .line 10
    const-string v3, "processor"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    invoke-static {v0}, Lmiuix/animation/utils/DeviceUtils;->createCpuInfo(Ljava/lang/String;)Lmiuix/animation/utils/DeviceUtils$CpuInfo;

    .line 26
    move-result-object p2

    .line 29
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    if-eqz p2, :cond_1

    .line 34
    aget-object p0, p0, v1

    .line 36
    invoke-static {p0, v0, p2}, Lmiuix/animation/utils/DeviceUtils;->getCpuInfo(Ljava/lang/String;Ljava/lang/String;Lmiuix/animation/utils/DeviceUtils$CpuInfo;)V

    .line 38
    :cond_1
    :goto_0
    return-object p2
    .line 41
.end method

.method private static setDeviceLevel(III)I
    .locals 0

    .line 1
    sput p0, Lmiuix/animation/utils/DeviceUtils;->mLastVersion:I

    .line 2
    sget p0, Lmiuix/animation/utils/DeviceUtils;->TYPE_CPU:I

    .line 4
    if-ne p2, p0, :cond_0

    .line 6
    sput p1, Lmiuix/animation/utils/DeviceUtils;->mCpuLevel:I

    .line 8
    return p1

    .line 10
    :cond_0
    sget p0, Lmiuix/animation/utils/DeviceUtils;->TYPE_GPU:I

    .line 11
    if-ne p2, p0, :cond_1

    .line 13
    sput p1, Lmiuix/animation/utils/DeviceUtils;->mGpuLevel:I

    .line 15
    return p1

    .line 17
    :cond_1
    sget p0, Lmiuix/animation/utils/DeviceUtils;->TYPE_RAM:I

    .line 18
    if-ne p2, p0, :cond_2

    .line 20
    sput p1, Lmiuix/animation/utils/DeviceUtils;->mRamLevel:I

    .line 22
    return p1

    .line 24
    :cond_2
    const/4 p0, -0x1

    .line 25
    return p0
    .line 26
.end method

.method private static toInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "0x"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    const/16 v0, 0x10

    .line 15
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 17
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    move-result p0

    .line 25
    return p0
    .line 26
.end method

.method private static transDeviceLevel(I)I
    .locals 1

    .line 1
    sget v0, Lmiuix/animation/utils/DeviceUtils;->LOW:I

    .line 2
    if-ne p0, v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    sget v0, Lmiuix/animation/utils/DeviceUtils;->MIDDLE:I

    .line 8
    if-ne p0, v0, :cond_1

    .line 10
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    sget v0, Lmiuix/animation/utils/DeviceUtils;->HIGH:I

    .line 14
    if-ne p0, v0, :cond_2

    .line 16
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_2
    const/4 p0, -0x1

    .line 20
    return p0
    .line 21
.end method

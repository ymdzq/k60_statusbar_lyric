.class public abstract Lmiuix/device/DeviceUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEV_STANDARD_VERSION:I

.field public static HIGH:I

.field public static LOW:I

.field public static MIDDLE:I

.field public static MIUI_LITE_ROM:Ljava/lang/Boolean;

.field public static MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

.field public static MIUI_LITE_VERSION:I

.field public static MIUI_MIDDLE_VERSION:I

.field public static final MT_PATTERN:Ljava/util/regex/Pattern;

.field public static final SM_PATTERN:Ljava/util/regex/Pattern;

.field public static TYPE_CPU:I

.field public static TYPE_GPU:I

.field public static TYPE_RAM:I

.field public static applicationContext:Landroid/content/Context;

.field public static initDeviceLevelInfo:Z

.field public static final mConstructor:Ljava/lang/reflect/Constructor;

.field public static mCpuLevel:I

.field public static mGetDeviceLevel:Ljava/lang/reflect/Method;

.field public static mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

.field public static mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

.field public static final mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

.field public static mGpuLevel:I

.field public static mLastVersion:I

.field public static mLevel:I

.field public static mPerf:Ljava/lang/Object;

.field public static mTotalRam:I

.field public static final sPerfClass:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "DeviceUtils"

    .line 2
    const-string v1, "Inc ([A-Z]+)([\\d]+)"

    .line 4
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v1

    .line 9
    sput-object v1, Lmiuix/device/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    .line 10
    const-string v1, "MT([\\d]{2})([\\d]+)"

    .line 12
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v1

    .line 17
    sput-object v1, Lmiuix/device/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

    .line 18
    const/4 v1, 0x0

    .line 20
    sput-object v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    .line 21
    const/4 v2, -0x2

    .line 23
    sput v2, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 24
    sput v2, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 26
    sput-object v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    .line 28
    const/4 v2, -0x1

    .line 30
    sput v2, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 31
    sput v2, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    .line 33
    sput v2, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    .line 35
    const v2, 0x7fffffff

    .line 37
    sput v2, Lmiuix/device/DeviceUtils;->mTotalRam:I

    .line 40
    sput-object v1, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 42
    sput-object v1, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 44
    sput-object v1, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 46
    sput-object v1, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 48
    sput-object v1, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 50
    sput-object v1, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

    .line 52
    const/4 v1, 0x1

    .line 54
    sput v1, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    .line 55
    sput v1, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 57
    const/4 v2, 0x0

    .line 59
    sput-boolean v2, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    .line 60
    sput v1, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    .line 62
    const/4 v3, 0x2

    .line 64
    sput v3, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    .line 65
    const/4 v3, 0x3

    .line 67
    sput v3, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    .line 68
    :try_start_0
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 70
    const-string v4, "/system_ext/framework/MiuiBooster.jar"

    .line 72
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 74
    move-result-object v5

    .line 77
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 78
    const-string v4, "com.miui.performance.DeviceLevelUtils"

    .line 81
    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 83
    move-result-object v3

    .line 86
    sput-object v3, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 87
    new-array v1, v1, [Ljava/lang/Class;

    .line 89
    const-class v4, Landroid/content/Context;

    .line 91
    aput-object v4, v1, v2

    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 95
    move-result-object v1

    .line 98
    sput-object v1, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 99
    const-string v1, "getMiuiLiteVersion"

    .line 101
    new-array v4, v2, [Ljava/lang/Class;

    .line 103
    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 105
    move-result-object v1

    .line 108
    sput-object v1, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    const-string v3, "static init(): Load Class Exception:"

    .line 113
    invoke-static {v3, v1, v0}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 115
    :goto_0
    :try_start_1
    sget-object v1, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 118
    const-string v3, "getMiuiMiddleVersion"

    .line 120
    new-array v2, v2, [Ljava/lang/Class;

    .line 122
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 124
    move-result-object v1

    .line 127
    sput-object v1, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    goto :goto_1

    .line 130
    :catch_1
    move-exception v1

    .line 131
    const-string v2, "static init(): Load MiuiMiddle Class Exception:"

    .line 132
    invoke-static {v2, v1, v0}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 134
    :goto_1
    sget-object v1, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 137
    if-nez v1, :cond_0

    .line 139
    const-string v1, "static init(): MiuiBooster is not in this rom"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    return-void
    .line 146
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 6

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 2
    const/4 v1, 0x0

    .line 4
    const-string v2, "DeviceUtils"

    .line 5
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 15
    const-string v4, "currentApplication"

    .line 16
    new-array v5, v1, [Ljava/lang/Class;

    .line 18
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroid/app/Application;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 35
    sput-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v4, "android.app.ActivityThread Exception:"

    .line 40
    invoke-static {v4, v0, v2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 42
    :cond_0
    :goto_0
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 45
    if-nez v0, :cond_1

    .line 47
    :try_start_1
    const-string v0, "android.app.AppGlobals"

    .line 49
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 51
    move-result-object v0

    .line 54
    const-string v4, "getInitialApplication"

    .line 55
    new-array v1, v1, [Ljava/lang/Class;

    .line 57
    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Landroid/app/Application;

    .line 67
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    .line 71
    move-result-object v0

    .line 74
    sput-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    goto :goto_1

    .line 77
    :catch_1
    move-exception v0

    .line 78
    const-string v1, "android.app.AppGlobals Exception:"

    .line 79
    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 81
    :cond_1
    :goto_1
    sget-object v0, Lmiuix/device/DeviceUtils;->applicationContext:Landroid/content/Context;

    .line 84
    return-object v0
    .line 86
.end method

.method public static getDeviceLevel()I
    .locals 14

    .line 1
    sget v0, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 2
    sget v1, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    .line 4
    const/4 v2, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    sget v0, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 9
    if-eq v0, v2, :cond_0

    .line 11
    goto/16 :goto_b

    .line 13
    :cond_0
    sput v1, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 15
    invoke-static {}, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo()Z

    .line 17
    move-result v0

    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x1

    .line 23
    const-string v6, "perf is null!"

    .line 24
    const-string v7, "DeviceUtils"

    .line 26
    const-string v8, "getDeviceLevel failed , e:"

    .line 28
    if-nez v0, :cond_1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    :try_start_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    sget-object v9, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 39
    new-array v10, v5, [Ljava/lang/Object;

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v11

    .line 46
    aput-object v11, v10, v4

    .line 47
    invoke-virtual {v9, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Integer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result v0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .line 60
    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {v0, v9, v7}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 72
    move v0, v2

    .line 75
    :goto_0
    sget v9, Lmiuix/device/DeviceUtils;->LOW:I

    .line 76
    if-ne v0, v9, :cond_3

    .line 78
    move v0, v4

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    sget v9, Lmiuix/device/DeviceUtils;->MIDDLE:I

    .line 82
    if-ne v0, v9, :cond_4

    .line 84
    move v0, v5

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    sget v9, Lmiuix/device/DeviceUtils;->HIGH:I

    .line 88
    if-ne v0, v9, :cond_5

    .line 90
    move v0, v3

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    :goto_1
    move v0, v2

    .line 94
    :goto_2
    sput v0, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 95
    if-eq v0, v2, :cond_6

    .line 97
    goto/16 :goto_b

    .line 99
    :cond_6
    if-eq v0, v2, :cond_7

    .line 101
    goto/16 :goto_b

    .line 103
    :cond_7
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    .line 105
    move-result v0

    .line 108
    if-eqz v0, :cond_8

    .line 109
    sput v4, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 111
    goto/16 :goto_a

    .line 113
    :cond_8
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    .line 115
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    .line 117
    move-result v0

    .line 120
    sget v9, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    .line 121
    invoke-static {v9}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    .line 123
    move-result v9

    .line 126
    sget v10, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    .line 127
    sget v11, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    .line 129
    if-ne v10, v11, :cond_9

    .line 131
    sget v11, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 133
    if-ne v11, v1, :cond_a

    .line 135
    sget v11, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    .line 137
    if-eq v11, v2, :cond_a

    .line 139
    goto/16 :goto_8

    .line 141
    :cond_9
    sget v11, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 143
    if-ne v11, v1, :cond_a

    .line 145
    sget v11, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    .line 147
    if-eq v11, v2, :cond_a

    .line 149
    goto/16 :goto_8

    .line 151
    :cond_a
    invoke-static {}, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo()Z

    .line 153
    move-result v11

    .line 156
    if-nez v11, :cond_b

    .line 157
    goto :goto_4

    .line 159
    :cond_b
    :try_start_1
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    .line 160
    move-result-object v11

    .line 163
    if-eqz v11, :cond_c

    .line 164
    sget-object v6, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 166
    new-array v12, v3, [Ljava/lang/Object;

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v13

    .line 173
    aput-object v13, v12, v4

    .line 174
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v13

    .line 179
    aput-object v13, v12, v5

    .line 180
    invoke-virtual {v6, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-result-object v6

    .line 185
    check-cast v6, Ljava/lang/Integer;

    .line 186
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 188
    move-result v6

    .line 191
    goto :goto_3

    .line 192
    :cond_c
    new-instance v11, Ljava/lang/Exception;

    .line 193
    invoke-direct {v11, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 195
    throw v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :catch_1
    move-exception v6

    .line 199
    new-instance v11, Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-static {v6, v11, v7}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 205
    move v6, v2

    .line 208
    :goto_3
    sget v7, Lmiuix/device/DeviceUtils;->LOW:I

    .line 209
    if-ne v6, v7, :cond_d

    .line 211
    move v3, v4

    .line 213
    goto :goto_5

    .line 214
    :cond_d
    sget v7, Lmiuix/device/DeviceUtils;->MIDDLE:I

    .line 215
    if-ne v6, v7, :cond_e

    .line 217
    move v3, v5

    .line 219
    goto :goto_5

    .line 220
    :cond_e
    sget v5, Lmiuix/device/DeviceUtils;->HIGH:I

    .line 221
    if-ne v6, v5, :cond_f

    .line 223
    goto :goto_5

    .line 225
    :cond_f
    :goto_4
    move v3, v2

    .line 226
    :goto_5
    if-eq v3, v2, :cond_12

    .line 227
    sput v1, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 229
    sget v1, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    .line 231
    if-ne v10, v1, :cond_10

    .line 233
    sput v3, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    .line 235
    goto :goto_6

    .line 237
    :cond_10
    sget v1, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    .line 238
    if-ne v10, v1, :cond_11

    .line 240
    sput v3, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    .line 242
    goto :goto_6

    .line 244
    :cond_11
    sget v1, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    .line 245
    if-ne v10, v1, :cond_15

    .line 247
    goto :goto_7

    .line 249
    :cond_12
    invoke-static {v10}, Lmiuix/device/DeviceUtils;->getDeviceLevel1(I)I

    .line 250
    move-result v3

    .line 253
    sput v1, Lmiuix/device/DeviceUtils;->mLastVersion:I

    .line 254
    sget v1, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    .line 256
    if-ne v10, v1, :cond_13

    .line 258
    sput v3, Lmiuix/device/DeviceUtils;->mCpuLevel:I

    .line 260
    goto :goto_6

    .line 262
    :cond_13
    sget v1, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    .line 263
    if-ne v10, v1, :cond_14

    .line 265
    sput v3, Lmiuix/device/DeviceUtils;->mGpuLevel:I

    .line 267
    :goto_6
    move v11, v3

    .line 269
    goto :goto_8

    .line 270
    :cond_14
    sget v1, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    .line 271
    if-ne v10, v1, :cond_15

    .line 273
    :goto_7
    goto :goto_6

    .line 275
    :cond_15
    move v11, v2

    .line 276
    :goto_8
    filled-new-array {v0, v9, v11}, [I

    .line 277
    move-result-object v0

    .line 280
    aget v1, v0, v4

    .line 281
    :goto_9
    const/4 v3, 0x3

    .line 283
    if-ge v4, v3, :cond_17

    .line 284
    aget v3, v0, v4

    .line 286
    if-le v3, v2, :cond_16

    .line 288
    if-ge v3, v1, :cond_16

    .line 290
    move v1, v3

    .line 292
    :cond_16
    add-int/lit8 v4, v4, 0x1

    .line 293
    goto :goto_9

    .line 295
    :cond_17
    sput v1, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 296
    :goto_a
    sget v0, Lmiuix/device/DeviceUtils;->mLevel:I

    .line 298
    :goto_b
    return v0
    .line 300
.end method

.method public static getDeviceLevel1(I)I
    .locals 13

    .line 1
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    .line 2
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, -0x1

    .line 7
    const/4 v5, 0x1

    .line 8
    if-ne p0, v0, :cond_2

    .line 9
    invoke-static {}, Lmiuix/device/DeviceUtils;->getTotalRam()I

    .line 11
    move-result p0

    .line 14
    const/4 v0, 0x6

    .line 15
    if-le p0, v0, :cond_0

    .line 16
    return v3

    .line 18
    :cond_0
    if-le p0, v1, :cond_1

    .line 19
    return v5

    .line 21
    :cond_1
    if-lez p0, :cond_17

    .line 22
    return v2

    .line 24
    :cond_2
    sget v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    .line 25
    if-ne p0, v0, :cond_17

    .line 27
    const-string p0, ": "

    .line 29
    const-string v0, "/proc/cpuinfo"

    .line 31
    const-string v6, "getChipSetFromCpuInfo failed"

    .line 33
    const-string v7, "DeviceUtils"

    .line 35
    :try_start_0
    new-instance v8, Ljava/util/Scanner;

    .line 37
    new-instance v9, Ljava/io/File;

    .line 39
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-direct {v8, v9}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 44
    :cond_3
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z

    .line 47
    move-result v9

    .line 50
    if-eqz v9, :cond_4

    .line 51
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 53
    move-result-object v9

    .line 56
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z

    .line 57
    move-result v10

    .line 60
    if-nez v10, :cond_3

    .line 61
    invoke-virtual {v9, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    move-result-object v9

    .line 66
    array-length v10, v9

    .line 67
    if-le v10, v5, :cond_3

    .line 68
    aget-object v8, v9, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 72
    :catch_0
    move-exception v8

    .line 73
    invoke-static {v7, v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_4
    const-string v8, ""

    .line 77
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 79
    move-result v9

    .line 82
    const/16 v10, 0x8

    .line 83
    if-lez v9, :cond_a

    .line 85
    const-string v9, "Qualcomm"

    .line 87
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v9

    .line 92
    if-eqz v9, :cond_8

    .line 93
    sget-object v9, Lmiuix/device/DeviceUtils;->SM_PATTERN:Ljava/util/regex/Pattern;

    .line 95
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 97
    move-result-object v8

    .line 100
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 101
    move-result v9

    .line 104
    if-eqz v9, :cond_a

    .line 105
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 107
    move-result-object v9

    .line 110
    if-eqz v9, :cond_a

    .line 111
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 113
    move-result-object v8

    .line 116
    if-eqz v8, :cond_a

    .line 117
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 119
    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 121
    move-result-object v9

    .line 124
    const-string v11, "sm"

    .line 125
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v11

    .line 130
    const/4 v12, 0x7

    .line 131
    if-eqz v11, :cond_6

    .line 132
    invoke-virtual {v8, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 134
    move-result-object v8

    .line 137
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 138
    move-result v8

    .line 141
    if-lt v8, v10, :cond_5

    .line 142
    move v8, v3

    .line 144
    goto :goto_3

    .line 145
    :cond_5
    if-lt v8, v12, :cond_9

    .line 146
    goto :goto_1

    .line 148
    :cond_6
    const-string v11, "sdm"

    .line 149
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result v11

    .line 154
    if-eqz v11, :cond_7

    .line 155
    invoke-virtual {v8, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 157
    move-result-object v8

    .line 160
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 161
    move-result v8

    .line 164
    if-lt v8, v12, :cond_9

    .line 165
    goto :goto_1

    .line 167
    :cond_7
    const-string v8, "msm"

    .line 168
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result v8

    .line 173
    if-eqz v8, :cond_a

    .line 174
    goto :goto_2

    .line 176
    :cond_8
    sget-object v9, Lmiuix/device/DeviceUtils;->MT_PATTERN:Ljava/util/regex/Pattern;

    .line 177
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 179
    move-result-object v8

    .line 182
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 183
    move-result v9

    .line 186
    if-eqz v9, :cond_a

    .line 187
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 189
    move-result-object v9

    .line 192
    if-eqz v9, :cond_a

    .line 193
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 195
    move-result-object v8

    .line 198
    if-eqz v8, :cond_a

    .line 199
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 201
    move-result v9

    .line 204
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 205
    move-result v8

    .line 208
    const/16 v11, 0x44

    .line 209
    if-ne v9, v11, :cond_9

    .line 211
    const/16 v9, 0x49

    .line 213
    if-lt v8, v9, :cond_9

    .line 215
    :goto_1
    move v8, v5

    .line 217
    goto :goto_3

    .line 218
    :cond_9
    :goto_2
    move v8, v2

    .line 219
    goto :goto_3

    .line 220
    :cond_a
    move v8, v4

    .line 221
    :goto_3
    if-ne v8, v4, :cond_16

    .line 222
    new-instance v8, Ljava/util/ArrayList;

    .line 224
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 226
    :try_start_1
    new-instance v9, Ljava/util/Scanner;

    .line 229
    new-instance v11, Ljava/io/File;

    .line 231
    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-direct {v9, v11}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 236
    const/4 v0, 0x0

    .line 239
    :cond_b
    :goto_4
    invoke-virtual {v9}, Ljava/util/Scanner;->hasNextLine()Z

    .line 240
    move-result v11

    .line 243
    if-eqz v11, :cond_c

    .line 244
    invoke-virtual {v9}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 246
    move-result-object v11

    .line 249
    invoke-virtual {v11, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 250
    move-result-object v11

    .line 253
    array-length v12, v11

    .line 254
    if-le v12, v5, :cond_b

    .line 255
    invoke-static {v11, v8, v0}, Lmiuix/device/DeviceUtils;->parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/device/DeviceUtils$CpuInfo;)Lmiuix/device/DeviceUtils$CpuInfo;

    .line 257
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    goto :goto_4

    .line 261
    :catch_1
    move-exception p0

    .line 262
    invoke-static {v7, v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 266
    move-result p0

    .line 269
    if-ge p0, v10, :cond_d

    .line 270
    move p0, v2

    .line 272
    goto :goto_5

    .line 273
    :cond_d
    move p0, v4

    .line 274
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 275
    move-result-object v0

    .line 278
    move v6, v2

    .line 279
    move v7, v6

    .line 280
    :cond_e
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    move-result v8

    .line 284
    if-eqz v8, :cond_11

    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    move-result-object v8

    .line 290
    check-cast v8, Lmiuix/device/DeviceUtils$CpuInfo;

    .line 291
    iget v9, v8, Lmiuix/device/DeviceUtils$CpuInfo;->architecture:I

    .line 293
    if-ge v9, v10, :cond_f

    .line 295
    move p0, v2

    .line 297
    :cond_f
    iget v8, v8, Lmiuix/device/DeviceUtils$CpuInfo;->maxFreq:I

    .line 298
    if-le v8, v7, :cond_10

    .line 300
    move v7, v8

    .line 302
    :cond_10
    const v9, 0x1e8480

    .line 303
    if-lt v8, v9, :cond_e

    .line 306
    add-int/lit8 v6, v6, 0x1

    .line 308
    goto :goto_6

    .line 310
    :cond_11
    if-eq p0, v4, :cond_12

    .line 311
    move v2, p0

    .line 313
    goto :goto_8

    .line 314
    :cond_12
    const p0, 0x231860

    .line 315
    if-lt v6, v1, :cond_14

    .line 318
    const v0, 0x2932e0

    .line 320
    if-le v7, v0, :cond_13

    .line 323
    move v2, v3

    .line 325
    goto :goto_8

    .line 326
    :cond_13
    if-le v7, p0, :cond_15

    .line 327
    goto :goto_7

    .line 329
    :cond_14
    if-le v7, p0, :cond_15

    .line 330
    :goto_7
    move v2, v5

    .line 332
    :cond_15
    :goto_8
    move v8, v2

    .line 333
    :cond_16
    return v8

    .line 334
    :cond_17
    return v4
    .line 335
.end method

.method public static getMiuiLiteVersion()I
    .locals 5

    .line 1
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteRom()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    sput v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 9
    return v1

    .line 11
    :cond_0
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 12
    const/4 v2, -0x2

    .line 14
    if-ne v0, v2, :cond_4

    .line 15
    :try_start_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    sget-object v2, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 23
    if-nez v2, :cond_1

    .line 25
    new-array v2, v1, [Ljava/lang/Class;

    .line 27
    sget-object v3, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 29
    const-string v4, "getMiuiLiteVersion"

    .line 31
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    move-result-object v2

    .line 36
    sput-object v2, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 37
    :cond_1
    sget-object v2, Lmiuix/device/DeviceUtils;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result v0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .line 54
    const-string v1, "perf is null!"

    .line 56
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    const-string v2, "getMiuiLiteVersion failed , e:"

    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v2, "DeviceUtils"

    .line 70
    invoke-static {v0, v1, v2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 72
    const/4 v0, -0x1

    .line 75
    :goto_0
    const/4 v1, 0x2

    .line 76
    if-lt v0, v1, :cond_3

    .line 77
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 79
    goto :goto_1

    .line 81
    :cond_3
    const/4 v0, 0x1

    .line 82
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 83
    :goto_1
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_VERSION:I

    .line 85
    :cond_4
    return v0
    .line 87
.end method

.method public static getPerf()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 2
    if-nez v0, :cond_1

    .line 4
    :try_start_0
    invoke-static {}, Lmiuix/device/DeviceUtils;->getAppContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    sget-object v1, Lmiuix/device/DeviceUtils;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    sput-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 27
    const-string v1, "getAppContext fail"

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "getPerf DeviceUtils(): newInstance Exception:"

    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 49
    const-string v2, "DeviceUtils"

    .line 50
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lmiuix/device/DeviceUtils;->mPerf:Ljava/lang/Object;

    .line 58
    return-object v0
    .line 60
.end method

.method public static getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
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
    sget v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

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
    sput v1, Lmiuix/device/DeviceUtils;->mTotalRam:I
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
    sput v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

    .line 56
    :cond_0
    :goto_0
    sget v0, Lmiuix/device/DeviceUtils;->mTotalRam:I

    .line 58
    return v0
    .line 60
.end method

.method public static initDeviceLevelInfo()Z
    .locals 5

    .line 1
    const-string v0, "getDeviceLevel"

    .line 2
    sget-boolean v1, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    return v1

    .line 8
    :cond_0
    :try_start_0
    sget-object v2, Lmiuix/device/DeviceUtils;->sPerfClass:Ljava/lang/Class;

    .line 9
    if-nez v2, :cond_1

    .line 11
    return v1

    .line 13
    :cond_1
    const/4 v1, 0x2

    .line 14
    new-array v1, v1, [Ljava/lang/Class;

    .line 15
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    const/4 v4, 0x0

    .line 19
    aput-object v3, v1, v4

    .line 20
    const/4 v4, 0x1

    .line 22
    aput-object v3, v1, v4

    .line 23
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object v1

    .line 28
    sput-object v1, Lmiuix/device/DeviceUtils;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 29
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    move-result-object v0

    .line 38
    sput-object v0, Lmiuix/device/DeviceUtils;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 39
    const-string v0, "DEVICE_LEVEL_FOR_RAM"

    .line 41
    invoke-static {v2, v0}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result v0

    .line 52
    sput v0, Lmiuix/device/DeviceUtils;->TYPE_RAM:I

    .line 53
    const-string v0, "DEVICE_LEVEL_FOR_CPU"

    .line 55
    invoke-static {v2, v0}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Integer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 63
    move-result v0

    .line 66
    sput v0, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    .line 67
    const-string v0, "DEVICE_LEVEL_FOR_GPU"

    .line 69
    invoke-static {v2, v0}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Integer;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result v0

    .line 80
    sput v0, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    .line 81
    const-string v0, "LOW_DEVICE"

    .line 83
    invoke-static {v2, v0}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result v0

    .line 94
    sput v0, Lmiuix/device/DeviceUtils;->LOW:I

    .line 95
    const-string v0, "MIDDLE_DEVICE"

    .line 97
    invoke-static {v2, v0}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/Integer;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result v0

    .line 108
    sput v0, Lmiuix/device/DeviceUtils;->MIDDLE:I

    .line 109
    const-string v0, "HIGH_DEVICE"

    .line 111
    invoke-static {v2, v0}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/Integer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 119
    move-result v0

    .line 122
    sput v0, Lmiuix/device/DeviceUtils;->HIGH:I

    .line 123
    const-string v0, "DEVICE_LEVEL_UNKNOWN"

    .line 125
    invoke-static {v2, v0}, Lmiuix/device/DeviceUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 130
    check-cast v0, Ljava/lang/Integer;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 133
    sput-boolean v4, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "initDeviceLevelInfo Fail: Exception:"

    .line 140
    const-string v2, "DeviceUtils"

    .line 142
    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 144
    :goto_0
    sget-boolean v0, Lmiuix/device/DeviceUtils;->initDeviceLevelInfo:Z

    .line 147
    return v0
    .line 149
.end method

.method public static isLiteV1StockPlus()Z
    .locals 4

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-string v0, "ro.config.low_ram.support_miuilite_plus"

    .line 6
    sget-object v1, Lmiuix/device/LiteSystemProperties;->pGet:Ljava/lang/reflect/Method;

    .line 8
    const-string v2, "false"

    .line 10
    if-eqz v1, :cond_0

    .line 12
    :try_start_0
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    move-object v2, v0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const-string v1, "key: ro.config.low_ram.support_miuilite_plus detail:"

    .line 28
    const-string v3, "LiteSystemProperties"

    .line 30
    invoke-static {v1, v0, v3}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 32
    :cond_0
    :goto_0
    const-string v0, "true"

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    move-result-object v0

    .line 44
    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    .line 45
    :cond_1
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_STOCK_PLUS:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    move-result v0

    .line 52
    return v0
    .line 53
.end method

.method public static isMiuiLiteRom()Z
    .locals 4

    .line 1
    sget-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    :try_start_0
    const-string v1, "miui.os.Build"

    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 12
    const-string v2, "IS_MIUI_LITE_VERSION"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v1

    .line 32
    sput-object v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    const-string v2, "DeviceUtils"

    .line 37
    const-string v3, "isMiuiLiteRom failed"

    .line 39
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    sput-object v0, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    .line 44
    :cond_0
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    sget-object v1, Lmiuix/device/DeviceUtils;->MIUI_LITE_ROM:Ljava/lang/Boolean;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 53
    return v0
    .line 54
.end method

.method public static isMiuiMiddle()Z
    .locals 5

    .line 1
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 2
    const/4 v1, -0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    const/4 v0, -0x1

    .line 8
    :try_start_0
    sget-object v1, Lmiuix/device/DeviceUtils;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

    .line 9
    invoke-static {}, Lmiuix/device/DeviceUtils;->getPerf()Ljava/lang/Object;

    .line 11
    move-result-object v3

    .line 14
    new-array v4, v2, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v1

    .line 28
    sput v1, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    sput v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string v3, "getMiuiMiddleVersion failed , e:"

    .line 40
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v3, "DeviceUtils"

    .line 45
    invoke-static {v1, v0, v3}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 47
    :cond_1
    :goto_0
    sget v0, Lmiuix/device/DeviceUtils;->MIUI_MIDDLE_VERSION:I

    .line 50
    const/4 v1, 0x1

    .line 52
    if-lt v0, v1, :cond_2

    .line 53
    move v2, v1

    .line 55
    :cond_2
    return v2
    .line 56
.end method

.method public static parseLine([Ljava/lang/String;Ljava/util/List;Lmiuix/device/DeviceUtils$CpuInfo;)Lmiuix/device/DeviceUtils$CpuInfo;
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
    if-eqz v2, :cond_3

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    new-instance p2, Lmiuix/device/DeviceUtils$CpuInfo;

    .line 26
    invoke-direct {p2}, Lmiuix/device/DeviceUtils$CpuInfo;-><init>()V

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    move-result p0

    .line 34
    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->id:I

    .line 35
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p0

    .line 42
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    const-string v1, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

    .line 47
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    const/4 v0, 0x0

    .line 53
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 54
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 59
    new-instance v2, Ljava/io/InputStreamReader;

    .line 61
    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 63
    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 72
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    :catch_0
    move-object v0, v2

    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    move-object v0, v1

    .line 82
    goto :goto_0

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    :goto_0
    if-eqz v0, :cond_0

    .line 85
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 87
    :catch_1
    :cond_0
    throw p0

    .line 90
    :catch_2
    move-object v1, v0

    .line 91
    :catch_3
    if-eqz v1, :cond_1

    .line 92
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 94
    :catch_4
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    move-result p0

    .line 102
    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->maxFreq:I

    .line 103
    :cond_2
    check-cast p1, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_2

    .line 110
    :cond_3
    if-eqz p2, :cond_6

    .line 111
    aget-object p0, p0, v1

    .line 113
    const-string p1, "CPU implementer"

    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 117
    move-result p1

    .line 120
    if-eqz p1, :cond_4

    .line 121
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 123
    move-result p0

    .line 126
    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->implementor:I

    .line 127
    goto :goto_2

    .line 129
    :cond_4
    const-string p1, "CPU architecture"

    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 132
    move-result p1

    .line 135
    if-eqz p1, :cond_5

    .line 136
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 138
    move-result p0

    .line 141
    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->architecture:I

    .line 142
    goto :goto_2

    .line 144
    :cond_5
    const-string p1, "CPU part"

    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 147
    move-result p0

    .line 150
    if-eqz p0, :cond_6

    .line 151
    invoke-static {v0}, Lmiuix/device/DeviceUtils;->toInt(Ljava/lang/String;)I

    .line 153
    move-result p0

    .line 156
    iput p0, p2, Lmiuix/device/DeviceUtils$CpuInfo;->part:I

    .line 157
    :cond_6
    :goto_2
    return-object p2
    .line 159
.end method

.method public static toInt(Ljava/lang/String;)I
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

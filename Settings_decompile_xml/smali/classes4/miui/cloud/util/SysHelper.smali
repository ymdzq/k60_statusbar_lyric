.class public Lmiui/cloud/util/SysHelper;
.super Ljava/lang/Object;
.source "SysHelper.java"


# static fields
.field private static final IMEI_LENGTH:I = 0xf

.field private static final MEID_LENGTH:I = 0xe

.field private static final PHONE_DEVID_MIN_LENGTH:I = 0xe

.field private static final TAG:Ljava/lang/String; = "SysHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQuantityStringWithUnit(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-static {v0, p0, p1}, Lmiui/cloud/util/SysHelper;->getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getQuantityStringWithUnit(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    long-to-float p0, p1

    const p1, 0x4ccccccd    # 1.07374184E8f

    cmpl-float p1, p0, p1

    const-string p2, "%1$.2f"

    const/high16 v0, 0x44800000    # 1024.0f

    if-lez p1, :cond_0

    div-float/2addr p0, v0

    div-float/2addr p0, v0

    div-float/2addr p0, v0

    .line 84
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GB"

    goto :goto_1

    :cond_0
    const p1, 0x47cccccd

    cmpl-float p1, p0, p1

    const-string v1, "MB"

    if-lez p1, :cond_1

    div-float/2addr p0, v0

    div-float/2addr p0, v0

    .line 89
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    const-string p0, "0.1"

    goto :goto_0

    :cond_2
    const-string p0, "0"

    goto :goto_0

    .line 94
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    const/4 v0, 0x1

    const-string v1, "%s%s"

    if-ne p2, v0, :cond_3

    .line 95
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_3
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWarnIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.WARN_INVALID_DEVICE_ID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "device_id"

    .line 51
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static hasModemCapability()Z
    .locals 2

    const/4 v0, 0x0

    .line 143
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.radio.noril"

    .line 145
    invoke-static {v1, v0}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static hasSmsCapability(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasTelephonyFeature(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasVoiceCapability(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "phone"

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isVoiceCapable"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "invoke isVoiceCapable Method not found!"

    .line 125
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 v2, 0x1

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    .line 130
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Impossible: invoke isVoiceCapable error for TelephonyManager, your runtime Android SDK is lower than 22?"

    .line 135
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    return v0

    :catch_1
    const-string p0, "invoke isVoiceCapable IllegalAccessException "

    .line 132
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    return v0
.end method

.method private static isEmptyDeviceId(Ljava/lang/String;)Z
    .locals 1

    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSecondUser()Z
    .locals 1

    .line 335
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static maskHead(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .locals 4

    .line 263
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 264
    div-int p1, v0, p1

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p1, :cond_0

    .line 269
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_0
    move v3, p2

    .line 271
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maskMiddle(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .locals 4

    .line 281
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 282
    div-int p1, v0, p1

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-lt v2, p1, :cond_1

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p1, :cond_0

    goto :goto_1

    :cond_0
    move v3, p2

    goto :goto_2

    .line 287
    :cond_1
    :goto_1
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 289
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maskMiddle(Ljava/lang/CharSequence;IIC)Ljava/lang/String;
    .locals 4

    .line 295
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-lt v2, p1, :cond_1

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p2, :cond_0

    goto :goto_1

    :cond_0
    move v3, p3

    goto :goto_2

    .line 300
    :cond_1
    :goto_1
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 302
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maskTail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 331
    invoke-static {p0, v0, v1}, Lmiui/cloud/util/SysHelper;->maskTail(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maskTail(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-ltz p2, :cond_4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 317
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 319
    div-int/lit8 v1, v1, 0x5

    add-int/2addr p1, v1

    if-le p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, p1

    .line 323
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 324
    array-length p1, p0

    sub-int/2addr p1, v0

    :goto_1
    if-ltz p1, :cond_3

    array-length v0, p0

    sub-int/2addr v0, p2

    if-lt p1, v0, :cond_3

    const/16 v0, 0x3f

    .line 325
    aput-char v0, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 327
    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 309
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxMaskLength must be a non-negative integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showInvalidDeviceIdWarning(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 245
    sget-boolean p1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz p1, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 249
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lmiui/cloud/util/SysHelper$1;

    invoke-direct {v0, p0}, Lmiui/cloud/util/SysHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "SysHelper"

    const-string p1, "Can\'t get a valid device ID"

    .line 255
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    return-void
.end method

.method public static showInvalidImeiIfNeeded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .line 158
    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->validateIMEI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-static {p0, p1}, Lmiui/cloud/util/SysHelper;->showInvalidDeviceIdWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string p1, "device id is invalid"

    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showInvalidMacIfNeeded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .line 172
    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->validateMAC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-static {p0, p1}, Lmiui/cloud/util/SysHelper;->showInvalidDeviceIdWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    new-instance p0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string p1, "device id is invalid"

    invoke-direct {p0, p1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateIMEI(Ljava/lang/String;)Z
    .locals 2

    .line 185
    invoke-static {p0}, Lmiui/cloud/util/SysHelper;->isEmptyDeviceId(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 197
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xe

    if-ge p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static validateImeiChecksum(J)Z
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0xf

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    const-wide/16 v3, 0xa

    .line 209
    rem-long v5, p0, v3

    long-to-int v5, v5

    .line 210
    rem-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_0

    mul-int/lit8 v5, v5, 0x2

    .line 212
    div-int/lit8 v6, v5, 0xa

    rem-int/lit8 v5, v5, 0xa

    add-int/2addr v6, v5

    add-int/2addr v2, v6

    goto :goto_1

    :cond_0
    add-int/2addr v2, v5

    .line 218
    :goto_1
    div-long/2addr p0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 222
    :cond_1
    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_2

    move v0, v3

    :cond_2
    return v0
.end method

.method public static validateMAC(Ljava/lang/String;)Z
    .locals 0

    .line 232
    invoke-static {p0}, Lmiui/cloud/util/SysHelper;->isEmptyDeviceId(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

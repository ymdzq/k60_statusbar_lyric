.class public Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;
.super Ljava/lang/Object;
.source "HashedDeviceIdUtil.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createPseudoDeviceId()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android_pseudo_"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAndroidId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android_id_"

    .line 89
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDeviceIdHashed()Ljava/lang/String;
    .locals 1

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->legal(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 73
    invoke-static {v0}, Lcom/xiaomi/account/openauth/internal/DeviceIdHasher;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSP()Landroid/content/SharedPreferences;
    .locals 2

    .line 55
    iget-object p0, p0, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "deviceId"

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private legal(Ljava/lang/String;)Z
    .locals 0

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private loadHistoricalHashedDeviceId()Ljava/lang/String;
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->getSP()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "hashedDeviceId"

    .line 51
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private saveHistoricalHashedDeviceId(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->getSP()Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 63
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hashedDeviceId"

    .line 64
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 65
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getHashedDeviceIdNoThrow()Ljava/lang/String;
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->loadHistoricalHashedDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->legal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->getDeviceIdHashed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->saveHistoricalHashedDeviceId(Ljava/lang/String;)V

    return-object v0

    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->legal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->saveHistoricalHashedDeviceId(Ljava/lang/String;)V

    return-object v0

    .line 40
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->createPseudoDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/internal/HashedDeviceIdUtil;->saveHistoricalHashedDeviceId(Ljava/lang/String;)V

    return-object v0
.end method

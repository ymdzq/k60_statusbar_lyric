.class public Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;
.super Ljava/lang/Object;
.source "AMPassTokenUpdateUtil.java"


# static fields
.field private static final MS_PER_DAY:J


# instance fields
.field private final spUtil:Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->MS_PER_DAY:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;

    const-string v1, "passport_passtoken_update_util"

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->spUtil:Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;

    return-void
.end method

.method private checkFrequency()Z
    .locals 4

    .line 55
    invoke-direct {p0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->getSpDate()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->nowDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->getSpTimes()I

    move-result p0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

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

.method private getSpDate()J
    .locals 3

    .line 72
    iget-object p0, p0, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->spUtil:Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;

    const-string v0, "date"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSpTimes()I
    .locals 2

    .line 80
    iget-object p0, p0, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->spUtil:Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;

    const-string v0, "frequency"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private incrementFrequency()V
    .locals 4

    .line 59
    invoke-direct {p0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->getSpDate()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->nowDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->getSpTimes()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->saveSpTimes(I)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->nowDate()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->saveSpDate(J)V

    .line 63
    invoke-direct {p0, v1}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->saveSpTimes(I)V

    :goto_0
    return-void
.end method

.method private nowDate()J
    .locals 4

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->MS_PER_DAY:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private saveSpDate(J)V
    .locals 1

    .line 76
    iget-object p0, p0, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->spUtil:Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;

    const-string v0, "date"

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;->saveLong(Ljava/lang/String;J)V

    return-void
.end method

.method private saveSpTimes(I)V
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->spUtil:Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;

    const-string v0, "frequency"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/utils/SharedPreferencesUtil;->saveInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public needUpdatePassToken(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getRePassToken()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 39
    :cond_1
    const-class v2, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;

    monitor-enter v2

    .line 40
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->getMd5DigestUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getPassToken()Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 44
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 45
    invoke-direct {p0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->checkFrequency()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 46
    invoke-direct {p0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->incrementFrequency()V

    const-string p0, "AMPassTokenUpdateUtil"

    const-string p1, "need to update password in AM"

    .line 47
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    .line 50
    :cond_2
    monitor-exit v2

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

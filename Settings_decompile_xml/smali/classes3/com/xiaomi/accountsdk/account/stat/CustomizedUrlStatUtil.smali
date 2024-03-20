.class public Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;
.super Ljava/lang/Object;
.source "CustomizedUrlStatUtil.java"


# instance fields
.field private hasError:Z

.field private startTs:J

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->startTs:J

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->hasError:Z

    if-eqz p1, :cond_0

    .line 17
    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    .line 20
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->getHashedDeviceIdNoThrow()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "http://dummyurl/%s/_ver=%s&hdid=%s"

    .line 17
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->url:Ljava/lang/String;

    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "url can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public finishStat()V
    .locals 6

    .line 28
    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->hasError:Z

    if-eqz v0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->getInstance()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->url:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->startTs:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->statHttpEvent(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public startStat()V
    .locals 2

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->startTs:J

    return-void
.end method

.method public statError(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->hasError:Z

    .line 39
    invoke-static {}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->getInstance()Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 41
    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->url:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/accountsdk/account/stat/AccountStatInterface;->statHttpEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

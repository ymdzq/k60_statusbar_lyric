.class final Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;
.source "ServiceTokenUtilMiui.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;,
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;,
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnector;
    }
.end annotation


# static fields
.field private static volatile miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile xiaomiAccountAppSlhPhAvailability:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->xiaomiAccountAppSlhPhAvailability:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;-><init>()V

    return-void
.end method

.method private checkBindServiceSuccess(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)Z
    .locals 0

    .line 201
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 202
    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p0

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_REMOTE_EXCEPTION:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eq p0, p1, :cond_0

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

.method private getAMServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;
    .locals 2

    .line 197
    new-instance p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-direct {v1}, Lcom/xiaomi/passport/servicetoken/AMKeys;-><init>()V

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;-><init>(Lcom/xiaomi/passport/servicetoken/AMKeys;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;-><init>(Lcom/xiaomi/passport/servicetoken/IAMUtil;)V

    return-object p0
.end method


# virtual methods
.method public doesXiaomiAccountAppSupportServiceTokenUIResponse(Landroid/content/Context;)Z
    .locals 5

    const-string v0, ""

    const-string v1, "ServiceTokenUtilMiui"

    .line 96
    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 100
    :cond_0
    new-instance v2, Lcom/xiaomi/accountsdk/futureservice/SimpleClientFuture;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/futureservice/SimpleClientFuture;-><init>()V

    .line 101
    new-instance v4, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$3;

    invoke-direct {v4, p0, p1, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$3;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    .line 106
    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->bind()Z

    .line 108
    :try_start_0
    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 113
    invoke-static {v1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :catch_1
    move-exception p0

    .line 110
    invoke-static {v1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public getServiceTokenImpl(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 8

    if-eqz p2, :cond_0

    const-string v0, "weblogin:"

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->hasWebLoginCompatIssue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->getAMServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->getServiceTokenImpl(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;-><init>(Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;)V

    .line 45
    new-instance v7, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Ljava/lang/String;Landroid/content/Context;)V

    .line 51
    invoke-virtual {v7}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->bind()Z

    .line 53
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->checkBindServiceSuccess(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p0

    return-object p0

    .line 56
    :cond_1
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->getAMServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->getServiceTokenImpl(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p0

    return-object p0
.end method

.method public invalidateServiceTokenImpl(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    .line 65
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;-><init>(Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;)V

    .line 68
    new-instance v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V

    .line 83
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector;->bind()Z

    .line 85
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->checkBindServiceSuccess(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p0

    return-object p0

    .line 88
    :cond_0
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->getAMServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->invalidateServiceTokenImpl(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p0

    return-object p0
.end method

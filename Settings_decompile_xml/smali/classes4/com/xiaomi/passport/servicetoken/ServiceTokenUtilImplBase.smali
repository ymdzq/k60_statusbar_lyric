.class abstract Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;
.super Ljava/lang/Object;
.source "ServiceTokenUtilImplBase.java"

# interfaces
.implements Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;
    }
.end annotation


# static fields
.field private static volatile executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "ServiceTokenUtilImplBase"

    .line 13
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/PassportExecutors;->newFixedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Executor;
    .locals 1

    .line 11
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public final getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 1

    .line 27
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$1;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;->work()Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getServiceTokenImpl(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method

.method public final invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 1

    .line 38
    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$2;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V

    .line 43
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase$MyWorker;->work()Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p0

    return-object p0
.end method

.method protected abstract invalidateServiceTokenImpl(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method

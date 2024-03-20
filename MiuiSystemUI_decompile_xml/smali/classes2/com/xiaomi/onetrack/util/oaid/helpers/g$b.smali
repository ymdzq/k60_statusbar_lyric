.class public final Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/util/oaid/helpers/g;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/util/oaid/helpers/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;

    .line 2
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;->a:Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    .line 4
    invoke-direct {p2, p1, p3}, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 9
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    const-wide/16 v0, 0x1

    .line 13
    invoke-virtual {p0, p2, v0, v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    goto :goto_0

    .line 23
    :catch_1
    move-exception p0

    .line 24
    const-string p1, "MsaSDKHelper"

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_0
    const/4 p0, 0x0

    .line 34
    return-object p0
    .line 35
.end method

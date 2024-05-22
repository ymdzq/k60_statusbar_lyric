.class public final Lcom/xiaomi/onetrack/util/oaid/helpers/g;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    :try_start_0
    const-string v1, "com.bun.miitmdid.core.MdidSdkHelper"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 9
    const-string v2, "com.bun.supplier.IIdentifierListener"

    .line 10
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 15
    new-instance v3, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;

    .line 16
    invoke-direct {v3, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/g;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 21
    move-result-object v4

    .line 24
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 25
    move-result-object v5

    .line 28
    invoke-static {v4, v5, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    const-string v4, "InitSdk"

    .line 33
    const/4 v5, 0x3

    .line 35
    new-array v6, v5, [Ljava/lang/Class;

    .line 36
    const-class v7, Landroid/content/Context;

    .line 38
    const/4 v8, 0x0

    .line 40
    aput-object v7, v6, v8

    .line 41
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 43
    const/4 v9, 0x1

    .line 45
    aput-object v7, v6, v9

    .line 46
    const/4 v7, 0x2

    .line 48
    aput-object v2, v6, v7

    .line 49
    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    move-result-object v2

    .line 54
    new-array v4, v5, [Ljava/lang/Object;

    .line 55
    aput-object p1, v4, v8

    .line 57
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    aput-object p1, v4, v9

    .line 61
    aput-object v3, v4, v7

    .line 63
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 68
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 70
    const-wide/16 v1, 0x1

    .line 72
    invoke-virtual {p0, v1, v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 77
    check-cast p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;

    .line 78
    if-eqz p0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;->c:[Ljava/lang/Object;

    .line 82
    aget-object p1, p0, v9

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    move-result-object p1

    .line 89
    const-string v1, "getOAID"

    .line 90
    new-array v2, v8, [Ljava/lang/Class;

    .line 92
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 94
    move-result-object p1

    .line 97
    aget-object p0, p0, v9

    .line 98
    new-array v1, v8, [Ljava/lang/Object;

    .line 100
    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    move-object v0, p0

    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    const-string p1, "MsaSDKHelper"

    .line 113
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-object v0
    .line 122
.end method

.class public abstract Lcom/xiaomi/onetrack/util/n;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static final e:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    sput-object v1, Lcom/xiaomi/onetrack/util/n;->b:Ljava/lang/Object;

    .line 12
    const-string v1, "getUDID"

    .line 14
    const/4 v2, 0x1

    .line 16
    new-array v3, v2, [Ljava/lang/Class;

    .line 17
    const-class v4, Landroid/content/Context;

    .line 19
    const/4 v5, 0x0

    .line 21
    aput-object v4, v3, v5

    .line 22
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    const-string v1, "getOAID"

    .line 27
    new-array v3, v2, [Ljava/lang/Class;

    .line 29
    const-class v4, Landroid/content/Context;

    .line 31
    aput-object v4, v3, v5

    .line 33
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    move-result-object v1

    .line 38
    sput-object v1, Lcom/xiaomi/onetrack/util/n;->e:Ljava/lang/reflect/Method;

    .line 39
    const-string v1, "getVAID"

    .line 41
    new-array v3, v2, [Ljava/lang/Class;

    .line 43
    const-class v4, Landroid/content/Context;

    .line 45
    aput-object v4, v3, v5

    .line 47
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    const-string v1, "getAAID"

    .line 52
    new-array v2, v2, [Ljava/lang/Class;

    .line 54
    const-class v3, Landroid/content/Context;

    .line 56
    aput-object v3, v2, v5

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "IdentifierManager"

    .line 65
    const-string v2, "reflect exception!"

    .line 67
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :goto_0
    return-void
    .line 72
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/n;->b:Ljava/lang/Object;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/xiaomi/onetrack/util/n;->e:Ljava/lang/reflect/Method;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    :try_start_0
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string v0, "IdentifierManager"

    .line 24
    const-string v1, "invoke exception!"

    .line 26
    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :cond_0
    const-string p0, ""

    .line 31
    :goto_0
    return-object p0
    .line 33
.end method

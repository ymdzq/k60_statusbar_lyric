.class public abstract Lcom/xiaomi/onetrack/f/a;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static a:Landroid/content/Context; = null

.field public static b:Landroid/content/Context; = null

.field public static c:I = 0x0

.field public static d:Ljava/lang/String; = null

.field public static e:Ljava/lang/String; = null

.field public static f:J = 0x0L

.field public static volatile g:Z = false


# direct methods
.method public static a()Landroid/content/Context;
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/j;->e(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    if-eqz v0, :cond_3

    .line 10
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    return-object v0

    .line 16
    :cond_0
    const-class v0, Lcom/xiaomi/onetrack/f/a;

    .line 17
    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    .line 20
    if-nez v1, :cond_2

    .line 22
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 24
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/j;->e(Landroid/content/Context;)Z

    .line 26
    move-result v2

    .line 29
    const-string v3, "FbeUtil"

    .line 30
    if-eqz v2, :cond_1

    .line 32
    const-string v2, "getSafeContext return origin ctx"

    .line 34
    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    const-string v2, "getSafeContext , create the safe ctx"

    .line 40
    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 45
    move-result-object v1

    .line 48
    :goto_0
    sput-object v1, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    .line 49
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    .line 52
    return-object v0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw v1

    .line 57
    :cond_3
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 58
    return-object v0
    .line 60
.end method

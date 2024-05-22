.class public final Lcom/xiaomi/onetrack/util/oaid/a;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static volatile b:Lcom/xiaomi/onetrack/util/oaid/a;


# instance fields
.field public volatile d:Ljava/lang/String;

.field public volatile g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:I

    .line 10
    return-void
    .line 12
.end method

.method public static a()Lcom/xiaomi/onetrack/util/oaid/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/xiaomi/onetrack/util/oaid/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/xiaomi/onetrack/util/oaid/a;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/oaid/a;-><init>()V

    sput-object v1, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/a;->b:Lcom/xiaomi/onetrack/util/oaid/a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 9
    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-nez p0, :cond_1

    const-string p0, "a"

    const-string p1, "getOaid() throw exception : Don\'t use it on the main thread"

    .line 10
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    .line 11
    monitor-exit v0

    return-object p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t use it on the main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 15
    :cond_3
    iget v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    if-eqz v3, :cond_5

    const-string p1, "a"

    const-string v1, "isNotAllowedGetOaid"

    .line 16
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 18
    :cond_5
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    .line 20
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:I

    .line 21
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 22
    :cond_6
    new-instance v1, Lcom/xiaomi/onetrack/util/oaid/helpers/g;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/util/oaid/helpers/g;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, ""

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 24
    iput-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    .line 25
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:I

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 27
    :cond_7
    :try_start_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {p1, v1}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "b"

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    :goto_2
    if-eqz p1, :cond_8

    const-string v1, ""

    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 31
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    .line 32
    iget v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:I

    .line 33
    monitor-exit v0

    return-object p1

    .line 34
    :cond_8
    iget p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/xiaomi/onetrack/util/oaid/a;->g:I

    .line 35
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/a;->d:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

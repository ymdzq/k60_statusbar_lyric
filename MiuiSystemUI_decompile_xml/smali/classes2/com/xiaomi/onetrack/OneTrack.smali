.class public final Lcom/xiaomi/onetrack/OneTrack;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static b:Z


# instance fields
.field public final d:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    sget-boolean v1, Lcom/xiaomi/onetrack/f/a;->g:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto :goto_1

    .line 13
    :cond_0
    const-class v1, Lcom/xiaomi/onetrack/f/a;

    .line 14
    monitor-enter v1

    .line 16
    :try_start_0
    sget-boolean v2, Lcom/xiaomi/onetrack/f/a;->g:Z

    .line 17
    if-eqz v2, :cond_1

    .line 19
    monitor-exit v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sput-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object v0

    .line 28
    sget-object v2, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 36
    move-result-object v0

    .line 39
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 40
    sput v2, Lcom/xiaomi/onetrack/f/a;->c:I

    .line 42
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 44
    sput-object v2, Lcom/xiaomi/onetrack/f/a;->d:Ljava/lang/String;

    .line 46
    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 48
    sput-wide v2, Lcom/xiaomi/onetrack/f/a;->f:J

    .line 50
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 57
    sput-object v0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 62
    :goto_0
    const/4 v0, 0x1

    .line 65
    sput-boolean v0, Lcom/xiaomi/onetrack/f/a;->g:Z

    .line 66
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :goto_1
    new-instance v0, Lcom/xiaomi/onetrack/api/m;

    .line 69
    invoke-direct {v0, p1, p2}, Lcom/xiaomi/onetrack/api/m;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    .line 71
    iput-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    .line 74
    new-instance p0, Lcom/xiaomi/onetrack/DefaultEventHook;

    .line 76
    invoke-direct {p0}, Lcom/xiaomi/onetrack/DefaultEventHook;-><init>()V

    .line 78
    iput-object p0, v0, Lcom/xiaomi/onetrack/api/m;->h:Lcom/xiaomi/onetrack/DefaultEventHook;

    .line 81
    iget-object p0, v0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    return-void

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    throw p0
    .line 91
.end method


# virtual methods
.method public final track(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    new-instance v1, Lcom/xiaomi/onetrack/api/af;

    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/af;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method

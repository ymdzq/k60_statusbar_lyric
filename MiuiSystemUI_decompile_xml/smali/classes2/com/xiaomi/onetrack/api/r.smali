.class public final Lcom/xiaomi/onetrack/api/r;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/m;

.field public b:I

.field public c:I

.field public d:J

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/xiaomi/onetrack/api/r;->c:I

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    move-result v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/xiaomi/onetrack/api/r;->d:J

    .line 14
    sub-long/2addr v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 27
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    sget-object v3, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 33
    new-instance v4, Lcom/xiaomi/onetrack/api/u;

    .line 35
    invoke-direct {v4, p0, v2, v0, v1}, Lcom/xiaomi/onetrack/api/u;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;J)V

    .line 37
    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 42
    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 45
    if-eqz p0, :cond_1

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    const-string v0, "onActivityPaused:"

    .line 51
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    const-string p1, "OneTrackImp"

    .line 67
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    return-void
    .line 72
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    .line 2
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/r;->f:Z

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v2, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 9
    new-instance v3, Lcom/xiaomi/onetrack/api/v;

    .line 11
    invoke-direct {v3, v0, v1}, Lcom/xiaomi/onetrack/api/v;-><init>(Lcom/xiaomi/onetrack/api/m;Z)V

    .line 13
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 18
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 21
    move-result v0

    .line 24
    iput v0, p0, Lcom/xiaomi/onetrack/api/r;->c:I

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lcom/xiaomi/onetrack/api/r;->d:J

    .line 31
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 42
    iget-boolean v2, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    sget-object v3, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 48
    new-instance v4, Lcom/xiaomi/onetrack/api/t;

    .line 50
    invoke-direct {v4, v0, v1, v2}, Lcom/xiaomi/onetrack/api/t;-><init>(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;Z)V

    .line 52
    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 55
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 57
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 60
    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "onActivityResumed:"

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string p1, " isAppStart:"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-boolean p1, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 91
    const-string v0, "OneTrackImp"

    .line 92
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    .line 98
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    sget-object p1, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 105
    new-instance v0, Lcom/xiaomi/onetrack/api/s;

    .line 107
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/s;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    .line 109
    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 112
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 114
    return-void
    .line 117
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    .line 8
    iget-object v0, v0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 10
    invoke-interface {v0, v2}, Lcom/xiaomi/onetrack/api/j;->a(I)V

    .line 12
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    .line 15
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/r;->f:Z

    .line 17
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->f:Ljava/lang/reflect/Method;

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    .line 22
    :goto_0
    iget v0, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    .line 24
    add-int/2addr v0, v2

    .line 26
    iput v0, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    const-string v0, "onActivityStarted: "

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    const-string p1, "OneTrackImp"

    .line 47
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
    .line 52
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    .line 2
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/xiaomi/onetrack/api/r;->b:I

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    .line 11
    iget-object v0, v0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 13
    const/4 v3, 0x2

    .line 15
    invoke-interface {v0, v3}, Lcom/xiaomi/onetrack/api/j;->a(I)V

    .line 16
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    sget-boolean v3, Lcom/xiaomi/onetrack/c/i;->l:Z

    .line 24
    if-nez v3, :cond_1

    .line 26
    sget-boolean v3, Lcom/xiaomi/onetrack/c/i;->k:Z

    .line 28
    if-nez v3, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    move v3, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    move v3, v2

    .line 35
    :goto_1
    if-eqz v3, :cond_2

    .line 36
    sget-object v3, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v4, Lcom/xiaomi/onetrack/api/ad;

    .line 40
    invoke-direct {v4, v0}, Lcom/xiaomi/onetrack/api/ad;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    .line 42
    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 47
    :cond_2
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/r;->f:Z

    .line 50
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/r;->e:Z

    .line 52
    goto :goto_2

    .line 54
    :cond_3
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/r;->f:Z

    .line 55
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->a:Lcom/xiaomi/onetrack/api/m;

    .line 57
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/r;->f:Z

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    sget-object v1, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v2, Lcom/xiaomi/onetrack/api/v;

    .line 66
    invoke-direct {v2, v0, p0}, Lcom/xiaomi/onetrack/api/v;-><init>(Lcom/xiaomi/onetrack/api/m;Z)V

    .line 68
    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "onActivityStopped: "

    .line 78
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 93
    const-string p1, "OneTrackImp"

    .line 94
    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
    .line 99
.end method

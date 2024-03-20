.class public Lmiui/cloud/common/XBroadcast;
.super Ljava/lang/Object;
.source "XBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XBroadcast$BroadcastResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static syncSendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Lmiui/cloud/common/XBroadcast$BroadcastResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 32
    :try_start_0
    invoke-static {p0, p1, p2, v0, v1}, Lmiui/cloud/common/XBroadcast;->syncSendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Lmiui/cloud/common/XBroadcast$BroadcastResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 34
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Never reach here. "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static syncSendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Lmiui/cloud/common/XBroadcast$BroadcastResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lmiui/cloud/common/XBroadcast;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 47
    new-instance v2, Lmiui/cloud/common/XWrapper;

    invoke-direct {v2}, Lmiui/cloud/common/XWrapper;-><init>()V

    .line 48
    new-instance v6, Lmiui/cloud/common/XBroadcast$1;

    invoke-direct {v6, v2, v1}, Lmiui/cloud/common/XBroadcast$1;-><init>(Lmiui/cloud/common/XWrapper;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-gez p0, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_0

    .line 62
    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p3, p4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 67
    :goto_0
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 70
    invoke-virtual {v2}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/cloud/common/XBroadcast$BroadcastResult;

    return-object p0

    .line 63
    :cond_1
    :try_start_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 67
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 68
    throw p0
.end method

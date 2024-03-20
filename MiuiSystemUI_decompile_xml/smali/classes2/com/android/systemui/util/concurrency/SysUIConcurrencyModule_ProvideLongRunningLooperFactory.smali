.class public abstract Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLongRunningLooperFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideLongRunningLooper()Landroid/os/Looper;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->BG_SLOW_DISPATCH_THRESHOLD:Ljava/lang/Long;

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    .line 4
    const-string v1, "SysUiLng"

    .line 6
    const/16 v2, 0xa

    .line 8
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 13
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    move-result-object v1

    .line 19
    sget-object v2, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->LONG_SLOW_DISPATCH_THRESHOLD:Ljava/lang/Long;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide v2

    .line 25
    sget-object v4, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->LONG_SLOW_DELIVERY_THRESHOLD:Ljava/lang/Long;

    .line 26
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 28
    move-result-wide v4

    .line 31
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 32
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 35
    move-result-object v0

    .line 38
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 39
    return-object v0
    .line 42
.end method

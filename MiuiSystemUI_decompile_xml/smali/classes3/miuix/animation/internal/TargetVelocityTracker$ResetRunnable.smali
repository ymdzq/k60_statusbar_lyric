.class Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mMonitorInfo:Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

.field mProperty:Lmiuix/animation/property/FloatProperty;

.field mTargetRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mMonitorInfo:Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public post(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 2
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    if-eq v0, p1, :cond_1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 17
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    iput-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    .line 22
    :cond_1
    iput-object p2, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 24
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 26
    const-wide/16 v0, 0x258

    .line 28
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    return-void
    .line 33
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v1, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 12
    filled-new-array {v1}, [Lmiuix/animation/property/FloatProperty;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    iget-object v1, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 24
    const-wide/16 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    .line 28
    :cond_0
    iget-object p0, p0, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->mMonitorInfo:Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    .line 31
    iget-object p0, p0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 33
    invoke-virtual {p0}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    .line 35
    :cond_1
    return-void
    .line 38
.end method

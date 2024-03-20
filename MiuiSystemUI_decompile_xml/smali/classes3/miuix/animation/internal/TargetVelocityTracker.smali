.class public Lmiuix/animation/internal/TargetVelocityTracker;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mMonitors:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    .line 10
    return-void
    .line 12
.end method

.method private getMonitor(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;-><init>(Lmiuix/animation/internal/TargetVelocityTracker$1;)V

    .line 15
    iget-object p0, p0, Lmiuix/animation/internal/TargetVelocityTracker;->mMonitors:Ljava/util/Map;

    .line 18
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    return-object v0
    .line 23
.end method


# virtual methods
.method public trackVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lmiuix/animation/internal/TargetVelocityTracker;->getMonitor(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;

    .line 2
    move-result-object p0

    .line 5
    iget-object v0, p0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 6
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [D

    .line 9
    const/4 v2, 0x0

    .line 11
    aput-wide p3, v1, v2

    .line 12
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    .line 14
    iget-object p3, p0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->monitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 17
    invoke-virtual {p3, v2}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    .line 19
    move-result p3

    .line 22
    const/4 p4, 0x0

    .line 23
    cmpl-float p4, p3, p4

    .line 24
    if-eqz p4, :cond_0

    .line 26
    iget-object p0, p0, Lmiuix/animation/internal/TargetVelocityTracker$MonitorInfo;->resetTask:Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;

    .line 28
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/internal/TargetVelocityTracker$ResetRunnable;->post(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)V

    .line 30
    float-to-double p3, p3

    .line 33
    invoke-virtual {p1, p2, p3, p4}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.class public final Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/controls/ControlsMetricsLogger;


# instance fields
.field public instanceId:I

.field public final instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/internal/logging/InstanceIdSequence;

    .line 5
    const/16 v1, 0x2000

    .line 7
    invoke-direct {v0, v1}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final drag(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_DRAG:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    .line 8
    move-result v1

    .line 11
    iget p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    .line 12
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    .line 14
    return-void
    .line 17
.end method

.method public final log(IIIZ)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceId:I

    .line 2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 4
    move-result-object v0

    .line 7
    const/16 v1, 0x15d

    .line 8
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 10
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 13
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 16
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 19
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 22
    const/4 p0, 0x1

    .line 25
    invoke-virtual {v0, p0, p0}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 26
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 29
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 32
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 35
    move-result-object p0

    .line 38
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 39
    return-void
    .line 42
.end method

.method public final longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_LONG_PRESS:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    .line 8
    move-result v1

    .line 11
    iget p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    .line 12
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    .line 14
    return-void
    .line 17
.end method

.method public final refreshBegin(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 2
    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 8
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->instanceId:I

    .line 12
    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_BEGIN:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    .line 16
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    .line 21
    return-void
    .line 24
.end method

.method public final refreshEnd(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_REFRESH_END:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    .line 8
    move-result v1

    .line 11
    iget p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    .line 12
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    .line 14
    return-void
    .line 17
.end method

.method public final touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->CONTROL_TOUCH:Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsMetricsLogger$ControlsEvents;->getId()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    .line 8
    move-result v1

    .line 11
    iget p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uid:I

    .line 12
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl;->log(IIIZ)V

    .line 14
    return-void
    .line 17
.end method

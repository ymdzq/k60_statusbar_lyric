.class public final Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# instance fields
.field public final listeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ScreenLifecycle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;->listeners:Ljava/util/List;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;->listeners:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final onScreenTurnedOn()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;->listeners:Ljava/util/List;

    .line 8
    if-eqz v2, :cond_1

    .line 10
    const-string v2, "LifecycleScreenStatusProvider#onScreenTurnedOn"

    .line 12
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    .line 31
    invoke-virtual {v2}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 37
    goto :goto_2

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 42
    throw p0

    .line 45
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object p0

    .line 49
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    .line 60
    invoke-virtual {v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;->onScreenTurnedOn()V

    .line 62
    goto :goto_1

    .line 65
    :cond_2
    :goto_2
    return-void
    .line 66
.end method

.method public final onScreenTurningOff()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;->listeners:Ljava/util/List;

    .line 8
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_1

    .line 11
    const-string v2, "LifecycleScreenStatusProvider#onScreenTurningOff"

    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    :try_start_0
    check-cast p0, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    .line 34
    iget-object v2, v2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 36
    iput-boolean v3, v2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isScreenOn:Z

    .line 38
    iget-object v2, v2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    .line 40
    invoke-interface {v2}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 46
    goto :goto_2

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    throw p0

    .line 54
    :cond_1
    check-cast p0, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p0

    .line 60
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    .line 71
    iget-object v0, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 73
    iput-boolean v3, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isScreenOn:Z

    .line 75
    iget-object v0, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    .line 77
    invoke-interface {v0}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->stop()V

    .line 79
    goto :goto_1

    .line 82
    :cond_2
    :goto_2
    return-void
    .line 83
.end method

.method public final onScreenTurningOn()V
    .locals 5

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;->listeners:Ljava/util/List;

    .line 8
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_2

    .line 11
    const-string v2, "LifecycleScreenStatusProvider#onScreenTurningOn"

    .line 13
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    :try_start_0
    check-cast p0, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    .line 34
    iget-object v2, v2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 36
    iput-boolean v3, v2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isScreenOn:Z

    .line 38
    iget-boolean v4, v2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isFolded:Z

    .line 40
    iget-object v2, v2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    .line 42
    if-nez v4, :cond_0

    .line 44
    invoke-interface {v2}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->start()V

    .line 46
    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v2}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 54
    goto :goto_2

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 59
    throw p0

    .line 62
    :cond_2
    check-cast p0, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object p0

    .line 68
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 78
    check-cast v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    .line 79
    iget-object v0, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 81
    iput-boolean v3, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isScreenOn:Z

    .line 83
    iget-boolean v1, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isFolded:Z

    .line 85
    iget-object v0, v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    .line 87
    if-nez v1, :cond_3

    .line 89
    invoke-interface {v0}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->start()V

    .line 91
    goto :goto_1

    .line 94
    :cond_3
    invoke-interface {v0}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->stop()V

    .line 95
    goto :goto_1

    .line 98
    :cond_4
    :goto_2
    return-void
    .line 99
.end method

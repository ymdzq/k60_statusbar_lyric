.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;


# instance fields
.field public animationState:I

.field public final chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

.field public final coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public hasPersistentDot:Z

.field public final listeners:Ljava/util/Set;

.field public scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

.field public final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 13
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 15
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->listeners:Ljava/util/Set;

    .line 20
    iput-object p0, p1, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->scheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 22
    sget-object p1, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 24
    const-string p2, "SystemStatusAnimationSchedulerLegacyImpl"

    .line 26
    invoke-virtual {p4, p2, p0, p1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 28
    return-void
    .line 31
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 2
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->listeners:Ljava/util/Set;

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->settingsManager:Lcom/miui/systemui/SettingsManager;

    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->miuiOptimizationChangedListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$miuiOptimizationChangedListener$1;

    .line 26
    invoke-virtual {v1, v2}, Lcom/miui/systemui/SettingsManager;->registerMiuiOptimizationListener(Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;)V

    .line 28
    iget-boolean v1, v1, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->miuiOptimization:Z

    .line 33
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
    .line 38
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "Scheduled event: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->hasPersistentDot:Z

    .line 21
    const-string v0, "Has persistent privacy dot: "

    .line 23
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 25
    iget p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->animationState:I

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "Animation state: "

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    const-string p2, "Listeners:"

    .line 47
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->listeners:Ljava/util/Set;

    .line 52
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 54
    move-result p2

    .line 57
    if-eqz p2, :cond_0

    .line 58
    const-string p0, "(none)"

    .line 60
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    goto :goto_1

    .line 65
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object p0

    .line 69
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result p2

    .line 73
    if-eqz p2, :cond_1

    .line 74
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object p2

    .line 79
    check-cast p2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "  "

    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    goto :goto_0

    .line 99
    :cond_1
    :goto_1
    return-void
    .line 100
.end method

.method public final notifyTransitionToPersistentDot()Landroidx/core/animation/AnimatorSet;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->listeners:Ljava/util/Set;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 23
    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 25
    if-eqz v3, :cond_0

    .line 27
    invoke-interface {v3}, Lcom/android/systemui/statusbar/events/StatusEvent;->getContentDescription()Ljava/lang/String;

    .line 29
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    move-result p0

    .line 39
    xor-int/lit8 p0, p0, 0x1

    .line 40
    if-eqz p0, :cond_2

    .line 42
    new-instance p0, Landroidx/core/animation/AnimatorSet;

    .line 44
    invoke-direct {p0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    .line 46
    invoke-virtual {p0, v1}, Landroidx/core/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 49
    return-object p0

    .line 52
    :cond_2
    const/4 p0, 0x0

    .line 53
    return-object p0
    .line 54
.end method

.method public final onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 2
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v0

    .line 12
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    .line 13
    move-result-wide v2

    .line 16
    sub-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x1388

    .line 18
    cmp-long v0, v0, v2

    .line 20
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-gez v0, :cond_0

    .line 24
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v1

    .line 28
    :goto_0
    if-nez v0, :cond_8

    .line 29
    const-string v0, "enable_immersive_indicator"

    .line 31
    const-string v3, "privacy"

    .line 33
    invoke-static {v3, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 35
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    goto/16 :goto_2

    .line 41
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 43
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    .line 46
    move-result v0

    .line 49
    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 50
    if-eqz v3, :cond_2

    .line 52
    invoke-interface {v3}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    .line 54
    move-result v3

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v3, -0x1

    .line 59
    :goto_1
    if-le v0, v3, :cond_5

    .line 60
    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->animationState:I

    .line 62
    const/4 v3, 0x4

    .line 64
    if-eq v0, v3, :cond_5

    .line 65
    const/4 v3, 0x5

    .line 67
    if-eq v0, v3, :cond_5

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 70
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    .line 72
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->hasPersistentDot:Z

    .line 78
    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getShowAnimation()Z

    .line 80
    move-result v0

    .line 83
    if-nez v0, :cond_4

    .line 84
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    .line 86
    move-result p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->notifyTransitionToPersistentDot()Landroidx/core/animation/AnimatorSet;

    .line 92
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 96
    goto :goto_2

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 99
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getViewCreator()Lkotlin/jvm/functions/Function1;

    .line 104
    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 108
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->prepareChipAnimation(Lkotlin/jvm/functions/Function1;)V

    .line 110
    iput v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->animationState:I

    .line 113
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;

    .line 115
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$scheduleEvent$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;I)V

    .line 117
    const-wide/16 v0, 0x64

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 122
    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 124
    goto :goto_2

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 128
    if-eqz v0, :cond_6

    .line 130
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z

    .line 132
    move-result v0

    .line 135
    if-ne v0, v2, :cond_6

    .line 136
    move v1, v2

    .line 138
    :cond_6
    if-eqz v1, :cond_8

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 141
    if-eqz v0, :cond_7

    .line 143
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    .line 145
    :cond_7
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    .line 148
    move-result p1

    .line 151
    if-eqz p1, :cond_8

    .line 152
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->hasPersistentDot:Z

    .line 154
    iget p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->animationState:I

    .line 156
    if-nez p1, :cond_8

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->notifyTransitionToPersistentDot()Landroidx/core/animation/AnimatorSet;

    .line 160
    :cond_8
    :goto_2
    return-void
    .line 163
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 2
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->listeners:Ljava/util/Set;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->privacyStateListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$privacyStateListener$1;

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 24
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->settingsManager:Lcom/miui/systemui/SettingsManager;

    .line 27
    iget-object p1, p1, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    .line 29
    check-cast p1, Ljava/util/ArrayList;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->miuiOptimizationChangedListener:Lcom/android/systemui/statusbar/events/SystemEventCoordinator$miuiOptimizationChangedListener$1;

    .line 33
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    return-void
    .line 38
.end method

.method public final removePersistentDot()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->hasPersistentDot:Z

    .line 2
    if-eqz v0, :cond_3

    .line 4
    const-string v0, "enable_immersive_indicator"

    .line 6
    const-string v1, "privacy"

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->hasPersistentDot:Z

    .line 19
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->listeners:Ljava/util/Set;

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->animationState:I

    .line 48
    const/4 v4, 0x5

    .line 50
    if-ne v1, v4, :cond_2

    .line 51
    iput v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->animationState:I

    .line 53
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    move-result p0

    .line 58
    xor-int/2addr p0, v2

    .line 59
    if-eqz p0, :cond_3

    .line 60
    new-instance p0, Landroidx/core/animation/AnimatorSet;

    .line 62
    invoke-direct {p0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    .line 64
    invoke-virtual {p0, v3}, Landroidx/core/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 67
    :cond_3
    :goto_1
    return-void
.end method

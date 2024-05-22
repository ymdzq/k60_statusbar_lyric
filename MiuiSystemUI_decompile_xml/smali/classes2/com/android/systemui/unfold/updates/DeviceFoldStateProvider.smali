.class public final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldStateProvider;


# instance fields
.field public final activityTypeProvider:Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

.field public final context:Landroid/content/Context;

.field public final foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;

.field public final foldStateListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

.field public final halfOpenedTimeoutMillis:I

.field public final handler:Landroid/os/Handler;

.field public final hingeAngleListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

.field public final hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

.field public isFolded:Z

.field public isScreenOn:Z

.field public isUnfoldHandled:Z

.field public lastFoldUpdate:Ljava/lang/Integer;

.field public lastHingeAngle:F

.field public lastHingeAngleBeforeTransition:F

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final outputListeners:Ljava/util/List;

.field public final rotationChangeProvider:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

.field public final rotationListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$rotationListener$1;

.field public final screenListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

.field public final screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

.field public final timeoutRunnable:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;

.field public final unfoldKeyguardVisibilityProvider:Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Lcom/android/systemui/unfold/updates/FoldProvider;Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;Lcom/android/systemui/unfold/updates/RotationChangeProvider;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->activityTypeProvider:Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->unfoldKeyguardVisibilityProvider:Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    .line 13
    iput-object p7, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->rotationChangeProvider:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 15
    iput-object p8, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->context:Landroid/content/Context;

    .line 17
    iput-object p9, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 19
    iput-object p10, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->handler:Landroid/os/Handler;

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    .line 23
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/List;

    .line 28
    new-instance p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

    .line 30
    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    .line 32
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

    .line 35
    new-instance p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    .line 37
    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    .line 39
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    .line 42
    new-instance p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

    .line 44
    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    .line 46
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->foldStateListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

    .line 49
    new-instance p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;

    .line 51
    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    .line 53
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->timeoutRunnable:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;

    .line 56
    new-instance p2, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$rotationListener$1;

    .line 58
    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$rotationListener$1;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    .line 60
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->rotationListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$rotationListener$1;

    .line 63
    iget-object p1, p1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->halfFoldedTimeoutMillis$delegate:Lkotlin/Lazy;

    .line 65
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 70
    check-cast p1, Ljava/lang/Number;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 73
    move-result p1

    .line 76
    iput p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->halfOpenedTimeoutMillis:I

    .line 77
    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isUnfoldHandled:Z

    .line 80
    return-void
    .line 82
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final isTransitionInProgress()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    .line 14
    if-nez p0, :cond_1

    .line 16
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result p0

    .line 22
    if-ne p0, v1, :cond_2

    .line 23
    goto :goto_2

    .line 25
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 26
    :cond_3
    :goto_2
    return v1
    .line 27
.end method

.method public final notifyFoldUpdate(FI)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {p2}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;->name(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "DeviceFoldProvider"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    .line 15
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/List;

    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    .line 35
    invoke-interface {v2, p2}, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;->onFoldUpdate(I)V

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastFoldUpdate:Ljava/lang/Integer;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isTransitionInProgress()Z

    .line 47
    move-result p2

    .line 50
    if-eq v0, p2, :cond_2

    .line 51
    iput p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngleBeforeTransition:F

    .line 53
    :cond_2
    return-void
    .line 55
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/unfold/updates/FoldStateProvider$FoldUpdatesListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->outputListeners:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->foldProvider:Lcom/android/systemui/unfold/updates/FoldProvider;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->foldStateListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$FoldStateListener;

    .line 6
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/unfold/updates/FoldProvider;->registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenStatusProvider:Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    .line 11
    check-cast v0, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->screenListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;->addCallback(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$HingeAngleListener;

    .line 22
    invoke-interface {v0, v1}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->rotationChangeProvider:Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v1, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;

    .line 32
    iget-object v2, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->rotationListener:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$rotationListener$1;

    .line 34
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/unfold/updates/RotationChangeProvider$addCallback$1;-><init>(Lcom/android/systemui/unfold/updates/RotationChangeProvider;Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationListener;)V

    .line 36
    iget-object v0, v0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->mainHandler:Landroid/os/Handler;

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->activityTypeProvider:Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;->activityManager:Landroid/app/ActivityManager;

    .line 46
    :try_start_0
    const-string v1, "isOnHomeActivity"

    .line 48
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 54
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 63
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 64
    if-eqz v0, :cond_1

    .line 66
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 68
    const/4 v2, 0x2

    .line 70
    if-ne v0, v2, :cond_0

    .line 71
    goto :goto_0

    .line 73
    :cond_0
    const/4 v1, 0x0

    .line 74
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const/4 v0, 0x0

    .line 80
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    iput-object v0, p0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;->_isHomeActivity:Ljava/lang/Boolean;

    .line 84
    sget-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 86
    iget-object p0, p0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;->taskStackChangeListener:Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider$taskStackChangeListener$1;

    .line 88
    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 90
    return-void

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 95
    throw p0
    .line 98
.end method

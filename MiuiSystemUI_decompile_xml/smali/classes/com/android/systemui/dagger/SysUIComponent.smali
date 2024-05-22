.class public interface abstract Lcom/android/systemui/dagger/SysUIComponent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract createDependency()Lcom/android/systemui/Dependency;
.end method

.method public abstract createDumpManager()Lcom/android/systemui/dump/DumpManager;
.end method

.method public abstract getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
.end method

.method public abstract getFoldStateLogger()Ljava/util/Optional;
.end method

.method public abstract getFoldStateLoggingProvider()Ljava/util/Optional;
.end method

.method public abstract getInitController()Lcom/android/systemui/InitController;
.end method

.method public abstract getMediaMuteAwaitConnectionCli()Ljava/util/Optional;
.end method

.method public abstract getNaturalRotationUnfoldProgressProvider()Ljava/util/Optional;
.end method

.method public abstract getNearbyMediaDevicesManager()Ljava/util/Optional;
.end method

.method public abstract getPerUserStartables()Ljava/util/Map;
.end method

.method public abstract getStartables()Ljava/util/Map;
.end method

.method public abstract getSysUIUnfoldComponent()Ljava/util/Optional;
.end method

.method public abstract getUnfoldLatencyTracker()Lcom/android/systemui/unfold/UnfoldLatencyTracker;
.end method

.method public abstract getUnfoldTransitionProgressForwarder()Ljava/util/Optional;
.end method

.method public abstract getUnfoldTransitionProgressProvider()Ljava/util/Optional;
.end method

.method public init()V
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getSysUIUnfoldComponent()Ljava/util/Optional;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getNaturalRotationUnfoldProgressProvider()Ljava/util/Optional;

    .line 15
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    .line 19
    const/4 v3, 0x1

    .line 21
    invoke-direct {v1, v3}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 25
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getMediaMuteAwaitConnectionCli()Ljava/util/Optional;

    .line 28
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getNearbyMediaDevicesManager()Ljava/util/Optional;

    .line 31
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getUnfoldLatencyTracker()Lcom/android/systemui/unfold/UnfoldLatencyTracker;

    .line 34
    move-result-object v0

    .line 37
    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->context:Landroid/content/Context;

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v1

    .line 43
    const v4, 0x107006d    # @android:array/config_forceQueryablePackages

    .line 44
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 47
    move-result-object v1

    .line 50
    array-length v1, v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    move v1, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v1, v2

    .line 56
    :goto_0
    xor-int/2addr v1, v3

    .line 57
    if-nez v1, :cond_1

    .line 58
    goto :goto_1

    .line 60
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 61
    iget-object v3, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->uiBgExecutor:Ljava/util/concurrent/Executor;

    .line 63
    iget-object v4, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->foldStateListener:Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener;

    .line 65
    invoke-virtual {v1, v3, v4}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 67
    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 70
    iget-object v1, v1, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->transitionProgressProvider:Ljava/util/Optional;

    .line 77
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 79
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 88
    check-cast v1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 89
    invoke-interface {v1, v0}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 91
    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getFoldStateLoggingProvider()Ljava/util/Optional;

    .line 94
    move-result-object v0

    .line 97
    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    .line 98
    const/4 v3, 0x2

    .line 100
    invoke-direct {v1, v3}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 104
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getFoldStateLogger()Ljava/util/Optional;

    .line 107
    move-result-object v0

    .line 110
    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    .line 111
    const/4 v3, 0x3

    .line 113
    invoke-direct {v1, v3}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 117
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getUnfoldTransitionProgressProvider()Ljava/util/Optional;

    .line 120
    move-result-object v0

    .line 123
    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;

    .line 124
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 129
    return-void
    .line 132
.end method

.method public abstract inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V
.end method

.method public abstract provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;
.end method

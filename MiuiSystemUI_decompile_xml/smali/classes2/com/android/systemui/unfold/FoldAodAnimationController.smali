.class public final Lcom/android/systemui/unfold/FoldAodAnimationController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public alwaysOnEnabled:Z

.field public cancelAnimation:Ljava/lang/Runnable;

.field public centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final context:Landroid/content/Context;

.field public final deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final foldToAodLatencyTracker:Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public isAnimationPlaying:Z

.field public isDozing:Z

.field public isFoldHandled:Z

.field public isFolded:Z

.field public isScrimOpaque:Z

.field public final keyguardInteractor:Ldagger/Lazy;

.field public final latencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public pendingScrimReadyCallback:Ljava/lang/Runnable;

.field public shouldPlayAnimation:Z

.field public final startAnimationRunnable:Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;

.field public final statusListeners:Ljava/util/ArrayList;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/internal/util/LatencyTracker;Ldagger/Lazy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->context:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->keyguardInteractor:Ldagger/Lazy;

    .line 17
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isFoldHandled:Z

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->statusListeners:Ljava/util/ArrayList;

    .line 27
    new-instance p1, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;

    .line 29
    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->foldToAodLatencyTracker:Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;

    .line 34
    new-instance p1, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;

    .line 36
    const/4 p2, 0x4

    .line 38
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;I)V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->startAnimationRunnable:Lcom/android/systemui/unfold/FoldAodAnimationController$onScreenTurnedOn$1;

    .line 42
    return-void
    .line 44
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldAodAnimationStatus;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->statusListeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final getShadeFoldAnimator()Lcom/android/systemui/shade/NotificationPanelViewController$11;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getShadeViewController()Lcom/android/systemui/shade/ShadeViewController;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeFoldAnimator:Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 15
    return-object p0
    .line 17
.end method

.method public final initialize(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 2
    new-instance p1, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldListener;

    .line 4
    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldListener;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;)V

    .line 6
    iget-object p2, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 11
    invoke-virtual {p2, v0, p1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 13
    iget-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 16
    iget-object p1, p1, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator()Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 23
    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 27
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 29
    new-instance p2, Lcom/android/systemui/unfold/FoldAodAnimationController$initialize$1;

    .line 31
    const/4 v0, 0x0

    .line 33
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/unfold/FoldAodAnimationController$initialize$1;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;Lkotlin/coroutines/Continuation;)V

    .line 34
    invoke-static {p1, p2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 37
    return-void
    .line 40
.end method

.method public final isAnimationPlaying()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isAnimationPlaying:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isKeyguardHideDelayed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isAnimationPlaying:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isKeyguardShowDelayed()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final listenForDozing$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p2, Lcom/android/systemui/unfold/FoldAodAnimationController$listenForDozing$2;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/unfold/FoldAodAnimationController$listenForDozing$2;-><init>(Lcom/android/systemui/unfold/FoldAodAnimationController;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 p0, 0x3

    .line 8
    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final onAlwaysOnChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->alwaysOnEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public final onScrimOpaqueChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isScrimOpaque:Z

    .line 2
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->pendingScrimReadyCallback:Ljava/lang/Runnable;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->pendingScrimReadyCallback:Ljava/lang/Runnable;

    .line 14
    :cond_1
    return-void
    .line 16
.end method

.method public final onStartedWakingUp()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isAnimationPlaying:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->foldToAodLatencyTracker:Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldToAodLatencyTracker;->this$0:Lcom/android/systemui/unfold/FoldAodAnimationController;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 10
    const/16 v1, 0x12

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->cancelAnimation:Ljava/lang/Runnable;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator()Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 24
    move-result-object v0

    .line 27
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$11;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 28
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 30
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 36
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 43
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->setAnimationState(Z)V

    .line 51
    return-void
    .line 54
.end method

.method public final overrideNotificationsDozeAmount()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldAodAnimationStatus;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->statusListeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final setAnimationState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isAnimationPlaying:Z

    .line 4
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->statusListeners:Ljava/util/ArrayList;

    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldAodAnimationStatus;

    .line 22
    invoke-interface {p1}, Lcom/android/systemui/unfold/FoldAodAnimationController$FoldAodAnimationStatus;->onFoldToAodAnimationChanged()V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public final shouldAnimateClockChange()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->isAnimationPlaying:Z

    .line 2
    xor-int/lit8 p0, p0, 0x1

    .line 4
    return p0
    .line 6
.end method

.method public final shouldAnimateDozingChange()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    .line 2
    xor-int/lit8 p0, p0, 0x1

    .line 4
    return p0
    .line 6
.end method

.method public final shouldDelayDisplayDozeTransition()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    .line 2
    return p0
    .line 4
.end method

.method public final shouldDelayKeyguardShow()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final shouldHideScrimOnWakeUp()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final shouldPlayAnimation()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    .line 2
    return p0
    .line 4
.end method

.method public final shouldStartAnimation()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->alwaysOnEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 6
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 8
    const/16 v1, 0xd

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/unfold/FoldAodAnimationController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 14
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 16
    move-result v0

    .line 19
    check-cast p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    .line 20
    const-string v1, "animator_duration_scale"

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    const-string v0, "0"

    .line 28
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0
    .line 39
.end method

.method public final startAnimation()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldStartAnimation()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->setAnimationState(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->getShadeFoldAnimator()Lcom/android/systemui/shade/NotificationPanelViewController$11;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController$11;->prepareFoldToAodAnimation()V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/unfold/FoldAodAnimationController;->setAnimationState(Z)V

    .line 21
    :goto_0
    return v0
    .line 24
.end method

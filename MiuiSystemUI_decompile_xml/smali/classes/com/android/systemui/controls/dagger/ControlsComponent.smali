.class public final Lcom/android/systemui/controls/dagger/ControlsComponent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final canShowWhileLockedSetting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final controlsTileResourceConfiguration:Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

.field public final featureEnabled:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final lazyControlsController:Ldagger/Lazy;

.field public final lazyControlsListingController:Ldagger/Lazy;

.field public final lazyControlsUiController:Ldagger/Lazy;

.field public final lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(ZLdagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/settings/ControlsSettingsRepository;Ljava/util/Optional;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->lazyControlsController:Ldagger/Lazy;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->lazyControlsUiController:Ldagger/Lazy;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->lazyControlsListingController:Ldagger/Lazy;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 17
    check-cast p8, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    .line 19
    iget-object p1, p8, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->canShowControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 21
    iput-object p1, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->canShowWhileLockedSetting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 23
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    .line 25
    invoke-direct {p1}, Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;-><init>()V

    .line 27
    invoke-virtual {p9, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    .line 34
    iput-object p1, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsTileResourceConfiguration:Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    .line 36
    return-void
    .line 38
.end method


# virtual methods
.method public final getControlsController()Ljava/util/Optional;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->lazyControlsController:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 12
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 17
    move-result-object p0

    .line 20
    :goto_0
    return-object p0
    .line 21
.end method

.method public final getControlsListingController()Ljava/util/Optional;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->lazyControlsListingController:Ldagger/Lazy;

    .line 6
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 12
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 17
    move-result-object p0

    .line 20
    :goto_0
    return-object p0
    .line 21
.end method

.method public final getVisibility()Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->UNAVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    .line 6
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 9
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 17
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    .line 23
    move-result v0

    .line 26
    sget-object v1, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE_AFTER_UNLOCK:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    .line 27
    const/4 v2, 0x1

    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    return-object v1

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->canShowWhileLockedSetting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 33
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    iget-object p0, p0, Lcom/android/systemui/controls/dagger/ControlsComponent;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 47
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 49
    move-result p0

    .line 52
    if-nez p0, :cond_2

    .line 53
    return-object v1

    .line 55
    :cond_2
    sget-object p0, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    .line 56
    return-object p0
    .line 58
.end method

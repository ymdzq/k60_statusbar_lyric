.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    .line 4
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/systemui/shade/CameraLauncher;

    .line 10
    iget-object v1, v1, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 12
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->releaseGestureWakeLock()V

    .line 17
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraWhenFinishedWaking:Z

    .line 20
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 22
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpComingFromTouch:Z

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateVisibleToUser()V

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateNotificationPanelTouchState()V

    .line 29
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 32
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->cancelCurrentTouch()V

    .line 34
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraOnFinishedGoingToSleep:Z

    .line 37
    if-eqz v1, :cond_0

    .line 39
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraOnFinishedGoingToSleep:Z

    .line 41
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 43
    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11$$ExternalSyntheticLambda0;

    .line 45
    const/4 v4, 0x2

    .line 47
    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;I)V

    .line 48
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 51
    invoke-virtual {v1, v3}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 53
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionOnFinishedGoingToSleep:Z

    .line 56
    if-eqz v1, :cond_1

    .line 58
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionOnFinishedGoingToSleep:Z

    .line 60
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 62
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11$$ExternalSyntheticLambda0;

    .line 64
    const/4 v3, 0x3

    .line 66
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;I)V

    .line 67
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 70
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 72
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard()Z

    .line 75
    return-void
    .line 78
.end method

.method public final onFinishedWakingUp()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShouldDelayLockscreenTransitionFromAod:Z

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11$$ExternalSyntheticLambda0;

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;I)V

    .line 11
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 14
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    .line 18
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 21
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    .line 23
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(ZZ)V

    .line 26
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 29
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 31
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 33
    if-eqz p0, :cond_1

    .line 35
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->canControlUnlockedScreenOff()Z

    .line 39
    move-result p0

    .line 42
    if-nez p0, :cond_1

    .line 43
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 45
    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updatePublicMode()V

    .line 49
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 52
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 54
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 56
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 58
    check-cast v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 60
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isAnyProfilePublicMode()Z

    .line 62
    move-result v3

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 66
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSensitiveness(ZZ)V

    .line 68
    :cond_1
    iget-boolean p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraWhenFinishedWaking:Z

    .line 71
    if-eqz p0, :cond_3

    .line 73
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    .line 75
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 80
    check-cast p0, Lcom/android/systemui/shade/CameraLauncher;

    .line 81
    iget v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLastCameraLaunchSource:I

    .line 83
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 85
    check-cast v4, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 87
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 89
    move-result v4

    .line 92
    if-nez v4, :cond_2

    .line 93
    iget-object v4, p0, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 95
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    .line 97
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/CameraLauncher;->mCameraGestureHelper:Lcom/android/systemui/camera/CameraGestureHelper;

    .line 99
    invoke-virtual {p0, v3}, Lcom/android/systemui/camera/CameraGestureHelper;->launchCamera(I)V

    .line 101
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraWhenFinishedWaking:Z

    .line 104
    :cond_3
    iget-boolean p0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionWhenFinishedWaking:Z

    .line 106
    if-eqz p0, :cond_7

    .line 108
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionWhenFinishedWaking:Z

    .line 110
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getEmergencyActionIntent()Landroid/content/Intent;

    .line 112
    move-result-object p0

    .line 115
    if-eqz p0, :cond_7

    .line 116
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    move-result-object v3

    .line 123
    const v4, 0x7f0300b5    # @array/system_ui_packages

    .line 124
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 130
    array-length v4, v3

    .line 131
    :goto_0
    if-ge v1, v4, :cond_6

    .line 132
    aget-object v5, v3, v1

    .line 134
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 136
    move-result-object v6

    .line 139
    if-nez v6, :cond_4

    .line 140
    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 143
    move-result-object v6

    .line 146
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 147
    move-result-object v6

    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result v5

    .line 154
    if-eqz v5, :cond_5

    .line 155
    new-instance v1, Landroid/os/UserHandle;

    .line 157
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 159
    move-result v3

    .line 162
    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 163
    goto :goto_2

    .line 166
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 167
    goto :goto_0

    .line 169
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 170
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 172
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 174
    move-result-object v1

    .line 177
    :goto_2
    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 178
    :cond_7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    .line 181
    return-void
    .line 184
.end method

.method public final onStartedGoingToSleep()V
    .locals 5

    .line 1
    const-string v0, "CentralSurfaces#onStartedGoingToSleep"

    .line 2
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchTransitionCancelRunnable:Ljava/lang/Runnable;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 17
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchTransitionCancelRunnable:Ljava/lang/Runnable;

    .line 19
    const/4 v2, 0x0

    .line 21
    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->-$$Nest$mupdateRevealEffect(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Z)V

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateNotificationPanelTouchState()V

    .line 25
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->-$$Nest$mmaybeEscalateHeadsUp(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    .line 28
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    .line 31
    if-eqz v3, :cond_1

    .line 33
    check-cast v3, Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 35
    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 37
    iget-object v3, v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 39
    const/4 v4, 0x2

    .line 41
    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onDismissRequested(I)V

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 45
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    .line 47
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 49
    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 53
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 58
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldShowLightRevealScrim()Z

    .line 60
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    const/4 v1, 0x1

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 67
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 69
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->makeExpandedVisible(Z)V

    .line 71
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 74
    return-void
    .line 77
.end method

.method public final onStartedWakingUp()V
    .locals 4

    .line 1
    const-string v0, "CentralSurfaces#onStartedWakingUp"

    .line 2
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 7
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 9
    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11$$ExternalSyntheticLambda0;

    .line 11
    const/4 v3, 0x0

    .line 13
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;I)V

    .line 14
    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V

    .line 19
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 22
    return-void
    .line 25
.end method

.method public final startLockscreenTransitionFromAod()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->stopDozing()V

    .line 6
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->-$$Nest$mupdateRevealEffect(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Z)V

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateNotificationPanelTouchState()V

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 16
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    .line 18
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 21
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    .line 23
    instance-of v2, v1, Ljava/util/Collection;

    .line 25
    if-eqz v2, :cond_0

    .line 27
    move-object v2, v1

    .line 29
    check-cast v2, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v1

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    .line 55
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->shouldHideScrimOnWakeUp()Z

    .line 57
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 64
    :goto_1
    if-eqz v0, :cond_3

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 67
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeControllerImpl;->makeExpandedInvisible()V

    .line 71
    :cond_3
    return-void
    .line 74
.end method

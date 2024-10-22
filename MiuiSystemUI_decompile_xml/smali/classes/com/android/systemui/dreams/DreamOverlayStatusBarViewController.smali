.class public final Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

.field public final mDreamOverlayNotificationCountProvider:Ljava/util/Optional;

.field public final mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$2;

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public mEntryAnimationsFinished:Z

.field public final mExtraStatusBarItems:Ljava/util/List;

.field public mIsAttached:Z

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNetworkCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$1;

.field public final mNetworkRequest:Landroid/net/NetworkRequest;

.field public final mNextAlarmCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda2;

.field public final mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field public final mResources:Landroid/content/res/Resources;

.field public final mSensorCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda1;

.field public final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

.field public final mStatusBarItemsProvider:Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;

.field public final mStatusBarItemsProviderCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3;

.field public final mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public final mTouchInsetSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mZenModeCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$3;

.field public final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarView;Landroid/content/res/Resources;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/util/time/DateFormatUtil;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Ljava/util/Optional;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/settings/UserTracker;)V
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p12

    .line 3
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mExtraStatusBarItems:Ljava/util/List;

    .line 13
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mEntryAnimationsFinished:Z

    .line 16
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    .line 18
    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 20
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 23
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 28
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 32
    move-result-object v2

    .line 35
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 36
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$1;

    .line 38
    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;)V

    .line 40
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mNetworkCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$1;

    .line 43
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$2;

    .line 45
    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$2;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;)V

    .line 47
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$2;

    .line 50
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda1;

    .line 52
    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;)V

    .line 54
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mSensorCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda1;

    .line 57
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda2;

    .line 59
    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;)V

    .line 61
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mNextAlarmCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda2;

    .line 64
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$3;

    .line 66
    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$3;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;)V

    .line 68
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mZenModeCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$3;

    .line 71
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3;

    .line 73
    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;)V

    .line 75
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mStatusBarItemsProviderCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3;

    .line 78
    move-object v2, p2

    .line 80
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mResources:Landroid/content/res/Resources;

    .line 81
    move-object v2, p3

    .line 83
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 84
    move-object v2, p4

    .line 86
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 87
    move-object v2, p5

    .line 89
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mTouchInsetSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    .line 90
    move-object v2, p6

    .line 92
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 93
    move-object v2, p7

    .line 95
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 96
    move-object v2, p8

    .line 98
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    .line 99
    move-object v2, p9

    .line 101
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 102
    move-object v2, p10

    .line 104
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayNotificationCountProvider:Ljava/util/Optional;

    .line 105
    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 107
    move-object/from16 v2, p13

    .line 109
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mStatusBarItemsProvider:Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;

    .line 111
    move-object v2, p11

    .line 113
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 114
    move-object/from16 v2, p14

    .line 116
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 118
    move-object/from16 v2, p15

    .line 120
    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 122
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda4;

    .line 124
    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;)V

    .line 126
    iget-object v0, v1, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->listeners:Ljava/util/Set;

    .line 129
    check-cast v0, Ljava/util/HashSet;

    .line 131
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
    .line 136
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mIsAttached:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mNetworkCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$1;

    .line 5
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 7
    iget-object v3, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 9
    invoke-virtual {v2, v3, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->updateWifiUnavailableStatusIcon()V

    .line 14
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mNextAlarmCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda2;

    .line 17
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 19
    check-cast v2, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    .line 21
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->updateAlarmStatusIcon()V

    .line 26
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mSensorCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda1;

    .line 29
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 31
    check-cast v2, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 33
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->updateMicCameraBlockedStatusIcon()V

    .line 38
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mZenModeCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$3;

    .line 41
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 43
    check-cast v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 45
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 47
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 50
    check-cast v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 52
    iget v1, v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 54
    const/4 v2, 0x0

    .line 56
    if-eqz v1, :cond_0

    .line 57
    move v1, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v1, v2

    .line 61
    :goto_0
    const v3, 0x7f130918    # @string/priority_mode_dream_overlay_content_description 'Priority mode on'

    .line 62
    const/4 v4, 0x6

    .line 65
    invoke-virtual {p0, v4, v3, v1}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->showIcon(IIZ)V

    .line 66
    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda0;

    .line 69
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;I)V

    .line 71
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayNotificationCountProvider:Ljava/util/Optional;

    .line 74
    invoke-virtual {v2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mStatusBarItemsProvider:Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;

    .line 79
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mStatusBarItemsProviderCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    new-instance v3, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0;

    .line 86
    invoke-direct {v3, v1, v2, v0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3;I)V

    .line 88
    iget-object v0, v1, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 91
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$2;

    .line 96
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 100
    return-void
    .line 103
.end method

.method public final onViewDetached()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mZenModeCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$3;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mSensorCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda1;

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 20
    check-cast v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    .line 22
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mNextAlarmCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda2;

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mNetworkCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$1;

    .line 29
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 31
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 33
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda0;

    .line 36
    const/4 v1, 0x1

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;I)V

    .line 39
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayNotificationCountProvider:Ljava/util/Optional;

    .line 42
    invoke-virtual {v2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mStatusBarItemsProvider:Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0;

    .line 52
    iget-object v3, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mStatusBarItemsProviderCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3;

    .line 54
    const/4 v4, 0x0

    .line 56
    invoke-direct {v2, v0, v3, v4}, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda3;I)V

    .line 57
    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarItemsProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 60
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 65
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    .line 67
    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mExtraSystemStatusViewGroup:Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    const/16 v2, 0x20

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    .line 81
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayStateCallback:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$2;

    .line 84
    invoke-virtual {v0, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController;->removeCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mTouchInsetSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    new-instance v2, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;

    .line 94
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;I)V

    .line 96
    iget-object v0, v0, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 99
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 101
    iput-boolean v4, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mIsAttached:Z

    .line 104
    return-void
    .line 106
.end method

.method public final showIcon(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mResources:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 7
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;

    .line 8
    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;IZLjava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 13
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    return-void
    .line 18
.end method

.method public final updateAlarmStatusIcon()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 10
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    .line 12
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 18
    move-result-wide v1

    .line 21
    const-wide/16 v3, 0x0

    .line 22
    cmp-long v1, v1, v3

    .line 24
    if-lez v1, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    if-eqz v1, :cond_2

    .line 31
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    .line 33
    iget-object v3, v2, Lcom/android/systemui/util/time/DateFormatUtil;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 35
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 37
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 39
    move-result v3

    .line 42
    iget-object v2, v2, Lcom/android/systemui/util/time/DateFormatUtil;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 45
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    const-string v2, "EHm"

    .line 51
    goto :goto_1

    .line 53
    :cond_1
    const-string v2, "Ehma"

    .line 54
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 56
    move-result-object v3

    .line 59
    invoke-static {v3, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 63
    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 64
    move-result-wide v3

    .line 67
    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 68
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 75
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mResources:Landroid/content/res/Resources;

    .line 80
    const v3, 0x7f1300d2    # @string/accessibility_quick_settings_alarm 'Alarm set for %s.'

    .line 82
    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    const/4 v0, 0x0

    .line 90
    :goto_2
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;

    .line 91
    const/4 v3, 0x2

    .line 93
    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;IZLjava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 97
    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void
    .line 102
.end method

.method public final updateMicCameraBlockedStatusIcon()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 5
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    .line 8
    move-result v1

    .line 11
    const/4 v3, 0x2

    .line 12
    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 13
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    .line 15
    move-result v0

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    move v4, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v4, v3

    .line 26
    :goto_0
    const v5, 0x7f130249    # @string/camera_blocked_dream_overlay_content_description 'Camera blocked'

    .line 27
    const/4 v6, 0x3

    .line 30
    invoke-virtual {p0, v6, v5, v4}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->showIcon(IIZ)V

    .line 31
    if-eqz v1, :cond_1

    .line 34
    if-nez v0, :cond_1

    .line 36
    move v4, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v4, v3

    .line 40
    :goto_1
    const v5, 0x7f130732    # @string/microphone_blocked_dream_overlay_content_description 'Microphone blocked'

    .line 41
    const/4 v6, 0x4

    .line 44
    invoke-virtual {p0, v6, v5, v4}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->showIcon(IIZ)V

    .line 45
    if-eqz v1, :cond_2

    .line 48
    if-eqz v0, :cond_2

    .line 50
    goto :goto_2

    .line 52
    :cond_2
    move v2, v3

    .line 53
    :goto_2
    const v0, 0x7f130248    # @string/camera_and_microphone_blocked_dream_overlay_content_description 'Camera and microphone blocked'

    .line 54
    const/4 v1, 0x5

    .line 57
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->showIcon(IIZ)V

    .line 58
    return-void
    .line 61
.end method

.method public final updateVisibility()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 6
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 10
    const/4 v3, 0x2

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    .line 13
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-nez v4, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 21
    iget p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->windowState:I

    .line 23
    if-nez p0, :cond_0

    .line 25
    move p0, v5

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p0, v6

    .line 29
    :goto_0
    if-nez p0, :cond_1

    .line 30
    move p0, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move p0, v6

    .line 34
    :goto_1
    if-eqz p0, :cond_2

    .line 35
    move p0, v6

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/4 p0, 0x4

    .line 39
    :goto_2
    if-ne v1, p0, :cond_3

    .line 40
    return-void

    .line 42
    :cond_3
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 43
    if-nez p0, :cond_4

    .line 46
    move v6, v5

    .line 48
    :cond_4
    if-eqz v6, :cond_5

    .line 49
    goto :goto_3

    .line 51
    :cond_5
    move v3, v5

    .line 52
    :goto_3
    const/16 p0, 0x20

    .line 53
    invoke-virtual {v2, v3, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    .line 55
    return-void
    .line 58
.end method

.method public final updateWifiUnavailableStatusIcon()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 8
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    xor-int/2addr v0, v1

    .line 24
    const v2, 0x7f130cb9    # @string/wifi_unavailable_dream_overlay_content_description 'WLAN not available'

    .line 25
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->showIcon(IIZ)V

    .line 28
    return-void
    .line 31
.end method

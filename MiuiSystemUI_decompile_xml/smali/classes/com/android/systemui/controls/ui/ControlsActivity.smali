.class public Lcom/android/systemui/controls/ui/ControlsActivity;
.super Landroidx/activity/ComponentActivity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public broadcastReceiver:Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;

.field public final controlsSettingsDialogManager:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;

.field public final dreamManager:Landroid/service/dreams/IDreamManager;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final lastConfiguration:Landroid/content/res/Configuration;

.field public mExitToDream:Z

.field public parent:Landroid/view/ViewGroup;

.field public final uiController:Lcom/android/systemui/controls/ui/ControlsUiController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->dreamManager:Landroid/service/dreams/IDreamManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->controlsSettingsDialogManager:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 15
    new-instance p1, Landroid/content/res/Configuration;

    .line 17
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->lastConfiguration:Landroid/content/res/Configuration;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final finishOrReturnToDream()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->mExitToDream:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->mExitToDream:Z

    .line 7
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->dreamManager:Landroid/service/dreams/IDreamManager;

    .line 9
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-void

    .line 14
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    return-void
    .line 18
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsActivity;->finishOrReturnToDream()V

    .line 2
    return-void
    .line 5
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->lastConfiguration:Landroid/content/res/Configuration;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 7
    move-result v1

    .line 10
    and-int/lit16 v1, v1, 0xc80

    .line 11
    if-eqz v1, :cond_6

    .line 13
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 15
    check-cast p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectionItem:Lcom/android/systemui/controls/ui/SelectionItem;

    .line 19
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_3

    .line 22
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 24
    instance-of v4, v3, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 26
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->createListView(Lcom/android/systemui/controls/ui/SelectionItem;)V

    .line 32
    goto :goto_1

    .line 35
    :cond_0
    instance-of v1, v3, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 36
    if-eqz v1, :cond_4

    .line 38
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 40
    if-eqz v1, :cond_1

    .line 42
    iget-object v1, v1, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 44
    invoke-virtual {v1}, Lcom/android/wm/shell/taskview/TaskView;->onLocationChanged()V

    .line 46
    move-object v1, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v1, v2

    .line 51
    :goto_0
    if-nez v1, :cond_4

    .line 52
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 54
    if-nez v1, :cond_2

    .line 56
    move-object v1, v2

    .line 58
    :cond_2
    invoke-static {p0, v1}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->reload$default(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V

    .line 59
    goto :goto_1

    .line 62
    :cond_3
    move-object v5, v2

    .line 63
    :cond_4
    :goto_1
    if-nez v5, :cond_6

    .line 64
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 66
    if-nez v1, :cond_5

    .line 68
    goto :goto_2

    .line 70
    :cond_5
    move-object v2, v1

    .line 71
    :goto_2
    invoke-static {p0, v2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->reload$default(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V

    .line 72
    :cond_6
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 75
    return-void
    .line 78
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->lastConfiguration:Landroid/content/res/Configuration;

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 15
    sget-object p1, Lcom/android/systemui/flags/Flags;->USE_APP_PANELS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 20
    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    move-result-object v1

    .line 33
    const/high16 v2, 0x20000000

    .line 34
    invoke-virtual {v1, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 36
    :cond_0
    const v1, 0x7f0d007c    # @layout/controls_fullscreen 'res/layout/controls_fullscreen.xml'

    .line 39
    invoke-virtual {p0, v1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 42
    const v1, 0x7f0a023e    # @id/control_detail_root

    .line 45
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 48
    move-result-object v2

    .line 51
    check-cast v2, Landroid/view/ViewGroup;

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 54
    move-result-object v3

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 58
    move-result-object v4

    .line 61
    invoke-virtual {v0, p1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 62
    move-result p1

    .line 65
    xor-int/lit8 p1, p1, 0x1

    .line 66
    new-instance v0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;

    .line 68
    invoke-direct {v0, v4, v2, v3, p1}, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;-><init>(Landroid/content/Intent;Landroid/view/ViewGroup;Landroid/view/Window;Z)V

    .line 70
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 73
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 75
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 81
    check-cast p1, Landroid/view/ViewGroup;

    .line 82
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsActivity$onCreate$1$1;->INSTANCE:Lcom/android/systemui/controls/ui/ControlsActivity$onCreate$1$1;

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 86
    new-instance p1, Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;

    .line 89
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;-><init>(Lcom/android/systemui/controls/ui/ControlsActivity;)V

    .line 91
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastReceiver:Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;

    .line 94
    new-instance v2, Landroid/content/IntentFilter;

    .line 96
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 101
    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string p1, "android.intent.action.DREAMING_STARTED"

    .line 106
    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 111
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastReceiver:Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;

    .line 113
    if-nez p0, :cond_1

    .line 115
    const/4 p0, 0x0

    .line 117
    :cond_1
    move-object v1, p0

    .line 118
    const/4 v3, 0x0

    .line 119
    const/4 v4, 0x0

    .line 120
    const/4 v5, 0x0

    .line 121
    const/4 v6, 0x0

    .line 122
    const/16 v7, 0x3c

    .line 123
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 125
    return-void
    .line 128
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastReceiver:Lcom/android/systemui/controls/ui/ControlsActivity$initBroadcastReceiver$1;

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    move-result-object v0

    .line 8
    const-string v1, "extra_exit_to_dream"

    .line 9
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->mExitToDream:Z

    .line 16
    return-void
    .line 18
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    const v0, 0x7f0a023e    # @id/control_detail_root

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->parent:Landroid/view/ViewGroup;

    .line 14
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 17
    sget-object v0, Lcom/android/systemui/flags/Flags;->USE_APP_PANELS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 22
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 24
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 26
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 33
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 35
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$1;

    .line 41
    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$1;-><init>(Lcom/android/systemui/controls/ui/ControlsActivity;)V

    .line 43
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->controlsSettingsDialogManager:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;

    .line 46
    invoke-virtual {v2, p0, v0}, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->maybeShowDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->parent:Landroid/view/ViewGroup;

    .line 52
    if-nez v0, :cond_1

    .line 54
    move-object v0, v1

    .line 56
    :cond_1
    new-instance v2, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$2;

    .line 57
    const/4 v3, 0x0

    .line 59
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/controls/ui/ControlsActivity$onStart$2;-><init>(Lcom/android/systemui/controls/ui/ControlsActivity;I)V

    .line 60
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 63
    check-cast v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 65
    invoke-virtual {v3, v0, v2, p0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 67
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->parent:Landroid/view/ViewGroup;

    .line 70
    if-nez p0, :cond_2

    .line 72
    goto :goto_1

    .line 74
    :cond_2
    move-object v1, p0

    .line 75
    :goto_1
    invoke-static {v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 80
    return-void
    .line 83
.end method

.method public final onStop()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->mExitToDream:Z

    .line 6
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->parent:Landroid/view/ViewGroup;

    .line 8
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    move-object v1, v2

    .line 13
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 14
    check-cast v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 16
    iget-object v4, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 18
    if-nez v4, :cond_1

    .line 20
    move-object v4, v2

    .line 22
    :cond_1
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v4

    .line 26
    if-eqz v4, :cond_14

    .line 27
    const-string v4, "ControlsUiController"

    .line 29
    const-string v5, "hide()"

    .line 31
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v4, 0x1

    .line 36
    iput-boolean v4, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->hidden:Z

    .line 37
    iget-object v5, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    .line 39
    if-eqz v5, :cond_2

    .line 41
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->dismissImmediate()V

    .line 43
    :cond_2
    iput-object v2, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->popup:Landroid/widget/ListPopupWindow;

    .line 46
    iget-object v5, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    .line 48
    check-cast v5, Ljava/util/LinkedHashMap;

    .line 50
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 52
    move-result-object v6

    .line 55
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v6

    .line 59
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v7

    .line 63
    if-eqz v7, :cond_5

    .line 64
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v7

    .line 69
    check-cast v7, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    move-result-object v7

    .line 75
    check-cast v7, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 76
    iget-object v8, v7, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 78
    if-eqz v8, :cond_3

    .line 80
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 82
    :cond_3
    iput-object v2, v7, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 85
    iget-object v8, v7, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    .line 87
    if-eqz v8, :cond_4

    .line 89
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 91
    :cond_4
    iput-object v2, v7, Lcom/android/systemui/controls/ui/ControlViewHolder;->visibleDialog:Landroid/app/Dialog;

    .line 94
    goto :goto_0

    .line 96
    :cond_5
    iget-object v6, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 97
    check-cast v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 99
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    sget-object v7, Lcom/android/systemui/flags/Flags;->USE_APP_PANELS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 104
    iget-object v8, v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 106
    check-cast v8, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 108
    invoke-virtual {v8, v7}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 110
    move-result v7

    .line 113
    if-nez v7, :cond_6

    .line 114
    iget-object v7, v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->controlsSettingsDialogManager:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;

    .line 116
    iget-object v7, v7, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->dialog:Landroid/app/AlertDialog;

    .line 118
    if-eqz v7, :cond_6

    .line 120
    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 122
    :cond_6
    iget-object v7, v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityContext:Landroid/content/Context;

    .line 125
    if-eqz v7, :cond_7

    .line 127
    goto :goto_1

    .line 129
    :cond_7
    move-object v7, v2

    .line 130
    :goto_1
    instance-of v8, v7, Landroid/app/Activity;

    .line 131
    if-eqz v8, :cond_8

    .line 133
    check-cast v7, Landroid/app/Activity;

    .line 135
    goto :goto_2

    .line 137
    :cond_8
    move-object v7, v2

    .line 138
    :goto_2
    if-eqz v7, :cond_b

    .line 139
    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    .line 141
    move-result v8

    .line 144
    if-nez v8, :cond_a

    .line 145
    invoke-virtual {v7}, Landroid/app/Activity;->isDestroyed()Z

    .line 147
    move-result v7

    .line 150
    if-eqz v7, :cond_9

    .line 151
    goto :goto_3

    .line 153
    :cond_9
    move v7, v0

    .line 154
    goto :goto_4

    .line 155
    :cond_a
    :goto_3
    move v7, v4

    .line 156
    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    move-result-object v7

    .line 160
    goto :goto_5

    .line 161
    :cond_b
    move-object v7, v2

    .line 162
    :goto_5
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 163
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    move-result v7

    .line 168
    if-eqz v7, :cond_c

    .line 169
    iput-object v2, v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    .line 171
    goto :goto_6

    .line 173
    :cond_c
    iget-object v7, v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    .line 174
    if-eqz v7, :cond_d

    .line 176
    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    .line 178
    move-result v7

    .line 181
    if-ne v7, v4, :cond_d

    .line 182
    move v0, v4

    .line 184
    :cond_d
    if-eqz v0, :cond_f

    .line 185
    iget-object v0, v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    .line 187
    if-eqz v0, :cond_e

    .line 189
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 191
    :cond_e
    iput-object v2, v6, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->dialog:Landroid/app/Dialog;

    .line 194
    :cond_f
    :goto_6
    iget-object v0, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->removeAppDialog:Landroid/app/Dialog;

    .line 196
    if-eqz v0, :cond_10

    .line 198
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 200
    :cond_10
    iget-object v0, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 203
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 205
    move-result-object v0

    .line 208
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    .line 209
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 211
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    .line 213
    move-result v4

    .line 216
    if-nez v4, :cond_11

    .line 217
    goto :goto_7

    .line 219
    :cond_11
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 220
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 222
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unsubscribe()V

    .line 224
    :goto_7
    iget-object v0, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 227
    if-eqz v0, :cond_12

    .line 229
    iget-object v0, v0, Lcom/android/systemui/controls/ui/PanelTaskViewController;->taskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 231
    invoke-virtual {v0}, Lcom/android/wm/shell/taskview/TaskView;->removeTask()V

    .line 233
    :cond_12
    iput-object v2, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->taskViewController:Lcom/android/systemui/controls/ui/PanelTaskViewController;

    .line 236
    iget-object v0, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    .line 238
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 240
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 242
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    .line 245
    iget-object v0, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 248
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 250
    move-result-object v0

    .line 253
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 254
    iget-object v4, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$createCallback$1;

    .line 256
    if-nez v4, :cond_13

    .line 258
    goto :goto_8

    .line 260
    :cond_13
    move-object v2, v4

    .line 261
    :goto_8
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 262
    invoke-virtual {v0, v2}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 264
    iget-boolean v0, v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->retainCache:Z

    .line 267
    if-nez v0, :cond_14

    .line 269
    sget-object v0, Lcom/android/systemui/controls/ui/RenderInfo;->iconMap:Landroid/util/SparseArray;

    .line 271
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 273
    sget-object v0, Lcom/android/systemui/controls/ui/RenderInfo;->appIconMap:Landroid/util/ArrayMap;

    .line 276
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 278
    :cond_14
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 281
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity;->controlsSettingsDialogManager:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;

    .line 284
    iget-object p0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->dialog:Landroid/app/AlertDialog;

    .line 286
    if-eqz p0, :cond_15

    .line 288
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 290
    :cond_15
    return-void
    .line 293
.end method

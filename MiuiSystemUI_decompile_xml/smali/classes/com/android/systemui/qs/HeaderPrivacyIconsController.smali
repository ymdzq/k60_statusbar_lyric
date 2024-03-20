.class public final Lcom/android/systemui/qs/HeaderPrivacyIconsController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final appOpsController:Lcom/android/systemui/appops/AppOpsController;

.field public final attachStateChangeListener:Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final cameraSlot:Ljava/lang/String;

.field public chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field public listening:Z

.field public locationIndicatorsEnabled:Z

.field public final locationSlot:Ljava/lang/String;

.field public micCameraIndicatorsEnabled:Z

.field public final micSlot:Ljava/lang/String;

.field public final permissionManager:Landroid/permission/PermissionManager;

.field public final picCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

.field public final privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

.field public privacyChipLogged:Z

.field public final privacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

.field public final privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public final privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public safetyCenterEnabled:Z

.field public final safetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

.field public final safetyCenterReceiver:Lcom/android/systemui/qs/HeaderPrivacyIconsController$safetyCenterReceiver$1;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final uiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/privacy/OngoingPrivacyChip;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/phone/StatusIconContainer;Landroid/permission/PermissionManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/safetycenter/SafetyCenterManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p3

    .line 3
    move-object/from16 v5, p8

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    move-object v2, p1

    .line 9
    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 10
    move-object v2, p2

    .line 12
    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 13
    iput-object v1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    .line 15
    move-object v2, p4

    .line 17
    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 18
    move-object/from16 v2, p5

    .line 20
    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 22
    move-object/from16 v2, p6

    .line 24
    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 26
    move-object/from16 v2, p7

    .line 28
    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->permissionManager:Landroid/permission/PermissionManager;

    .line 30
    iput-object v5, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 32
    move-object/from16 v2, p9

    .line 34
    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 36
    move-object/from16 v2, p10

    .line 38
    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 40
    move-object/from16 v2, p11

    .line 42
    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 44
    move-object/from16 v2, p12

    .line 46
    iput-object v2, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 48
    move-object/from16 v3, p13

    .line 50
    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->safetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    .line 52
    move-object/from16 v3, p14

    .line 54
    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 56
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v3

    .line 61
    const v4, 0x104096a    # @android:string/wfcSpnFormat_wifi

    .line 62
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 68
    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->cameraSlot:Ljava/lang/String;

    .line 69
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object v3

    .line 74
    const v4, 0x1040976    # @android:string/whichEditApplication

    .line 75
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 81
    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micSlot:Ljava/lang/String;

    .line 82
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v3

    .line 87
    const v4, 0x1040974    # @android:string/whichApplicationLabel

    .line 88
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 94
    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationSlot:Ljava/lang/String;

    .line 95
    new-instance v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController$safetyCenterReceiver$1;

    .line 97
    invoke-direct {v3, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$safetyCenterReceiver$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    .line 99
    iput-object v3, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->safetyCenterReceiver:Lcom/android/systemui/qs/HeaderPrivacyIconsController$safetyCenterReceiver$1;

    .line 102
    new-instance v10, Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;

    .line 104
    invoke-direct {v10, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    .line 106
    iput-object v10, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->attachStateChangeListener:Lcom/android/systemui/qs/HeaderPrivacyIconsController$attachStateChangeListener$1;

    .line 109
    new-instance v4, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;

    .line 111
    const/4 v6, 0x0

    .line 113
    invoke-direct {v4, p0, v6}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;I)V

    .line 114
    invoke-interface {v5, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 120
    move-result v4

    .line 123
    if-eqz v4, :cond_0

    .line 124
    new-instance v4, Landroid/content/IntentFilter;

    .line 126
    const-string v6, "android.safetycenter.action.SAFETY_CENTER_ENABLED_CHANGED"

    .line 128
    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    const/4 v6, 0x0

    .line 133
    const/4 v7, 0x0

    .line 134
    const/4 v8, 0x0

    .line 135
    const/16 v9, 0x38

    .line 136
    move-object/from16 v2, p12

    .line 138
    move-object/from16 v5, p8

    .line 140
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 142
    :cond_0
    invoke-virtual {p3, v10}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 145
    new-instance v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;

    .line 148
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    .line 150
    iput-object v1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->picCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 153
    return-void
    .line 155
.end method


# virtual methods
.method public final setChipVisibility(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 3
    if-eqz p1, :cond_2

    .line 5
    iget-boolean v2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    .line 7
    const/4 v3, 0x1

    .line 9
    if-nez v2, :cond_1

    .line 10
    iget-boolean v2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    .line 12
    if-eqz v2, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move v2, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v2, v3

    .line 19
    :goto_1
    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {v1, v3}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChipLogged:Z

    .line 25
    if-nez v1, :cond_3

    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->listening:Z

    .line 29
    if-eqz v1, :cond_3

    .line 31
    iput-boolean v3, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChipLogged:Z

    .line 33
    sget-object v1, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_VIEW:Lcom/android/systemui/privacy/PrivacyChipEvent;

    .line 35
    iget-object v2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 37
    invoke-interface {v2, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 39
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    .line 43
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 46
    goto :goto_3

    .line 48
    :cond_4
    const/16 v0, 0x8

    .line 49
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    .line 51
    invoke-virtual {v1, v0}, Lcom/android/systemui/animation/LaunchableFrameLayout;->setVisibility(I)V

    .line 53
    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;

    .line 56
    if-eqz p0, :cond_5

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeHeaderController$updateListeners$1;->onChipVisibilityRefreshed(Z)V

    .line 60
    :cond_5
    return-void
.end method

.method public final updatePrivacyIconSlots()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-boolean v3, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    .line 8
    if-eqz v3, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move v3, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v3, v2

    .line 15
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationSlot:Ljava/lang/String;

    .line 16
    iget-object v5, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micSlot:Ljava/lang/String;

    .line 18
    iget-object v6, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->cameraSlot:Ljava/lang/String;

    .line 20
    iget-object v7, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 22
    if-eqz v3, :cond_9

    .line 24
    if-eqz v0, :cond_5

    .line 26
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    move v0, v1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    move v0, v2

    .line 43
    :goto_2
    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 46
    :cond_3
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    move v0, v1

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    move v0, v2

    .line 64
    :goto_3
    if-eqz v0, :cond_6

    .line 65
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 67
    goto :goto_4

    .line 70
    :cond_5
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    .line 74
    :cond_6
    :goto_4
    iget-boolean p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    .line 77
    if-eqz p0, :cond_8

    .line 79
    iget-object p0, v7, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result p0

    .line 86
    if-eqz p0, :cond_7

    .line 87
    goto :goto_5

    .line 89
    :cond_7
    iget-object p0, v7, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    move v1, v2

    .line 95
    :goto_5
    if-eqz v1, :cond_a

    .line 96
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 98
    goto :goto_6

    .line 101
    :cond_8
    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    .line 102
    goto :goto_6

    .line 105
    :cond_9
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    .line 112
    :cond_a
    :goto_6
    return-void
    .line 115
.end method

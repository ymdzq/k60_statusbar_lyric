.class public final Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mBubblesManagerOptional:Ljava/util/Optional;

.field public final mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field public final mContext:Landroid/content/Context;

.field public final mContextTracker:Lcom/android/systemui/settings/UserContextProvider;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mGutsListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;

.field public mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field public final mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public final mHighPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

.field public final mLauncherApps:Landroid/content/pm/LauncherApps;

.field public mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field public mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field public final mNotificationManager:Landroid/app/INotificationManager;

.field public mOnSettingsClickListener:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$2;

.field public final mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

.field public mOpenRunnable:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;

.field public final mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

.field public mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mShortcutManager:Landroid/content/pm/ShortcutManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Landroid/app/INotificationManager;Landroid/os/UserManager;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/content/pm/LauncherApps;Landroid/content/pm/ShortcutManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;Ljava/util/Optional;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMainHandler:Landroid/os/Handler;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBgHandler:Landroid/os/Handler;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mHighPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationManager:Landroid/app/INotificationManager;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mUserManager:Landroid/os/UserManager;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    move-object v1, p12

    .line 12
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBubblesManagerOptional:Ljava/util/Optional;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method


# virtual methods
.method public bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 6
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 9
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 16
    move-result-object v1

    .line 19
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;

    .line 20
    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 22
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setClosedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;)V

    .line 25
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    .line 28
    move-result-object p2

    .line 31
    :try_start_0
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 32
    if-eqz v0, :cond_0

    .line 34
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeSnoozeView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    .line 42
    if-eqz v0, :cond_1

    .line 44
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    .line 52
    if-eqz v0, :cond_2

    .line 54
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeConversationNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)V

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;

    .line 62
    if-eqz v0, :cond_3

    .line 64
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializePartialConversationNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;)V

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;

    .line 72
    if-eqz v0, :cond_5

    .line 74
    move-object v1, p2

    .line 76
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;

    .line 77
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 79
    move-result-object p2

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 83
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->getFeedbackStatus(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 85
    move-result p2

    .line 88
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mIcons:Landroid/util/SparseArray;

    .line 89
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object p2

    .line 94
    check-cast p2, Lcom/android/systemui/statusbar/notification/FeedbackIcon;

    .line 95
    if-nez p2, :cond_4

    .line 97
    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 100
    move-result-object p2

    .line 103
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 104
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 106
    move-result-object p2

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 112
    move-result p2

    .line 115
    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    .line 116
    move-result-object v2

    .line 119
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 120
    move-result-object v4

    .line 123
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 124
    move-object v5, p1

    .line 126
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/FeedbackInfo;->bindGuts(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_5
    :goto_0
    const/4 p0, 0x1

    .line 130
    return p0

    .line 131
    :catch_0
    move-exception p0

    .line 132
    const-string p1, "NotificationGutsManager"

    .line 133
    const-string p2, "error binding guts"

    .line 135
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 p0, 0x0

    .line 140
    return p0
    .line 141
.end method

.method public final closeAndSaveGuts(ZZZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOpenRunnable:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 11
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 13
    if-eqz v1, :cond_2

    .line 15
    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    if-nez p1, :cond_1

    .line 23
    :cond_0
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 25
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    .line 27
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    if-eqz p3, :cond_2

    .line 33
    :cond_1
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 35
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->shouldBeSavedOnClose()Z

    .line 37
    move-result p1

    .line 40
    const/4 p3, -0x1

    .line 41
    invoke-virtual {v0, p3, p3, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    .line 42
    :cond_2
    if-eqz p4, :cond_3

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 47
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 53
    const/4 p1, 0x0

    .line 55
    const/4 p2, 0x1

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 57
    :cond_3
    return-void
    .line 60
.end method

.method public initializeConversationNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;)V
    .locals 25

    .line 1
    move-object/from16 v7, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 4
    move-result-object v2

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 8
    move-result-object v14

    .line 11
    iget-object v3, v14, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 12
    iget-object v9, v3, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 14
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 20
    move-result v1

    .line 23
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    .line 26
    move-result-object v15

    .line 29
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 38
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 40
    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 42
    if-nez v0, :cond_0

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    move-object/from16 v18, v0

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    new-instance v10, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;

    .line 51
    const/4 v6, 0x0

    .line 53
    move-object v0, v10

    .line 54
    move-object/from16 v1, p0

    .line 55
    move-object v4, v9

    .line 57
    move-object/from16 v5, p1

    .line 58
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 60
    move-object/from16 v18, v10

    .line 63
    :goto_1
    new-instance v0, Lcom/android/settingslib/notification/ConversationIconFactory;

    .line 65
    move-object/from16 v19, v0

    .line 67
    const/4 v1, 0x0

    .line 69
    invoke-static {v8, v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    .line 70
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v1

    .line 76
    const v2, 0x7f070da0    # @dimen/notification_guts_conversation_icon_size '56.0dp'

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    move-result v1

    .line 83
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 84
    invoke-direct {v0, v8, v2, v15, v1}, Lcom/android/settingslib/notification/ConversationIconFactory;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Landroid/content/pm/PackageManager;I)V

    .line 86
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mUserManager:Landroid/os/UserManager;

    .line 89
    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 91
    iget-object v12, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationManager:Landroid/app/INotificationManager;

    .line 93
    iget-object v13, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    .line 95
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 97
    move-result-object v0

    .line 100
    move-object v1, v15

    .line 101
    move-object v15, v0

    .line 102
    iget-object v0, v14, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 103
    move-object/from16 v17, v0

    .line 105
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContextTracker:Lcom/android/systemui/settings/UserContextProvider;

    .line 107
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 109
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 111
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 114
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 116
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 118
    move-result v20

    .line 121
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMainHandler:Landroid/os/Handler;

    .line 122
    move-object/from16 v21, v0

    .line 124
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBgHandler:Landroid/os/Handler;

    .line 126
    move-object/from16 v22, v0

    .line 128
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBubblesManagerOptional:Ljava/util/Optional;

    .line 130
    move-object/from16 v23, v0

    .line 132
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 134
    move-object/from16 v24, v0

    .line 136
    move-object/from16 v8, p2

    .line 138
    move-object v0, v9

    .line 140
    move-object v9, v1

    .line 141
    move-object v1, v14

    .line 142
    move-object v14, v0

    .line 143
    move-object/from16 v16, v1

    .line 144
    invoke-virtual/range {v8 .. v24}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;Ljava/lang/String;Landroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$BubbleMetadata;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;Lcom/android/settingslib/notification/ConversationIconFactory;ZLandroid/os/Handler;Landroid/os/Handler;Ljava/util/Optional;Lcom/android/systemui/shade/ShadeController;)V

    .line 146
    return-void
    .line 149
.end method

.method public initializeNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V
    .locals 25

    .line 1
    move-object/from16 v7, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 4
    move-result-object v2

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 8
    move-result-object v0

    .line 11
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 12
    iget-object v13, v3, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 14
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 20
    move-result v1

    .line 23
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    .line 26
    move-result-object v9

    .line 29
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

    .line 30
    move-object/from16 v15, p1

    .line 32
    invoke-direct {v8, v7, v2, v3, v15}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 34
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 45
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 47
    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 49
    if-nez v0, :cond_0

    .line 51
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    move-object/from16 v17, v0

    .line 55
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    new-instance v10, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;

    .line 58
    const/4 v6, 0x2

    .line 60
    move-object v0, v10

    .line 61
    move-object/from16 v1, p0

    .line 62
    move-object v4, v13

    .line 64
    move-object/from16 v5, p1

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 67
    move-object/from16 v17, v10

    .line 70
    :goto_1
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationManager:Landroid/app/INotificationManager;

    .line 72
    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    .line 74
    iget-object v12, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 82
    move-result-object v14

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    .line 86
    move-result-object v0

    .line 89
    move-object v15, v0

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 91
    move-result-object v16

    .line 94
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 95
    move-object/from16 v19, v0

    .line 97
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 99
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 101
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 103
    move-result v20

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIsNonblockable()Z

    .line 107
    move-result v21

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 111
    move-result-object v0

    .line 114
    const/4 v1, 0x1

    .line 115
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mHighPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 116
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Z)Z

    .line 118
    move-result v22

    .line 121
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 122
    move-object/from16 v23, v0

    .line 124
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 126
    move-object/from16 v24, v0

    .line 128
    move-object v0, v8

    .line 130
    move-object/from16 v8, p2

    .line 131
    move-object/from16 v18, v0

    .line 133
    invoke-virtual/range {v8 .. v24}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;Lcom/android/internal/logging/UiEventLogger;ZZZLcom/android/systemui/statusbar/notification/AssistantFeedbackController;Lcom/android/internal/logging/MetricsLogger;)V

    .line 135
    return-void
    .line 138
.end method

.method public initializePartialConversationNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;)V
    .locals 14

    .line 1
    move-object v7, p0

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 3
    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    move-result-object v0

    .line 10
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 11
    iget-object v8, v3, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 13
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 19
    move-result v1

    .line 22
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    .line 25
    move-result-object v9

    .line 28
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 37
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 39
    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 41
    if-nez v0, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    move-object v11, v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    new-instance v10, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;

    .line 49
    const/4 v6, 0x1

    .line 51
    move-object v0, v10

    .line 52
    move-object v1, p0

    .line 53
    move-object v4, v8

    .line 54
    move-object v5, p1

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 56
    move-object v11, v10

    .line 59
    :goto_1
    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 62
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    .line 70
    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 74
    move-result-object v10

    .line 77
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 78
    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 80
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 82
    move-result v12

    .line 85
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIsNonblockable()Z

    .line 86
    move-result v13

    .line 89
    move-object/from16 v4, p2

    .line 90
    move-object v5, v9

    .line 92
    move-object v7, v8

    .line 93
    move-object v8, v0

    .line 94
    move-object v9, v1

    .line 95
    invoke-virtual/range {v4 .. v13}, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->bindNotification(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;ZZ)V

    .line 96
    return-void
    .line 99
.end method

.method public final initializeSnoozeView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 12
    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 14
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 16
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 18
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    .line 20
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 23
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 26
    move-result-object v1

    .line 29
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 30
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getSnoozeCriteria()Ljava/util/List;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSnoozeOptions(Ljava/util/List;)V

    .line 36
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda4;

    .line 39
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 41
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;)V

    .line 44
    return-void
    .line 47
.end method

.method public final openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 10

    .line 1
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 14
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->needsFalsingProtection()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 22
    instance-of v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 24
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 29
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 31
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda0;

    .line 33
    const/4 v9, 0x0

    .line 35
    move-object v3, v0

    .line 36
    move-object v4, p0

    .line 37
    move-object v5, p1

    .line 38
    move v6, p2

    .line 39
    move v7, p3

    .line 40
    move-object v8, p4

    .line 41
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;I)V

    .line 42
    const/4 p2, 0x0

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 46
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 49
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x1

    .line 53
    const/4 v8, 0x1

    .line 54
    move-object v4, v0

    .line 55
    invoke-interface/range {v3 .. v8}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 56
    return v2

    .line 59
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->openGutsInternal(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    .line 60
    move-result p0

    .line 63
    return p0
    .line 64
.end method

.method public openGutsInternal(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 10

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    const-string p0, "NotificationGutsManager"

    .line 14
    const-string p1, "Trying to show notification guts, but not attached to window"

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return v1

    .line 21
    :cond_1
    move-object v4, p1

    .line 22
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 23
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLongPressListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$LongPressListener;

    .line 25
    const/4 v9, 0x1

    .line 27
    if-nez v0, :cond_2

    .line 28
    move v0, v1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    .line 32
    move-result v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    move v0, v9

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 40
    if-eqz v0, :cond_5

    .line 42
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 44
    if-eqz v0, :cond_4

    .line 46
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    .line 48
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    move v0, v9

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    move v0, v1

    .line 56
    :goto_0
    if-eqz v0, :cond_5

    .line 57
    move v0, v9

    .line 59
    goto :goto_1

    .line 60
    :cond_5
    move v0, v1

    .line 61
    :goto_1
    xor-int/2addr v0, v9

    .line 62
    :goto_2
    if-eqz v0, :cond_6

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 65
    :cond_6
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    .line 68
    move-result p1

    .line 71
    if-eqz p1, :cond_7

    .line 72
    invoke-virtual {p0, v1, v1, v9, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    .line 74
    return v1

    .line 77
    :cond_7
    iget-object p1, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 78
    if-nez p1, :cond_8

    .line 80
    iget-object p1, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 84
    :cond_8
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 87
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 91
    invoke-virtual {p0, v4, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    .line 93
    move-result v0

    .line 96
    if-nez v0, :cond_9

    .line 97
    return v1

    .line 99
    :cond_9
    if-nez p1, :cond_a

    .line 100
    return v1

    .line 102
    :cond_a
    const/4 v0, 0x4

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;

    .line 107
    move-object v2, v0

    .line 109
    move-object v3, p0

    .line 110
    move-object v5, p1

    .line 111
    move v6, p2

    .line 112
    move v7, p3

    .line 113
    move-object v8, p4

    .line 114
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 115
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOpenRunnable:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;

    .line 118
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 120
    return v9
    .line 123
.end method

.method public final startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 7

    .line 1
    new-instance v4, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 4
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v0, "android.provider.extra.APP_PACKAGE"

    .line 9
    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string p1, "app_uid"

    .line 14
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    if-eqz p3, :cond_0

    .line 19
    new-instance p1, Landroid/os/Bundle;

    .line 21
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 23
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    const-string v1, ":settings:fragment_args_key"

    .line 30
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 35
    move-result-object p3

    .line 38
    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string p3, ":settings:show_fragment_args"

    .line 42
    invoke-virtual {v4, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 47
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 49
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 53
    const/4 p3, 0x1

    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-virtual {p1, p3, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->shouldAnimateLaunch(ZZ)Z

    .line 57
    move-result v3

    .line 60
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;

    .line 61
    move-object v0, p1

    .line 63
    move-object v1, p0

    .line 64
    move-object v2, p4

    .line 65
    move v5, p2

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/content/Intent;I)V

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 70
    const/4 p2, 0x0

    .line 72
    invoke-interface {p0, p1, p2, v6}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 73
    return-void
    .line 76
.end method

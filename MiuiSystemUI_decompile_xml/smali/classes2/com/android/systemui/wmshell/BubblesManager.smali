.class public final Lcom/android/systemui/wmshell/BubblesManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

.field public final mCallbacks:Ljava/util/List;

.field public final mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final mContext:Landroid/content/Context;

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mNotifPipelineFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

.field public final mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mNotificationManager:Landroid/app/INotificationManager;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

.field public final mSysuiMainExecutor:Ljava/util/concurrent/Executor;

.field public final mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

.field public final mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/Bubbles;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/ShadeController;Lcom/android/internal/statusbar/IStatusBarService;Landroid/app/INotificationManager;Landroid/service/dreams/IDreamManager;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Ljava/util/concurrent/Executor;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object v2, p3

    .line 4
    move-object v3, p4

    .line 5
    move-object/from16 v4, p12

    .line 6
    move-object/from16 v5, p18

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCallbacks:Ljava/util/List;

    .line 18
    move-object v6, p1

    .line 20
    iput-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    .line 21
    iput-object v1, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    .line 23
    iput-object v2, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 25
    move-object v6, p5

    .line 27
    iput-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 28
    move-object v6, p7

    .line 30
    iput-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    .line 31
    move-object/from16 v6, p8

    .line 33
    iput-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 35
    move-object/from16 v6, p9

    .line 37
    iput-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 39
    move-object/from16 v6, p10

    .line 41
    iput-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    .line 43
    iput-object v4, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotifUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 45
    move-object/from16 v6, p13

    .line 47
    iput-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mCommonNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 49
    move-object/from16 v6, p17

    .line 51
    iput-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotifPipelineFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    .line 53
    iput-object v5, v0, Lcom/android/systemui/wmshell/BubblesManager;->mSysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 55
    if-nez p6, :cond_0

    .line 57
    const-string/jumbo v6, "statusbar"

    .line 59
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 62
    move-result-object v6

    .line 65
    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 66
    move-result-object v6

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move-object v6, p6

    .line 71
    :goto_0
    iput-object v6, v0, Lcom/android/systemui/wmshell/BubblesManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 72
    new-instance v6, Lcom/android/systemui/wmshell/BubblesManager$5;

    .line 74
    invoke-direct {v6, p0}, Lcom/android/systemui/wmshell/BubblesManager$5;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    .line 76
    move-object/from16 v7, p14

    .line 79
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 81
    new-instance v6, Lcom/android/systemui/wmshell/BubblesManager$1;

    .line 84
    invoke-direct {v6, p0, p4, p2}, Lcom/android/systemui/wmshell/BubblesManager$1;-><init>(Lcom/android/systemui/wmshell/BubblesManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/wm/shell/bubbles/Bubbles;)V

    .line 86
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 89
    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 91
    new-instance v3, Lcom/android/systemui/wmshell/BubblesManager$2;

    .line 94
    invoke-direct {v3, p0}, Lcom/android/systemui/wmshell/BubblesManager$2;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    .line 96
    move-object/from16 v6, p11

    .line 99
    check-cast v6, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 101
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 103
    new-instance v3, Lcom/android/systemui/wmshell/BubblesManager$3;

    .line 106
    invoke-direct {v3, p0}, Lcom/android/systemui/wmshell/BubblesManager$3;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    .line 108
    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 111
    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    .line 113
    check-cast v4, Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v3, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda0;

    .line 120
    invoke-direct {v3, p0}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    .line 122
    iput-object v3, v0, Lcom/android/systemui/wmshell/BubblesManager;->mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    .line 125
    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 127
    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    .line 129
    new-instance v2, Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 132
    move-object/from16 v3, p15

    .line 134
    invoke-direct {v2, p0, v5, v3}, Lcom/android/systemui/wmshell/BubblesManager$4;-><init>(Lcom/android/systemui/wmshell/BubblesManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/model/SysUiState;)V

    .line 136
    move-object v0, v1

    .line 139
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 140
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 142
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 144
    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda14;

    .line 146
    const/4 v4, 0x2

    .line 148
    invoke-direct {v3, v4, v0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 149
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 152
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 154
    return-void
    .line 157
.end method

.method public static areBubblesEnabled(Landroid/content/Context;Landroid/os/UserHandle;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    move-result v0

    .line 5
    const-string v1, "notification_bubbles"

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-gez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p0

    .line 15
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    move-result p0

    .line 19
    if-ne p0, v2, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move v2, v3

    .line 23
    :goto_0
    return v2

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 29
    move-result p1

    .line 32
    invoke-static {p0, v1, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 33
    move-result p0

    .line 36
    if-ne p0, v2, :cond_2

    .line 37
    goto :goto_1

    .line 39
    :cond_2
    move v2, v3

    .line 40
    :goto_1
    return v2
    .line 41
.end method


# virtual methods
.method public notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/wm/shell/bubbles/BubbleEntry;

    .line 2
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 4
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotifPipelineFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;->sysPropFlags:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    .line 10
    sget-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->ALLOW_DISMISS_ONGOING:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    .line 12
    invoke-interface {p0, v0}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 20
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isNonDismissable()Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    const/4 p0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 30
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 32
    move-result p0

    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->legacyIsDismissableRecursive()Z

    .line 38
    move-result p0

    .line 41
    :goto_0
    move v3, p0

    .line 42
    const/16 p0, 0x40

    .line 43
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    .line 45
    move-result v4

    .line 48
    const/16 p0, 0x100

    .line 49
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    .line 51
    move-result v5

    .line 54
    const/16 p0, 0x10

    .line 55
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    .line 57
    move-result v6

    .line 60
    move-object v0, v7

    .line 61
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/bubbles/BubbleEntry;-><init>(Lcom/android/systemui/statusbar/notification/ExpandedNotification;Landroid/service/notification/NotificationListenerService$Ranking;ZZZZ)V

    .line 62
    return-object v7
    .line 65
.end method

.method public final onUserChangedBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 6
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 10
    move-result v1

    .line 13
    if-eqz v0, :cond_4

    .line 14
    if-nez v2, :cond_0

    .line 16
    goto :goto_2

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    .line 19
    if-nez p2, :cond_1

    .line 22
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 24
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 26
    move-result-object v3

    .line 29
    iget v4, v3, Landroid/app/Notification;->flags:I

    .line 30
    and-int/lit16 v4, v4, -0x1001

    .line 32
    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 37
    if-eqz v3, :cond_2

    .line 39
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 41
    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    .line 43
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 49
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 51
    move-result-object v3

    .line 54
    iget v4, v3, Landroid/app/Notification;->flags:I

    .line 55
    or-int/lit16 v4, v4, 0x1000

    .line 57
    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 59
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    .line 61
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 64
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 66
    const/4 v5, 0x3

    .line 68
    invoke-interface {v3, v4, p2, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    iget-object v3, p0, Lcom/android/systemui/wmshell/BubblesManager;->mContext:Landroid/content/Context;

    .line 72
    iget-object v4, p0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationManager:Landroid/app/INotificationManager;

    .line 74
    invoke-static {v3, v4, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationChannelHelper;->createConversationChannelIfNeeded(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    .line 76
    move-result-object v0

    .line 79
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 80
    :try_start_1
    invoke-interface {v4, v2, v1}, Landroid/app/INotificationManager;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    .line 83
    move-result v3

    .line 86
    if-eqz p2, :cond_3

    .line 87
    if-nez v3, :cond_3

    .line 89
    const/4 v3, 0x2

    .line 91
    invoke-interface {v4, v2, v1, v3}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 92
    :cond_3
    invoke-interface {v4, v2, v1, v0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    goto :goto_1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    const-string v1, "Bubbles"

    .line 100
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 105
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_1
    if-eqz p2, :cond_4

    .line 109
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 111
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 113
    const/4 p2, 0x1

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/ShadeControllerImpl;->collapseShade(Z)V

    .line 116
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 119
    if-eqz p0, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateBubbleButton()V

    .line 123
    :cond_4
    :goto_2
    return-void
    .line 126
.end method

.method public final shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mVisualInterruptionDecisionProvider:Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper;->makeAndLogBubbleDecision(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderWrapper$DecisionImpl;->getShouldInterrupt()Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

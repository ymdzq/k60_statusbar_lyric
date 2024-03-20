.class public abstract Lcom/android/systemui/media/controls/ui/KeyguardMediaController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final context:Landroid/content/Context;

.field public final lockScreenMediaPlayerUri:Landroid/net/Uri;

.field public final mediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

.field public final notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public notificationSectionsManager:Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

.field public splitShadeContainer:Landroid/view/ViewGroup;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public useSplitShade:Z

.field public visibilityChangedListener:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/media/controls/ui/MediaHost;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 5
    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 7
    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 9
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->context:Landroid/content/Context;

    .line 11
    iput-object p8, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 13
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 15
    new-instance p4, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$1;

    .line 17
    move-object p6, p0

    .line 19
    check-cast p6, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;

    .line 20
    invoke-direct {p4, p6}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;)V

    .line 22
    check-cast p5, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 25
    invoke-virtual {p5, p4}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 27
    new-instance p4, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$2;

    .line 30
    invoke-direct {p4, p6}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$2;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;)V

    .line 32
    check-cast p7, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 35
    invoke-virtual {p7, p4}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 37
    new-instance p4, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$settingsObserver$1;

    .line 40
    invoke-direct {p4, p6, p2}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$settingsObserver$1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;Landroid/os/Handler;)V

    .line 42
    const-string p2, "media_controls_lock_screen"

    .line 45
    const/4 p5, -0x1

    .line 47
    invoke-interface {p8, p2, p4, p5}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    .line 48
    const/high16 p4, 0x3f800000    # 1.0f

    .line 51
    invoke-virtual {p3, p4}, Lcom/android/systemui/media/controls/ui/MediaHost;->setExpansion(F)V

    .line 53
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    iget-object p5, p3, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 58
    iget-boolean p6, p5, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 60
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    move-result-object p6

    .line 65
    invoke-virtual {p4, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result p4

    .line 69
    const/4 p6, 0x1

    .line 70
    if-nez p4, :cond_0

    .line 71
    iput-boolean p6, p5, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 73
    iget-object p4, p5, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 75
    if-eqz p4, :cond_0

    .line 77
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 79
    :cond_0
    iget-boolean p4, p5, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    .line 82
    if-ne p4, p6, :cond_1

    .line 84
    goto :goto_0

    .line 86
    :cond_1
    iput-boolean p6, p5, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    .line 87
    iget-object p4, p5, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 89
    if-eqz p4, :cond_2

    .line 91
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 93
    :cond_2
    :goto_0
    const/4 p4, 0x2

    .line 96
    invoke-virtual {p3, p4}, Lcom/android/systemui/media/controls/ui/MediaHost;->init(I)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 104
    move-result p1

    .line 107
    iget-boolean p3, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->useSplitShade:Z

    .line 108
    if-ne p3, p1, :cond_3

    .line 110
    goto :goto_1

    .line 112
    :cond_3
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->useSplitShade:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->reattachHostView()V

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->refreshMediaPosition()V

    .line 118
    :goto_1
    const/4 p1, -0x2

    .line 121
    invoke-interface {p8, p6, p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getBoolForUser(ZILjava/lang/String;)Z

    .line 122
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    move-result-object p1

    .line 128
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->lockScreenMediaPlayerUri:Landroid/net/Uri;

    .line 129
    return-void
    .line 131
.end method

.method public static synthetic getUseSplitShade$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final attachSinglePaneContainer(Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 9
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->notificationSectionsManager:Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;

    .line 17
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;->setNotificationSectionsManager(Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;)V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 22
    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$attachSinglePaneContainer$1;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController$attachSinglePaneContainer$1;-><init>(Lcom/android/systemui/media/controls/ui/KeyguardMediaController;)V

    .line 28
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    .line 31
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->reattachHostView()V

    .line 36
    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 39
    iget-boolean v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->refreshMediaPosition()V

    .line 43
    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {p1}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    move-result-object p0

    .line 55
    const/4 p1, -0x2

    .line 56
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    const/4 p1, -0x1

    .line 59
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    :cond_3
    return-void
    .line 62
.end method

.method public final reattachHostView()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->useSplitShade:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 13
    :goto_0
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v4

    .line 22
    if-ne v4, v2, :cond_1

    .line 23
    move v4, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v4, v3

    .line 27
    :goto_1
    if-eqz v4, :cond_2

    .line 28
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    :cond_2
    if-eqz v0, :cond_3

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 35
    move-result v1

    .line 38
    if-nez v1, :cond_3

    .line 39
    goto :goto_2

    .line 41
    :cond_3
    move v2, v3

    .line 42
    :goto_2
    if-eqz v2, :cond_6

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 47
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 51
    move-result-object v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 57
    if-eqz v2, :cond_4

    .line 59
    check-cast v1, Landroid/view/ViewGroup;

    .line 61
    goto :goto_3

    .line 63
    :cond_4
    const/4 v1, 0x0

    .line 64
    :goto_3
    if-eqz v1, :cond_5

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 67
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 74
    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_6
    return-void
    .line 81
.end method

.method public final refreshMediaPosition()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 4
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 15
    iget-object v4, v3, Lcom/android/systemui/media/controls/ui/MediaHost;->mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 17
    iget-object v4, v4, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 19
    iget-object v4, v4, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaData:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 21
    const/4 v5, 0x0

    .line 23
    if-eqz v4, :cond_1

    .line 24
    iget-object v4, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    move-object v4, v5

    .line 29
    :goto_1
    const-class v6, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 30
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 35
    check-cast v6, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 36
    if-nez v4, :cond_2

    .line 38
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    goto :goto_3

    .line 43
    :cond_2
    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 44
    if-nez v6, :cond_3

    .line 46
    goto :goto_3

    .line 48
    :cond_3
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 49
    invoke-virtual {v6, v5, v7}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    .line 51
    move-result-object v5

    .line 54
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v5

    .line 58
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v6

    .line 62
    if-eqz v6, :cond_8

    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v6

    .line 68
    check-cast v6, Landroid/media/session/MediaController;

    .line 69
    if-nez v6, :cond_5

    .line 71
    goto :goto_2

    .line 73
    :cond_5
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 74
    move-result-object v7

    .line 77
    if-nez v7, :cond_6

    .line 78
    goto :goto_2

    .line 80
    :cond_6
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 81
    move-result-object v8

    .line 84
    if-nez v8, :cond_7

    .line 85
    goto :goto_2

    .line 87
    :cond_7
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 88
    move-result-object v6

    .line 91
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v6

    .line 95
    if-eqz v6, :cond_4

    .line 96
    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    .line 98
    move-result v6

    .line 101
    if-eqz v6, :cond_4

    .line 102
    const-string v6, "android.media.metadata.DURATION"

    .line 104
    invoke-virtual {v8, v6}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 106
    move-result-wide v6

    .line 109
    const-wide/16 v8, 0x0

    .line 110
    cmp-long v6, v6, v8

    .line 112
    if-lez v6, :cond_4

    .line 114
    move v5, v2

    .line 116
    goto :goto_4

    .line 117
    :cond_8
    :goto_3
    move v5, v1

    .line 118
    :goto_4
    sget-boolean v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 119
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 121
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mSeekBarDisabledPackages:Ljava/util/List;

    .line 123
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 125
    move-result v4

    .line 128
    const/high16 v6, 0x3f800000    # 1.0f

    .line 129
    if-nez v5, :cond_a

    .line 131
    if-nez v4, :cond_9

    .line 133
    goto :goto_5

    .line 135
    :cond_9
    const/4 v4, 0x0

    .line 136
    invoke-virtual {v3, v4}, Lcom/android/systemui/media/controls/ui/MediaHost;->setExpansion(F)V

    .line 137
    goto :goto_6

    .line 140
    :cond_a
    :goto_5
    invoke-virtual {v3, v6}, Lcom/android/systemui/media/controls/ui/MediaHost;->setExpansion(F)V

    .line 141
    :goto_6
    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 144
    iget-boolean v3, v3, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 146
    if-eqz v3, :cond_b

    .line 148
    if-eqz v0, :cond_c

    .line 150
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 152
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 154
    move-result v0

    .line 157
    if-nez v0, :cond_b

    .line 158
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->notificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 160
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 162
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    .line 164
    if-eqz v0, :cond_b

    .line 166
    goto :goto_7

    .line 168
    :cond_b
    move v2, v1

    .line 169
    :cond_c
    :goto_7
    const/16 v0, 0x8

    .line 170
    if-eqz v2, :cond_f

    .line 172
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->useSplitShade:Z

    .line 174
    if-eqz v2, :cond_d

    .line 176
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    .line 178
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->setVisibility(ILandroid/view/ViewGroup;)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 183
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->setVisibility(ILandroid/view/ViewGroup;)V

    .line 185
    goto :goto_9

    .line 188
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 189
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->setVisibility(ILandroid/view/ViewGroup;)V

    .line 191
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 194
    if-nez v1, :cond_e

    .line 196
    goto :goto_8

    .line 198
    :cond_e
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 199
    :goto_8
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    .line 202
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->setVisibility(ILandroid/view/ViewGroup;)V

    .line 204
    goto :goto_9

    .line 207
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->setVisibility(ILandroid/view/ViewGroup;)V

    .line 210
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->setVisibility(ILandroid/view/ViewGroup;)V

    .line 215
    :goto_9
    return-void
    .line 218
.end method

.method public final setVisibility(ILandroid/view/ViewGroup;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez p2, :cond_1

    .line 14
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    :goto_1
    if-nez v0, :cond_2

    .line 20
    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result p2

    .line 26
    if-eq p2, p1, :cond_4

    .line 27
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->visibilityChangedListener:Lkotlin/jvm/functions/Function1;

    .line 29
    if-eqz p0, :cond_4

    .line 31
    if-nez p1, :cond_3

    .line 33
    const/4 p1, 0x1

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    const/4 p1, 0x0

    .line 37
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object p1

    .line 41
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_4
    return-void
    .line 45
.end method

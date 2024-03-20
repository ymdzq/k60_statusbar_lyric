.class public final Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;
.super Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager$configurationListener$1;

.field public final keyguardMediaController:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public zenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

.field public final zenModeViewController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p3

    .line 4
    move-object v2, p4

    .line 5
    move-object/from16 v3, p6

    .line 6
    move-object/from16 v4, p7

    .line 8
    move-object/from16 v5, p8

    .line 10
    move-object/from16 v6, p9

    .line 12
    move-object/from16 v7, p10

    .line 14
    move-object/from16 v8, p11

    .line 16
    move-object/from16 v9, p12

    .line 18
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;-><init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/controls/ui/KeyguardMediaController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;)V

    .line 20
    move-object v0, p1

    .line 23
    iput-object v0, v10, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 24
    move-object v0, p2

    .line 26
    iput-object v0, v10, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 27
    move-object v0, p3

    .line 29
    iput-object v0, v10, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 30
    move-object v0, p4

    .line 32
    iput-object v0, v10, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->keyguardMediaController:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiKeyguardMediaController;

    .line 33
    move-object/from16 v0, p5

    .line 35
    iput-object v0, v10, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->zenModeViewController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager$configurationListener$1;

    .line 39
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;)V

    .line 41
    iput-object v0, v10, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->configurationListener:Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager$configurationListener$1;

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public final beginsSection(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->zenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 11
    const/4 v2, 0x0

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaContainerController:Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;->mediaContainerView:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 18
    if-eq p1, v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 24
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 26
    if-eq p1, v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 30
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 32
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 34
    if-eq p1, v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 38
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 40
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 42
    if-eq p1, v0, :cond_1

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    .line 46
    move-result-object p1

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    .line 50
    move-result-object p0

    .line 53
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result p0

    .line 57
    if-nez p0, :cond_0

    .line 58
    goto :goto_0

    .line 60
    :cond_0
    move p0, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    move p0, v1

    .line 63
    :goto_1
    if-eqz p0, :cond_2

    .line 64
    goto :goto_2

    .line 66
    :cond_2
    move v1, v2

    .line 67
    :cond_3
    :goto_2
    return v1
    .line 68
.end method

.method public final getBucket(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->zenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    const/16 p0, 0x8

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 13
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 17
    if-ne p1, v0, :cond_1

    .line 19
    const/4 p0, 0x7

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 29
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 31
    if-ne p1, v0, :cond_2

    .line 33
    const/4 p0, 0x2

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaContainerController:Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;

    .line 41
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;->mediaContainerView:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 43
    if-ne p1, v0, :cond_3

    .line 45
    const/4 p0, 0x1

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p0

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 53
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 55
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 57
    if-ne p1, v0, :cond_4

    .line 59
    const/4 p0, 0x4

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 67
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 71
    if-ne p1, p0, :cond_5

    .line 73
    const/4 p0, 0x6

    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object p0

    .line 79
    goto :goto_0

    .line 80
    :cond_5
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 81
    if-eqz p0, :cond_6

    .line 83
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 85
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 87
    move-result-object p0

    .line 90
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object p0

    .line 96
    goto :goto_0

    .line 97
    :cond_6
    const/4 p0, 0x0

    .line 98
    :goto_0
    return-object p0
    .line 99
.end method

.method public final getZenModeView()Lcom/android/systemui/statusbar/notification/zen/ZenModeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->zenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final reinflateViews()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 6
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->reinflateView(Landroid/view/ViewGroup;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 13
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 17
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 19
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->reinflateView(Landroid/view/ViewGroup;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 24
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 28
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 30
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->reinflateView(Landroid/view/ViewGroup;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 35
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 39
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->reinflateView(Landroid/view/ViewGroup;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 46
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaContainerController:Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;

    .line 50
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;->mediaContainerView:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 52
    const/4 v3, -0x1

    .line 54
    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    .line 57
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 60
    move-result-object v4

    .line 63
    if-ne v4, v0, :cond_0

    .line 64
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 66
    move-result v4

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 70
    goto :goto_0

    .line 73
    :cond_0
    move v4, v3

    .line 74
    :goto_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;->layoutInflater:Landroid/view/LayoutInflater;

    .line 75
    const v5, 0x7f0d0106    # @layout/keyguard_media_container 'res/layout/keyguard_media_container.xml'

    .line 77
    const/4 v6, 0x0

    .line 80
    invoke-virtual {v2, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    move-result-object v2

    .line 84
    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 85
    if-eq v4, v3, :cond_1

    .line 87
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 89
    :cond_1
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;->mediaContainerView:Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->keyguardMediaController:Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    .line 94
    invoke-virtual {v0, v2}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->attachSinglePaneContainer(Lcom/android/systemui/statusbar/notification/stack/MediaContainerView;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->reinflateZenModeView()V

    .line 99
    return-void
    .line 102
.end method

.method public final reinflateZenModeView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->zenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 14
    const/4 v2, -0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    .line 19
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    :cond_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 28
    move-result-object v3

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 32
    move-result-object v4

    .line 35
    if-ne v3, v4, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 38
    move-result-object v3

    .line 41
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 42
    move-result v3

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 46
    move-result-object v4

    .line 49
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_1
    move v3, v2

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 55
    move-result-object v1

    .line 58
    const/4 v4, 0x0

    .line 59
    const v5, 0x7f0d0118    # @layout/keyguard_zen_header 'res/layout/keyguard_zen_header.xml'

    .line 60
    invoke-virtual {v0, v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 67
    if-eq v3, v2, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getParent()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 71
    move-result-object v1

    .line 74
    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 75
    :cond_2
    check-cast v0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->zenModeViewController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

    .line 80
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->setController(Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;)V

    .line 84
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->builder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;

    .line 87
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 89
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;->activatableNotificationView(Lcom/android/systemui/statusbar/notification/zen/ZenModeView;)Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;

    .line 91
    move-result-object v2

    .line 94
    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;->build()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent;

    .line 95
    move-result-object v2

    .line 98
    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent;->getActivatableNotificationViewController()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 99
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 103
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->updateVisibility()V

    .line 106
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsManager;->zenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 109
    return-void
    .line 111
.end method

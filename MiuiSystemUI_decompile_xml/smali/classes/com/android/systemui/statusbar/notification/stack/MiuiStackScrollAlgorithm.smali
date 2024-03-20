.class public final Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;
.super Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLatestVisibleChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p2

    .line 10
    const v0, 0x7f070def    # @dimen/notification_section_group_divider_top_minus '-5.0dp'

    .line 11
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object p1

    .line 20
    const p2, 0x7f070dee    # @dimen/notification_section_group_divider_bottom_minus '-20.0dp'

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 27
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 33
    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$1;

    .line 35
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;)V

    .line 37
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 40
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 42
    const-class p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 45
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 51
    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$2;

    .line 53
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm;)V

    .line 55
    invoke-virtual {p1, p2}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->addCallback(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;)V

    .line 58
    return-void
    .line 61
.end method


# virtual methods
.method public final initView(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070d93    # @dimen/notification_divider_height '7.27dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    .line 14
    const v1, 0x7f070dc5    # @dimen/notification_min_height '106.0dp'

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result v1

    .line 22
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 23
    const v1, 0x7f050097    # @bool/notification_enable_clipping 'true'

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 28
    move-result v1

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mEnableNotificationClipping:Z

    .line 32
    const v1, 0x7f050014    # @bool/config_clipNotificationScrollToTop 'true'

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 37
    move-result v1

    .line 40
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    .line 41
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManagerInjector;->miuiHeadsUpInset(Landroid/content/Context;)I

    .line 43
    move-result v1

    .line 46
    int-to-float v1, v1

    .line 47
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 48
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    move-result-object v1

    .line 53
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 54
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mScreenHeight:I

    .line 56
    const v1, 0x7f070de0    # @dimen/notification_panel_top_paddings '@dimen/notification_side_paddings'

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 61
    move-result v1

    .line 64
    int-to-float v1, v1

    .line 65
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    .line 66
    const v1, 0x7f0703d1    # @dimen/heads_up_pinned_elevation '16.0dp'

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    move-result v1

    .line 74
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    .line 75
    const v1, 0x7f070dec    # @dimen/notification_section_divider_height '4.5dp'

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    move-result v1

    .line 83
    int-to-float v1, v1

    .line 84
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:F

    .line 85
    const v1, 0x7f070ded    # @dimen/notification_section_divider_height_lockscreen '4.0dp'

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    move-result v1

    .line 93
    int-to-float v1, v1

    .line 94
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeightOnLockscreen:F

    .line 95
    const v1, 0x7f070dd7    # @dimen/notification_panel_margin_bottom '0.0dp'

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 100
    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getQuickQsOffsetHeight(Landroid/content/Context;)I

    .line 103
    move-result p1

    .line 106
    int-to-float p1, p1

    .line 107
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mQuickQsOffsetHeight:F

    .line 108
    const p1, 0x7f070d8f    # @dimen/notification_corner_radius_small '4.0dp'

    .line 110
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 113
    move-result p1

    .line 116
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mSmallCornerRadius:F

    .line 117
    const p1, 0x7f070d8e    # @dimen/notification_corner_radius '28.0dp'

    .line 119
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 122
    move-result p1

    .line 125
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mLargeCornerRadius:F

    .line 126
    const-class p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 128
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    move-result-object p1

    .line 133
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 134
    iget-boolean p1, p1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 136
    if-nez p1, :cond_0

    .line 138
    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mNotificationScrimPadding:F

    .line 141
    :cond_0
    return-void
    .line 143
.end method

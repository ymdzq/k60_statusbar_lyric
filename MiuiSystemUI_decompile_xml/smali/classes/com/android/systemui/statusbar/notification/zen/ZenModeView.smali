.class public Lcom/android/systemui/statusbar/notification/zen/ZenModeView;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/SwipeableView;


# static fields
.field public static final TRANSITION_ALPHA:Lcom/android/systemui/statusbar/notification/zen/ZenModeView$2;


# instance fields
.field public final CONTENT_ALL_TIME:Ljava/lang/String;

.field public final CONTENT_KEYGUARD:Ljava/lang/String;

.field public mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field public mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field public mContent:Landroid/view/ViewGroup;

.field public mController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

.field public mFolme:Lmiuix/animation/IStateStyle;

.field public mHiddenConfig:Lmiuix/animation/base/AnimConfig;

.field public mHiddenState:Lmiuix/animation/controller/AnimState;

.field public mRealContent:Landroid/view/View;

.field public mShownConfig:Lmiuix/animation/base/AnimConfig;

.field public mShownState:Lmiuix/animation/controller/AnimState;

.field public volatile mVisibility:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->TRANSITION_ALPHA:Lcom/android/systemui/statusbar/notification/zen/ZenModeView$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    const p2, 0x7f130d2e    # @string/zen_mode_warnings_all_time_content 'Notifications and calls will be silenced'

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->CONTENT_ALL_TIME:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 21
    const p2, 0x7f130d2f    # @string/zen_mode_warnings_keyguard_content 'Notifications and calls will be silenced when device is locked'

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->CONTENT_KEYGUARD:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 31
    move-result p1

    .line 34
    iput p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mVisibility:I

    .line 35
    return-void
    .line 37
.end method


# virtual methods
.method public final createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final doAfterAnim(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mContent:Landroid/view/ViewGroup;

    .line 5
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    if-nez p1, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->loadContentViews()V

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->resetContentText()V

    .line 21
    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    move-result p1

    .line 28
    if-eqz p1, :cond_3

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mContent:Landroid/view/ViewGroup;

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 33
    :cond_3
    :goto_0
    return-void
    .line 36
.end method

.method public bridge synthetic getBottomRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getCanSwipe()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mContent:Landroid/view/ViewGroup;

    .line 2
    return-object p0
    .line 4
.end method

.method public bridge synthetic getMaxRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getMaxRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getTopRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getTranslation()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getUpdatedRadii()[F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getUpdatedRadii()[F

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final hasFinishedInitialization()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final loadContentViews()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mContent:Landroid/view/ViewGroup;

    .line 10
    const v2, 0x7f0d00e7    # @layout/item_zen_mode 'res/layout/item_zen_mode.xml'

    .line 12
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mRealContent:Landroid/view/View;

    .line 20
    const v1, 0x7f0a0ae1    # @id/zen_quit

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/TextView;

    .line 29
    new-instance v1, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$$ExternalSyntheticLambda1;

    .line 31
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/zen/ZenModeView;I)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->updateBackgroundBg()V

    .line 39
    return-void
    .line 42
.end method

.method public final onFinishInflate()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0223    # @id/id_0x7f0a0223

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mContent:Landroid/view/ViewGroup;

    .line 14
    new-instance v0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$$ExternalSyntheticLambda1;

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/zen/ZenModeView;I)V

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f0a0102    # @id/backgroundNormal

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 32
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 34
    const v0, 0x7f0a0101    # @id/backgroundDimmed

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->updateBackgroundBg()V

    .line 47
    filled-new-array {p0}, [Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 54
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 58
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mFolme:Lmiuix/animation/IStateStyle;

    .line 62
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 64
    const-string/jumbo v2, "zen_mode_shown"

    .line 66
    invoke-direct {v0, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 69
    sget-object v2, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->TRANSITION_ALPHA:Lcom/android/systemui/statusbar/notification/zen/ZenModeView$2;

    .line 72
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 74
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 76
    move-result-object v0

    .line 79
    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 80
    invoke-virtual {v0, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 82
    move-result-object v0

    .line 85
    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 86
    invoke-virtual {v0, v6, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 88
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mShownState:Lmiuix/animation/controller/AnimState;

    .line 92
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 94
    const-string/jumbo v3, "zen_mode_hidden"

    .line 96
    invoke-direct {v0, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 99
    const-wide v3, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 102
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 107
    move-result-object v0

    .line 110
    const-wide v2, 0x3fecccccc0000000L    # 0.8999999761581421

    .line 111
    invoke-virtual {v0, v5, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 116
    move-result-object v0

    .line 119
    invoke-virtual {v0, v6, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 120
    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mHiddenState:Lmiuix/animation/controller/AnimState;

    .line 124
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 126
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 128
    const/4 v2, 0x1

    .line 131
    new-array v3, v2, [F

    .line 132
    const/high16 v4, 0x437a0000    # 250.0f

    .line 134
    aput v4, v3, v1

    .line 136
    const/4 v5, -0x1

    .line 138
    invoke-virtual {v0, v5, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 139
    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mShownConfig:Lmiuix/animation/base/AnimConfig;

    .line 143
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 145
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 147
    new-array v2, v2, [F

    .line 150
    aput v4, v2, v1

    .line 152
    invoke-virtual {v0, v5, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 154
    move-result-object v0

    .line 157
    new-instance v1, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$1;

    .line 158
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$1;-><init>(Lcom/android/systemui/statusbar/notification/zen/ZenModeView;)V

    .line 160
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 163
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 167
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mHiddenConfig:Lmiuix/animation/base/AnimConfig;

    .line 171
    return-void
    .line 173
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    if-eq v0, v1, :cond_2

    .line 21
    const/4 v1, 0x3

    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/zen/ZenModeView;)V

    .line 29
    const-wide/16 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 38
    move-result-object v0

    .line 41
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mScaleX:F

    .line 42
    const v1, 0x3f733333    # 0.95f

    .line 44
    cmpl-float v0, v1, v0

    .line 47
    if-eqz v0, :cond_5

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 51
    move-result-object v0

    .line 54
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->touchAnimating:Z

    .line 55
    if-nez v0, :cond_5

    .line 57
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 59
    if-eqz v0, :cond_4

    .line 61
    const-string v0, "ZenModeView"

    .line 63
    const-string v2, "animateTouchScale scale=$scale, changing=$isGroupExpansionChanging"

    .line 65
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_4
    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/notification/RowAnimationUtils;->startTouchAnimationIfNeed(FLcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 70
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 73
    move-result p0

    .line 76
    return p0
    .line 77
.end method

.method public final performAddAnimation(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mFolme:Lmiuix/animation/IStateStyle;

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mFolme:Lmiuix/animation/IStateStyle;

    .line 10
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mShownState:Lmiuix/animation/controller/AnimState;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mShownConfig:Lmiuix/animation/base/AnimConfig;

    .line 14
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 16
    move-result-object p0

    .line 19
    invoke-interface {p1, p2, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 20
    return-void
    .line 23
.end method

.method public final performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mFolme:Lmiuix/animation/IStateStyle;

    .line 2
    const-wide/16 p2, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 6
    iget p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mVisibility:I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->doAfterAnim(I)V

    .line 10
    return-wide p2

    .line 13
    :cond_0
    invoke-interface {p1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mFolme:Lmiuix/animation/IStateStyle;

    .line 17
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mHiddenState:Lmiuix/animation/controller/AnimState;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mHiddenConfig:Lmiuix/animation/base/AnimConfig;

    .line 21
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 23
    move-result-object p0

    .line 26
    invoke-interface {p1, p4, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 27
    return-wide p2
    .line 30
.end method

.method public final resetContentText()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 9
    const-string/jumbo v1, "zen_mode_intercepted_when_unlocked"

    .line 10
    const/4 v2, -0x1

    .line 13
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    move-result v0

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    const-string p0, "ZenModeView"

    .line 20
    const-string/jumbo v0, "resetContentText: unable to get KEY_ZEN_MODE_INTERCEPT_SCENE"

    .line 22
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void

    .line 28
    :cond_0
    const v1, 0x7f0a0adc    # @id/zen_content

    .line 29
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v1

    .line 35
    check-cast v1, Landroid/widget/TextView;

    .line 36
    if-eqz v1, :cond_2

    .line 38
    const/4 v2, 0x1

    .line 40
    if-ne v0, v2, :cond_1

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->CONTENT_ALL_TIME:Ljava/lang/String;

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->CONTENT_KEYGUARD:Ljava/lang/String;

    .line 46
    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_2
    return-void
    .line 51
.end method

.method public final resetTranslation()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6
    return-void
    .line 9
.end method

.method public setController(Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

    .line 2
    return-void
    .line 4
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mVisibility:I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final updateBackgroundBg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mRealContent:Landroid/view/View;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mRealContent:Landroid/view/View;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 22
    const v2, 0x7f0816ad    # @drawable/notification_heads_up_transparent_bg 'res/drawable/notification_heads_up_transparent_bg.xml'

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v0

    .line 40
    const v1, 0x7f03009b    # @array/notification_element_blend_keyguard_colors

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 44
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

    .line 48
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 50
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 52
    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 54
    const/4 v2, 0x2

    .line 56
    if-ne v1, v2, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v0

    .line 66
    const v1, 0x7f03009c    # @array/notification_element_blend_shade_colors

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 70
    move-result-object v0

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mRealContent:Landroid/view/View;

    .line 78
    const/4 v2, 0x0

    .line 80
    invoke-static {v1, p0, v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyElementViewBlend(Landroid/content/Context;Landroid/view/View;[IZ)V

    .line 81
    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 85
    invoke-static {v0}, Lcom/miui/systemui/util/MiBlurCompat;->clearMiBackgroundBlendColorCompat(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mRealContent:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v1

    .line 95
    const v2, 0x7f0819ed    # @drawable/zen_mode_bg 'res/drawable/zen_mode_bg.xml'

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 99
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mBackgroundNormal:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 106
    const v1, 0x7f0816af    # @drawable/notification_item_bg 'res/drawable/notification_item_bg.xml'

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 114
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setCustomBackground(I)V

    .line 116
    :goto_0
    return-void
    .line 119
.end method

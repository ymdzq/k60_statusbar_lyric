.class public final Lcom/android/systemui/qs/customize/QSCustomizerController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/qs/customize/QSCustomizerController$3;

.field public final mKeyguardCallback:Lcom/android/systemui/qs/customize/QSCustomizerController$2;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final mOnMenuItemClickListener:Lcom/android/systemui/qs/customize/QSCustomizerController$1;

.field public final mQsHost:Lcom/android/systemui/qs/QSHost;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

.field public final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field public final mToolbar:Landroid/widget/Toolbar;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizerController$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mOnMenuItemClickListener:Lcom/android/systemui/qs/customize/QSCustomizerController$1;

    .line 10
    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizerController$2;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardCallback:Lcom/android/systemui/qs/customize/QSCustomizerController$2;

    .line 17
    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizerController$3;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationListener:Lcom/android/systemui/qs/customize/QSCustomizerController$3;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 26
    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mQsHost:Lcom/android/systemui/qs/QSHost;

    .line 28
    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 30
    iput-object p5, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 32
    iput-object p6, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 34
    iput-object p7, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 36
    iput-object p8, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 38
    iput-object p9, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 40
    const p2, 0x10201c1    # @android:id/action_bar_container

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/Toolbar;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    .line 51
    return-void
    .line 53
.end method


# virtual methods
.method public final hide()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 2
    iget v0, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    check-cast v3, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 15
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    .line 17
    move-result v4

    .line 20
    if-eqz v4, :cond_8

    .line 21
    sget-object v4, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_CLOSED:Lcom/android/systemui/qs/QSEditEvent;

    .line 23
    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 25
    invoke-interface {v5, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 27
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    .line 30
    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {v4}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 34
    :cond_1
    iput-boolean v2, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 37
    iget-object v4, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 39
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    .line 41
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 44
    iget-boolean v4, v4, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    .line 46
    if-eqz v4, :cond_2

    .line 48
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 50
    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mQsHost:Lcom/android/systemui/qs/QSHost;

    .line 52
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSHost;)V

    .line 54
    :cond_2
    iget-boolean v4, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 57
    if-eqz v4, :cond_5

    .line 59
    iput-boolean v2, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 61
    iget-object v4, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 63
    iget-object v4, v4, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    .line 65
    if-eqz v4, :cond_3

    .line 67
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 69
    :cond_3
    iput-boolean v2, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 72
    if-eqz v0, :cond_4

    .line 74
    iget-object v4, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 76
    iget v5, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    .line 78
    iget v6, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 80
    iget-object v7, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Lcom/android/systemui/qs/customize/QSCustomizer$1;

    .line 82
    invoke-virtual {v4, v5, v6, v2, v7}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)J

    .line 84
    move-result-wide v4

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/16 v4, 0x8

    .line 89
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    const-wide/16 v4, 0x0

    .line 94
    :goto_1
    iget-object v6, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 96
    invoke-interface {v6, v0}, Lcom/android/systemui/plugins/qs/QSContainerController;->setCustomizerAnimating(Z)V

    .line 98
    iget-object v0, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 101
    invoke-interface {v0, v2, v4, v5}, Lcom/android/systemui/plugins/qs/QSContainerController;->setCustomizerShowing(ZJ)V

    .line 103
    :cond_5
    iget-boolean v0, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    .line 106
    if-eqz v0, :cond_6

    .line 108
    iget-boolean v0, v3, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 110
    if-eqz v0, :cond_6

    .line 112
    goto :goto_2

    .line 114
    :cond_6
    move v1, v2

    .line 115
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 116
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 118
    if-ne v2, v1, :cond_7

    .line 120
    goto :goto_3

    .line 122
    :cond_7
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 123
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 125
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 128
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 130
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardCallback:Lcom/android/systemui/qs/customize/QSCustomizerController$2;

    .line 132
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 134
    :cond_8
    return-void
    .line 137
.end method

.method public final isCustomizing()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 6
    if-nez v0, :cond_1

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 10
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
    .line 18
.end method

.method public final onViewAttached()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/phone/LightBarController;)V

    .line 16
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 19
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 21
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationListener:Lcom/android/systemui/qs/customize/QSCustomizerController$3;

    .line 23
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 28
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 30
    iput-object v2, v1, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 37
    const v3, 0x7f070ffc    # @dimen/qs_tile_margin_horizontal '8.0dp'

    .line 38
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result v1

    .line 44
    div-int/lit8 v1, v1, 0x2

    .line 45
    iget-object v3, v2, Lcom/android/systemui/qs/customize/TileAdapter;->mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    .line 47
    iput v1, v3, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;->mHalfMargin:I

    .line 49
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 55
    iget-object v1, v2, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 58
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 60
    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizerController$4;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 65
    iget v3, v2, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    .line 68
    invoke-direct {v1, p0, v3, v0}, Lcom/android/systemui/qs/customize/QSCustomizerController$4;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 70
    iget-object v3, v2, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Lcom/android/systemui/qs/customize/TileAdapter$4;

    .line 73
    iput-object v3, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 75
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    iget-object v1, v2, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    .line 80
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 82
    iget-object v1, v2, Lcom/android/systemui/qs/customize/TileAdapter;->mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    .line 85
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    .line 90
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mOnMenuItemClickListener:Lcom/android/systemui/qs/customize/QSCustomizerController$1;

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 96
    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizerController$$ExternalSyntheticLambda0;

    .line 99
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_0
    return-void
    .line 107
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 14
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationListener:Lcom/android/systemui/qs/customize/QSCustomizerController$3;

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 20
    return-void
    .line 23
.end method

.method public final show(IIZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    .line 6
    move-result v1

    .line 9
    if-nez v1, :cond_12

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mQsHost:Lcom/android/systemui/qs/QSHost;

    .line 17
    invoke-interface {v2}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->getTiles()Ljava/util/Collection;

    .line 19
    move-result-object v3

    .line 22
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v3

    .line 26
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 36
    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile;

    .line 37
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 42
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 47
    iget-object v4, v3, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 49
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    goto :goto_1

    .line 57
    :cond_1
    iput-object v1, v3, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 58
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    .line 60
    :goto_1
    const/4 v1, 0x0

    .line 63
    const/4 v4, 0x1

    .line 64
    if-eqz p3, :cond_4

    .line 65
    iget-boolean p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 67
    if-nez p1, :cond_6

    .line 69
    iget-object p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 73
    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->reloadAdapterTileHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    iget-object p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 82
    move-result-object p1

    .line 85
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 92
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    .line 94
    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 98
    :cond_2
    iget-object p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 101
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 103
    instance-of p2, p1, Landroid/graphics/drawable/TransitionDrawable;

    .line 105
    if-eqz p2, :cond_3

    .line 107
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    .line 109
    invoke-virtual {p1}, Landroid/graphics/drawable/TransitionDrawable;->showSecondLayer()V

    .line 111
    :cond_3
    iput-boolean v4, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 114
    iput-boolean v4, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 116
    iget-object p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 118
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    .line 120
    iget-object p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 123
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/qs/QSContainerController;->setCustomizerAnimating(Z)V

    .line 125
    iget-object p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 128
    invoke-interface {p1, v4}, Lcom/android/systemui/plugins/qs/QSContainerController;->setCustomizerShowing(Z)V

    .line 130
    goto :goto_2

    .line 133
    :cond_4
    iget-boolean p3, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 134
    if-nez p3, :cond_5

    .line 136
    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->reloadAdapterTileHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 138
    iget-object p3, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 143
    move-result-object p3

    .line 146
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 147
    const p3, 0x7f0a027c    # @id/customize_container

    .line 150
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 153
    move-result-object p3

    .line 156
    invoke-virtual {p3}, Landroid/view/View;->getLocationOnScreen()[I

    .line 157
    move-result-object p3

    .line 160
    aget v5, p3, v1

    .line 161
    sub-int/2addr p1, v5

    .line 163
    iput p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    .line 164
    aget p1, p3, v4

    .line 166
    sub-int/2addr p2, p1

    .line 168
    iput p2, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 169
    iput-boolean v4, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 171
    iput-boolean v4, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 178
    iget p2, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    .line 180
    iget p3, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 182
    new-instance v5, Lcom/android/systemui/qs/customize/QSCustomizer$ExpandAnimatorListener;

    .line 184
    invoke-direct {v5, v0, v3}, Lcom/android/systemui/qs/customize/QSCustomizer$ExpandAnimatorListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/customize/TileAdapter;)V

    .line 186
    invoke-virtual {p1, p2, p3, v4, v5}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)J

    .line 189
    move-result-wide p1

    .line 192
    iget-object p3, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 193
    invoke-interface {p3, v4}, Lcom/android/systemui/plugins/qs/QSContainerController;->setCustomizerAnimating(Z)V

    .line 195
    iget-object p3, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 198
    invoke-interface {p3, v4, p1, p2}, Lcom/android/systemui/plugins/qs/QSContainerController;->setCustomizerShowing(ZJ)V

    .line 200
    :cond_5
    sget-object p1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_OPEN:Lcom/android/systemui/qs/QSEditEvent;

    .line 203
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 205
    invoke-interface {p2, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 207
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 210
    iget-object p2, p1, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 212
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object p2, p1, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    .line 217
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 219
    iput-boolean v1, p1, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    .line 222
    iget-object p2, p1, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    .line 224
    const p3, 0x7f130a04    # @string/quick_settings_tiles_stock 'internet,bt,flashlight,dnd,alarm,airplane,controls,wallet,rotation,battery,cast,screenrecord,mictogg ...'

    .line 226
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    move-result-object p3

    .line 232
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 233
    move-result-object p2

    .line 236
    const-string/jumbo v3, "sysui_qs_tiles"

    .line 237
    invoke-static {p2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object p2

    .line 243
    new-instance v3, Ljava/util/ArrayList;

    .line 244
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    const-string v5, ","

    .line 249
    if-eqz p2, :cond_7

    .line 251
    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 253
    move-result-object v6

    .line 256
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 257
    move-result-object v6

    .line 260
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    goto :goto_3

    .line 264
    :cond_7
    const-string p2, ""

    .line 265
    :goto_3
    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 267
    move-result-object p3

    .line 270
    array-length v5, p3

    .line 271
    move v6, v1

    .line 272
    :goto_4
    if-ge v6, v5, :cond_9

    .line 273
    aget-object v7, p3, v6

    .line 275
    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 277
    move-result v8

    .line 280
    if-nez v8, :cond_8

    .line 281
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 286
    goto :goto_4

    .line 288
    :cond_9
    sget-boolean p3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 289
    if-eqz p3, :cond_a

    .line 291
    const-string p3, "dbg:mem"

    .line 293
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 295
    move-result p2

    .line 298
    if-nez p2, :cond_a

    .line 299
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_a
    new-instance p2, Ljava/util/ArrayList;

    .line 304
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    const-string p3, "cell"

    .line 309
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    const-string/jumbo p3, "wifi"

    .line 314
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 320
    move-result-object p3

    .line 323
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    move-result v3

    .line 327
    if-eqz v3, :cond_e

    .line 328
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    move-result-object v3

    .line 333
    check-cast v3, Ljava/lang/String;

    .line 334
    const-string v5, "custom("

    .line 336
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 338
    move-result v5

    .line 341
    if-eqz v5, :cond_b

    .line 342
    goto :goto_5

    .line 344
    :cond_b
    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    .line 345
    move-result-object v5

    .line 348
    if-nez v5, :cond_c

    .line 349
    goto :goto_5

    .line 351
    :cond_c
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    .line 352
    move-result v6

    .line 355
    if-nez v6, :cond_d

    .line 356
    invoke-interface {v5, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 358
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 361
    goto :goto_5

    .line 364
    :cond_d
    invoke-interface {v5, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    goto :goto_5

    .line 371
    :cond_e
    new-instance p3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCollector;

    .line 372
    invoke-direct {p3, p1, p2, v2}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCollector;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/List;Lcom/android/systemui/qs/QSHost;)V

    .line 374
    iget-object p1, p3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCollector;->mQSTileList:Ljava/util/List;

    .line 377
    check-cast p1, Ljava/util/ArrayList;

    .line 379
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 381
    move-result-object p1

    .line 384
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    move-result p2

    .line 388
    if-eqz p2, :cond_f

    .line 389
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    move-result-object p2

    .line 394
    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TilePair;

    .line 395
    iget-object v2, p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 397
    invoke-interface {v2, p3}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 399
    iget-object p2, p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 402
    invoke-interface {p2, p3, v4}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 404
    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 407
    goto :goto_6

    .line 410
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 411
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 413
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardCallback:Lcom/android/systemui/qs/customize/QSCustomizerController$2;

    .line 415
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 417
    iget-boolean p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    .line 420
    if-eqz p1, :cond_10

    .line 422
    iget-boolean p1, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 424
    if-eqz p1, :cond_10

    .line 426
    move v1, v4

    .line 428
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 429
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 431
    if-ne p1, v1, :cond_11

    .line 433
    goto :goto_7

    .line 435
    :cond_11
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 438
    :cond_12
    :goto_7
    return-void
    .line 441
.end method

.class public final Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final configListener:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$configListener$1;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final host:Lcom/android/systemui/qs/QSTileHost;

.field public final keyguardCallback:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public spanCount:I

.field public final tileAdapter:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

.field public final tileQueryHelper:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizer;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/qs/customize/MiuiTileAdapter;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->tileAdapter:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->host:Lcom/android/systemui/qs/QSTileHost;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 13
    iput-object p7, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 15
    iput-object p8, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 17
    iput-object p9, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->tileQueryHelper:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

    .line 19
    iput-object p10, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 21
    const/4 p2, -0x1

    .line 23
    iput p2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->spanCount:I

    .line 24
    new-instance p2, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$configListener$1;

    .line 26
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$configListener$1;-><init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    .line 28
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->configListener:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$configListener$1;

    .line 31
    new-instance p2, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;

    .line 33
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;-><init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;Lcom/android/systemui/qs/customize/MiuiQSCustomizer;)V

    .line 35
    iput-object p2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardCallback:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;

    .line 38
    return-void
    .line 40
.end method

.method public static hide$default(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 2
    iget v0, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->hide(Z)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final hide(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 4
    iget-boolean v1, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    sget-object v1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_CLOSED:Lcom/android/systemui/qs/QSEditEvent;

    .line 11
    iget-object v2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 13
    invoke-interface {v2, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 15
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setCustomizing(Z)V

    .line 19
    iget-object v2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->tileQueryHelper:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

    .line 22
    iget-boolean v2, v2, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mFinished:Z

    .line 24
    if-eqz v2, :cond_1

    .line 26
    iget-object v2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->tileAdapter:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 28
    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->saveSpecs()V

    .line 30
    :cond_1
    iget-boolean v2, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 33
    if-eqz v2, :cond_8

    .line 35
    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 37
    iget-object v2, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->clipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 39
    const/4 v3, 0x0

    .line 41
    if-nez v2, :cond_2

    .line 42
    move-object v2, v3

    .line 44
    :cond_2
    iget-object v2, v2, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    .line 45
    if-eqz v2, :cond_3

    .line 47
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 49
    :cond_3
    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isOpening:Z

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setCustomizing(Z)V

    .line 54
    if-eqz p1, :cond_5

    .line 57
    iget-object v2, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->clipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 59
    if-nez v2, :cond_4

    .line 61
    goto :goto_0

    .line 63
    :cond_4
    move-object v3, v2

    .line 64
    :goto_0
    iget v2, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->x:I

    .line 65
    iget v4, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->y:I

    .line 67
    iget-object v5, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->animOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 69
    invoke-virtual {v3, v2, v4, v1, v5}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)J

    .line 71
    goto :goto_1

    .line 74
    :cond_5
    const/16 v2, 0x8

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    :goto_1
    iget-object v2, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->container:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 80
    if-eqz v2, :cond_6

    .line 82
    invoke-virtual {v2, p1}, Lcom/android/systemui/shade/NotificationsQSContainerController;->setCustomizerAnimating(Z)V

    .line 84
    :cond_6
    iget-object p1, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->container:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 87
    if-eqz p1, :cond_7

    .line 89
    invoke-static {p1, v1}, Lcom/android/systemui/plugins/qs/QSContainerController$DefaultImpls;->setCustomizerShowing(Lcom/android/systemui/plugins/qs/QSContainerController;Z)V

    .line 91
    :cond_7
    iget-object p1, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->qs:Lcom/android/systemui/qs/MiuiQS;

    .line 94
    if-eqz p1, :cond_8

    .line 96
    check-cast p1, Lcom/android/systemui/qs/MiuiQSFragment;

    .line 98
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSFragment;->notifyQSDetailChanged()V

    .line 100
    :cond_8
    iget-boolean p1, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 105
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 107
    if-ne v1, p1, :cond_9

    .line 109
    goto :goto_2

    .line 111
    :cond_9
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 112
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 114
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 117
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 119
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardCallback:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;

    .line 121
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 123
    return-void
    .line 126
.end method

.method public final onViewAttached()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->configListener:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$configListener$1;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->tileQueryHelper:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->tileAdapter:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 13
    iput-object v1, v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 20
    const v2, 0x7f0b00f9    # @integer/quick_settings_num_columns '4'

    .line 21
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 24
    move-result v0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-ge v2, v0, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    move v0, v2

    .line 32
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->setSpanCount(I)V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 38
    iget-object v3, v1, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 41
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 43
    iget-object v1, v1, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mDecoration:Lcom/android/systemui/qs/customize/MiuiTileAdapter$TileItemDecoration;

    .line 46
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 51
    check-cast v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 53
    new-instance v1, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$onViewAttached$1;

    .line 55
    const/4 v3, 0x0

    .line 57
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$onViewAttached$1;-><init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;I)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->getResetButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;

    .line 64
    move-result-object v1

    .line 67
    new-instance v3, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$onViewAttached$1;

    .line 68
    invoke-direct {v3, p0, v2}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$onViewAttached$1;-><init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;I)V

    .line 70
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->getDoneButton$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Landroid/widget/TextView;

    .line 76
    move-result-object v0

    .line 79
    new-instance v1, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$onViewAttached$1;

    .line 80
    const/4 v2, 0x2

    .line 82
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$onViewAttached$1;-><init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;I)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
    .line 89
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->tileQueryHelper:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->configListener:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$configListener$1;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardCallback:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;

    .line 20
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 22
    return-void
    .line 25
.end method

.method public final setSpanCount(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->spanCount:I

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iput p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->spanCount:I

    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->tileAdapter:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 8
    iput p1, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mSpanCount:I

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 12
    new-instance v1, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$spanCount$1;

    .line 15
    invoke-direct {v1, p1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$spanCount$1;-><init>(I)V

    .line 17
    iget-object p1, v0, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mSizeLookup:Lcom/android/systemui/qs/customize/MiuiTileAdapter$2;

    .line 20
    iput-object p1, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public final show(IIZ)V
    .locals 8

    .line 1
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 4
    iget-boolean v0, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->host:Lcom/android/systemui/qs/QSTileHost;

    .line 16
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    .line 18
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v2

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 35
    check-cast v3, Lcom/android/systemui/plugins/qs/QSTile;

    .line 36
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 41
    const-string v5, "edit"

    .line 42
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v4

    .line 47
    if-nez v4, :cond_1

    .line 48
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 53
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->tileAdapter:Lcom/android/systemui/qs/customize/MiuiTileAdapter;

    .line 58
    iget-object v3, v2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 60
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    goto :goto_1

    .line 68
    :cond_3
    iput-object v0, v2, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 69
    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/MiuiTileAdapter;->recalcSpecs()V

    .line 71
    :goto_1
    iget-boolean v0, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 74
    const/4 v3, 0x1

    .line 76
    const/4 v4, 0x0

    .line 77
    if-nez v0, :cond_8

    .line 78
    iput p1, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->x:I

    .line 80
    iput p2, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->y:I

    .line 82
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v0

    .line 87
    const v5, 0x7f13006f    # @string/accessibility_desc_quick_settings_edit 'Quick settings editor.'

    .line 88
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 94
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    const/4 v5, 0x0

    .line 100
    if-nez v0, :cond_4

    .line 101
    move-object v0, v5

    .line 103
    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 104
    move-result-object v0

    .line 107
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 111
    iput-boolean v3, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 114
    iput-boolean v3, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isOpening:Z

    .line 116
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->clipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 121
    if-nez v0, :cond_5

    .line 123
    goto :goto_2

    .line 125
    :cond_5
    move-object v5, v0

    .line 126
    :goto_2
    iget-object v0, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->animInListener:Landroid/animation/Animator$AnimatorListener;

    .line 127
    invoke-virtual {v5, p1, p2, v3, v0}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)J

    .line 129
    iget-object p1, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->container:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 132
    if-eqz p1, :cond_6

    .line 134
    invoke-virtual {p1, v3}, Lcom/android/systemui/shade/NotificationsQSContainerController;->setCustomizerAnimating(Z)V

    .line 136
    :cond_6
    iget-object p1, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->container:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 139
    if-eqz p1, :cond_7

    .line 141
    invoke-static {p1, v3}, Lcom/android/systemui/plugins/qs/QSContainerController$DefaultImpls;->setCustomizerShowing(Lcom/android/systemui/plugins/qs/QSContainerController;Z)V

    .line 143
    :cond_7
    iget-object p1, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->qs:Lcom/android/systemui/qs/MiuiQS;

    .line 146
    if-eqz p1, :cond_8

    .line 148
    check-cast p1, Lcom/android/systemui/qs/MiuiQSFragment;

    .line 150
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSFragment;->notifyQSDetailChanged()V

    .line 152
    :cond_8
    sget-object p1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_OPEN:Lcom/android/systemui/qs/QSEditEvent;

    .line 155
    iget-object p2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 157
    invoke-interface {p2, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 159
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 164
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->tileQueryHelper:Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;

    .line 167
    iget-object p2, p1, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 171
    iget-object p2, p1, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    .line 174
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 176
    iput-boolean v4, p1, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mFinished:Z

    .line 179
    iget-object p2, p1, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;->mContext:Landroid/content/Context;

    .line 181
    const v0, 0x7f13077f    # @string/miui_quick_settings_tiles_stock 'vowifi1,vowifi2,googlehome,googlepay,cell,wifi,bt,airplane,autobrightness,mute,screenshot,flashlight ...'

    .line 183
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 189
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 190
    move-result-object p2

    .line 193
    const-string/jumbo v2, "sysui_qs_tiles"

    .line 194
    invoke-static {p2, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object p2

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    .line 201
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    const-string v5, ","

    .line 206
    if-eqz p2, :cond_9

    .line 208
    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 210
    move-result-object v6

    .line 213
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 214
    move-result-object v6

    .line 217
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    goto :goto_3

    .line 221
    :cond_9
    const-string p2, ""

    .line 222
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 224
    move-result-object v0

    .line 227
    array-length v5, v0

    .line 228
    :goto_4
    if-ge v4, v5, :cond_b

    .line 229
    aget-object v6, v0, v4

    .line 231
    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 233
    move-result v7

    .line 236
    if-nez v7, :cond_a

    .line 237
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 242
    goto :goto_4

    .line 244
    :cond_b
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 245
    if-eqz v0, :cond_c

    .line 247
    const-string v0, "dbg:mem"

    .line 249
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 251
    move-result p2

    .line 254
    if-nez p2, :cond_c

    .line 255
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_c
    new-instance p2, Ljava/util/ArrayList;

    .line 260
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 265
    move-result-object v0

    .line 268
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    move-result v2

    .line 272
    if-eqz v2, :cond_10

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    move-result-object v2

    .line 278
    check-cast v2, Ljava/lang/String;

    .line 279
    const-string v4, "custom("

    .line 281
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 283
    move-result v4

    .line 286
    if-eqz v4, :cond_d

    .line 287
    goto :goto_5

    .line 289
    :cond_d
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    .line 290
    move-result-object v4

    .line 293
    if-nez v4, :cond_e

    .line 294
    goto :goto_5

    .line 296
    :cond_e
    invoke-interface {v4, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 297
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    .line 300
    move-result v2

    .line 303
    if-nez v2, :cond_f

    .line 304
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    .line 306
    goto :goto_5

    .line 309
    :cond_f
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    goto :goto_5

    .line 313
    :cond_10
    new-instance v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileCollector;

    .line 314
    invoke-direct {v0, p1, p2, v1}, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileCollector;-><init>(Lcom/android/systemui/qs/customize/MiuiTileQueryHelper;Ljava/util/List;Lcom/android/systemui/qs/QSTileHost;)V

    .line 316
    iget-object p1, v0, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TileCollector;->mQSTileList:Ljava/util/List;

    .line 319
    check-cast p1, Ljava/util/ArrayList;

    .line 321
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 323
    move-result-object p1

    .line 326
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    move-result p2

    .line 330
    if-eqz p2, :cond_11

    .line 331
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    move-result-object p2

    .line 336
    check-cast p2, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TilePair;

    .line 337
    iget-object v1, p2, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 339
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 341
    iget-object p2, p2, Lcom/android/systemui/qs/customize/MiuiTileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 344
    invoke-interface {p2, v0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 346
    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 349
    goto :goto_6

    .line 352
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 353
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 355
    iget-object p2, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardCallback:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;

    .line 357
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 359
    iget-boolean p1, p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 362
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 364
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 366
    if-ne p2, p1, :cond_12

    .line 368
    goto :goto_7

    .line 370
    :cond_12
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 373
    :goto_7
    return-void
    .line 376
.end method

.class public final Lcom/android/systemui/qs/QSFooterViewController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/qs/QSFooter;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBuildText:Landroid/widget/TextView;

.field public final mEditButton:Landroid/view/View;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field public final mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field public final mRetailModeInteractor:Lcom/android/systemui/retail/domain/interactor/RetailModeInteractorImpl;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSFooterView;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/retail/domain/interactor/RetailModeInteractorImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 5
    iput-object p5, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/QSFooterViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/qs/QSFooterViewController;->mRetailModeInteractor:Lcom/android/systemui/retail/domain/interactor/RetailModeInteractorImpl;

    .line 13
    move-object p2, p1

    .line 15
    check-cast p2, Lcom/android/systemui/qs/QSFooterView;

    .line 16
    const p2, 0x7f0a019f    # @id/build

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 24
    check-cast p2, Landroid/widget/TextView;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    .line 27
    move-object p2, p1

    .line 29
    check-cast p2, Lcom/android/systemui/qs/QSFooterView;

    .line 30
    const p2, 0x7f0a0380    # @id/footer_page_indicator

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p2

    .line 38
    check-cast p2, Lcom/android/systemui/qs/PageIndicator;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 41
    move-object p2, p1

    .line 43
    check-cast p2, Lcom/android/systemui/qs/QSFooterView;

    .line 44
    const p2, 0x1020003    # @android:id/edit

    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mEditButton:Landroid/view/View;

    .line 53
    return-void
    .line 55
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda0;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 9
    new-instance v0, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    .line 14
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mEditButton:Landroid/view/View;

    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 24
    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 33
    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    new-instance v0, Lcom/android/systemui/qs/QSFooterView$$ExternalSyntheticLambda0;

    .line 40
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooterView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFooterView;)V

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
    .line 48
.end method

.method public final onViewDetached()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/systemui/qs/QSFooterView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mRetailModeInteractor:Lcom/android/systemui/retail/domain/interactor/RetailModeInteractorImpl;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/retail/domain/interactor/RetailModeInteractorImpl;->repository:Lcom/android/systemui/retail/data/repository/RetailModeRepository;

    .line 11
    check-cast v0, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository;->retailMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 15
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    const/16 v0, 0x8

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    move v0, v1

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mEditButton:Landroid/view/View;

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    if-nez p1, :cond_1

    .line 39
    const/4 v1, 0x1

    .line 41
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 42
    return-void
    .line 45
.end method

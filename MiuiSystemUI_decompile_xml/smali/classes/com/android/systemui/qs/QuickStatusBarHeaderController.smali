.class public final Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mListening:Z

.field public final mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/QuickQSPanelController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mListening:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mListening:Z

    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 10
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->setListening(Z)V

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 21
    check-cast p0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 25
    :cond_1
    :goto_0
    return-void
    .line 28
.end method

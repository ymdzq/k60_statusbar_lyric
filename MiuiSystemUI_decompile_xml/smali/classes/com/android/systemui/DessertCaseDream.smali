.class public Lcom/android/systemui/DessertCaseDream;
.super Landroid/service/dreams/DreamService;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mContainer:Lcom/android/systemui/DessertCaseView$RescalingContainer;

.field public mView:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setInteractive(Z)V

    .line 6
    new-instance v0, Lcom/android/systemui/DessertCaseView;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    .line 14
    new-instance v0, Lcom/android/systemui/DessertCaseView$RescalingContainer;

    .line 16
    invoke-direct {v0, p0}, Lcom/android/systemui/DessertCaseView$RescalingContainer;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mContainer:Lcom/android/systemui/DessertCaseView$RescalingContainer;

    .line 21
    iget-object v1, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setView(Lcom/android/systemui/DessertCaseView;)V

    .line 25
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mContainer:Lcom/android/systemui/DessertCaseView$RescalingContainer;

    .line 28
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setContentView(Landroid/view/View;)V

    .line 30
    return-void
    .line 33
.end method

.method public final onDreamingStarted()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    .line 5
    new-instance v1, Lcom/android/systemui/DessertCaseDream$1;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/systemui/DessertCaseDream$1;-><init>(Lcom/android/systemui/DessertCaseDream;)V

    .line 9
    const-wide/16 v2, 0x3e8

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    return-void
    .line 17
.end method

.method public final onDreamingStopped()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/DessertCaseDream;->mView:Lcom/android/systemui/DessertCaseView;

    .line 5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 8
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Lcom/android/systemui/DessertCaseView$1;

    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    return-void
    .line 17
.end method

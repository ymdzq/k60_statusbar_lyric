.class public Lcom/android/systemui/DessertCase;
.super Landroid/app/Activity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mView:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

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

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    .line 5
    new-instance v1, Lcom/android/systemui/DessertCase$1;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/systemui/DessertCase$1;-><init>(Lcom/android/systemui/DessertCase;)V

    .line 9
    const-wide/16 v2, 0x3e8

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    return-void
    .line 17
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    move-result-object v0

    .line 8
    new-instance v1, Landroid/content/ComponentName;

    .line 9
    const-class v2, Lcom/android/systemui/DessertCaseDream;

    .line 11
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 23
    :cond_0
    new-instance v0, Lcom/android/systemui/DessertCaseView;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    .line 31
    new-instance v0, Lcom/android/systemui/DessertCaseView$RescalingContainer;

    .line 33
    invoke-direct {v0, p0}, Lcom/android/systemui/DessertCaseView$RescalingContainer;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object v1, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    .line 38
    invoke-virtual {v0, v1}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setView(Lcom/android/systemui/DessertCaseView;)V

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 43
    return-void
    .line 46
.end method

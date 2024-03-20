.class public abstract Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAdded:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    .line 5
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mHandler:Landroid/os/Handler;

    .line 10
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mAdded:Z

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 18
    const-string/jumbo v0, "window"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Landroid/view/WindowManager;

    .line 26
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final addViewToWindow()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mAdded:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 11
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 17
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->generateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 19
    move-result-object v1

    .line 22
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method public abstract generateLayoutParams()Landroid/view/WindowManager$LayoutParams;
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
    .line 16
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
    .line 16
.end method

.method public final removeViewFromWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mAdded:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 11
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

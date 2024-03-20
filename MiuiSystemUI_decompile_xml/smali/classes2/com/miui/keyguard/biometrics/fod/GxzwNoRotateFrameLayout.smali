.class public abstract Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;
.super Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mKeyguardAuthen:Z

.field public mPortraitOrientation:Z

.field public mRegion:Landroid/graphics/Rect;

.field public mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mPortraitOrientation:Z

    .line 6
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 9
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mShowing:Z

    .line 11
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->caculateRegion()Landroid/graphics/Rect;

    .line 13
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public abstract caculateRegion()Landroid/graphics/Rect;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 16
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mShowing:Z

    .line 22
    if-eqz p1, :cond_2

    .line 24
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mPortraitOrientation:Z

    .line 26
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->updateLpByOrientation()V

    .line 28
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 31
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->generateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 33
    move-result-object v0

    .line 36
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :cond_2
    return-void
    .line 40
.end method

.method public onKeyguardAuthen(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object p1

    .line 15
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 16
    const/4 v0, 0x1

    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 21
    if-eqz p1, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 27
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mShowing:Z

    .line 33
    if-eqz p1, :cond_2

    .line 35
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mPortraitOrientation:Z

    .line 37
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->updateLpByOrientation()V

    .line 39
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 42
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->generateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 44
    move-result-object v0

    .line 47
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    :cond_2
    return-void
    .line 51
.end method

.method public show()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mShowing:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    move-result-object v1

    .line 16
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 17
    if-eq v1, v0, :cond_1

    .line 19
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 21
    if-eqz v1, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mPortraitOrientation:Z

    .line 27
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->caculateRegion()Landroid/graphics/Rect;

    .line 29
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->updateLpByOrientation()V

    .line 35
    return-void
    .line 38
.end method

.method public final updateLpByOrientation()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->generateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mPortraitOrientation:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 10
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 12
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 16
    move-result v1

    .line 19
    iget-object v4, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 20
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 22
    move-result v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 27
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 29
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 33
    move-result v4

    .line 36
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mRegion:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 39
    move-result v1

    .line 42
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v5

    .line 46
    const-string v6, "display"

    .line 47
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 52
    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 53
    const/4 v6, 0x0

    .line 55
    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 56
    move-result-object v5

    .line 59
    new-instance v6, Landroid/graphics/Point;

    .line 60
    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 62
    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 65
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 68
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 70
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    .line 72
    move-result v5

    .line 75
    iget-boolean p0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwNoRotateFrameLayout;->mKeyguardAuthen:Z

    .line 76
    if-nez p0, :cond_2

    .line 78
    const/4 p0, 0x2

    .line 80
    if-eq v5, p0, :cond_1

    .line 81
    const/4 p0, 0x3

    .line 83
    if-ne v5, p0, :cond_2

    .line 84
    :cond_1
    sub-int/2addr v7, v2

    .line 86
    sub-int v2, v7, v1

    .line 87
    sub-int/2addr v6, v3

    .line 89
    sub-int v3, v6, v4

    .line 90
    :cond_2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 92
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 94
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 96
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 98
    return-void
    .line 100
.end method

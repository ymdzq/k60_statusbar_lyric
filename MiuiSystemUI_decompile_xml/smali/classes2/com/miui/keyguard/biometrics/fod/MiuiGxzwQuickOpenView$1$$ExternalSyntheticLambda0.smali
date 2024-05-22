.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 4
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickLoadingView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 10
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickLoadingView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoadingAnimator:Landroid/animation/ObjectAnimator;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 20
    :cond_1
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 28
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemRadius:F

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;-><init>(Landroid/content/Context;F)V

    .line 31
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickLoadingView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;

    .line 34
    iget v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mLoadingMaxRadius:F

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->caculateGxzwIconSize(Landroid/content/Context;)V

    .line 42
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 45
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 47
    const/4 v3, 0x2

    .line 49
    div-int/2addr v2, v3

    .line 50
    add-int/2addr v2, v1

    .line 51
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 52
    sget v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 54
    div-int/2addr v4, v3

    .line 56
    add-int/2addr v4, v1

    .line 57
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    const/high16 v5, 0x40000000    # 2.0f

    .line 60
    mul-float/2addr v5, v0

    .line 62
    float-to-int v5, v5

    .line 63
    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    const/16 v5, 0x33

    .line 67
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    float-to-int v0, v0

    .line 71
    sub-int/2addr v2, v0

    .line 72
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 73
    sub-int/2addr v4, v0

    .line 75
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 76
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickLoadingView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;

    .line 78
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickLoadingView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;

    .line 83
    const/4 v1, 0x1

    .line 85
    iput-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mLoading:Z

    .line 86
    iget v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mLoadingOriginalRadius:F

    .line 88
    iput v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mCurrentLoadingRadius:F

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 92
    new-instance v0, Landroid/animation/ObjectAnimator;

    .line 95
    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickLoadingView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;

    .line 100
    new-array v2, v3, [F

    .line 102
    iget v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mLoadingOriginalRadius:F

    .line 104
    const/4 v4, 0x0

    .line 106
    aput v3, v2, v4

    .line 107
    iget v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mLoadingMaxRadius:F

    .line 109
    aput v3, v2, v1

    .line 111
    const-string v3, "currentLoadingRadius"

    .line 113
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 115
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoadingAnimator:Landroid/animation/ObjectAnimator;

    .line 119
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$4;

    .line 121
    invoke-direct {v2, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$4;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;)V

    .line 123
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoadingAnimator:Landroid/animation/ObjectAnimator;

    .line 129
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$5;

    .line 131
    invoke-direct {v2, p0, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$5;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;I)V

    .line 133
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoadingAnimator:Landroid/animation/ObjectAnimator;

    .line 139
    const-wide/16 v2, 0x258

    .line 141
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 143
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoadingAnimator:Landroid/animation/ObjectAnimator;

    .line 146
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 148
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoading:Z

    .line 151
    return-void
    .line 153
.end method

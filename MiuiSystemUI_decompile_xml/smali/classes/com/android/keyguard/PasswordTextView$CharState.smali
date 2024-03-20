.class public final Lcom/android/keyguard/PasswordTextView$CharState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public currentDotSizeFactor:F

.field public currentTextSizeFactor:F

.field public currentTextTranslationY:F

.field public currentWidthFactor:F

.field public dotAnimationIsGrowing:Z

.field public dotAnimator:Landroid/animation/Animator;

.field public final dotFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

.field public final dotSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

.field public final dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

.field public isDotSwapPending:Z

.field public final removeEndListener:Lcom/android/keyguard/PasswordTextView$CharState$1;

.field public textAnimationIsGrowing:Z

.field public textAnimator:Landroid/animation/ValueAnimator;

.field public final textFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

.field public final textSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

.field public textTranslateAnimator:Landroid/animation/ValueAnimator;

.field public final textTranslateFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

.field public final textTranslationUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

.field public final synthetic this$0:Lcom/android/keyguard/PasswordTextView;

.field public whichChar:C

.field public widthAnimationIsGrowing:Z

.field public widthAnimator:Landroid/animation/ValueAnimator;

.field public final widthFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

.field public final widthUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/PasswordTextView;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 9
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$1;

    .line 11
    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$1;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 13
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Lcom/android/keyguard/PasswordTextView$CharState$1;

    .line 16
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 18
    const/4 v0, 0x0

    .line 20
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;I)V

    .line 21
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 24
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 26
    const/4 v1, 0x1

    .line 28
    invoke-direct {p1, p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;I)V

    .line 29
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 32
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 34
    const/4 v2, 0x2

    .line 36
    invoke-direct {p1, p0, v2}, Lcom/android/keyguard/PasswordTextView$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;I)V

    .line 37
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 40
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 42
    const/4 v3, 0x3

    .line 44
    invoke-direct {p1, p0, v3}, Lcom/android/keyguard/PasswordTextView$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;I)V

    .line 45
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 48
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 50
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;I)V

    .line 52
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 55
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 57
    invoke-direct {p1, p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;I)V

    .line 59
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 62
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 64
    invoke-direct {p1, p0, v2}, Lcom/android/keyguard/PasswordTextView$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;I)V

    .line 66
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslationUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 69
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 71
    invoke-direct {p1, p0, v3}, Lcom/android/keyguard/PasswordTextView$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;I)V

    .line 73
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 76
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$10;

    .line 78
    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$10;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 80
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Lcom/android/keyguard/PasswordTextView$CharState$10;

    .line 83
    return-void
    .line 85
.end method

.method public static cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 4
    :cond_0
    return-void
    .line 7
.end method


# virtual methods
.method public final isCharVisibleForA11y()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    iget p0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 15
    const/4 v3, 0x0

    .line 17
    cmpl-float p0, p0, v3

    .line 18
    if-gtz p0, :cond_2

    .line 20
    if-eqz v0, :cond_1

    .line 22
    goto :goto_1

    .line 24
    :cond_1
    move v1, v2

    .line 25
    :cond_2
    :goto_1
    return v1
    .line 26
.end method

.method public final startDotAppearAnimation(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 2
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 7
    iget-boolean v1, v0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 9
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 11
    const/4 v3, 0x0

    .line 13
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 14
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x2

    .line 17
    if-nez v1, :cond_0

    .line 18
    new-array v1, v6, [F

    .line 20
    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 22
    aput v7, v1, v3

    .line 24
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 26
    aput v3, v1, v5

    .line 28
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 37
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    const-wide/16 v7, 0xa0

    .line 42
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    new-array v0, v6, [F

    .line 47
    fill-array-data v0, :array_0

    .line 49
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 52
    move-result-object v0

    .line 55
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 65
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 67
    filled-new-array {v1, v0}, [Landroid/animation/Animator;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 74
    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 77
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 80
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    new-array v0, v6, [F

    .line 86
    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 88
    aput v1, v0, v3

    .line 90
    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    aput v1, v0, v5

    .line 94
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 96
    move-result-object v0

    .line 99
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 103
    sub-float/2addr v1, v3

    .line 105
    const/high16 v3, 0x43200000    # 160.0f

    .line 106
    mul-float/2addr v1, v3

    .line 108
    float-to-long v3, v1

    .line 109
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 116
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 119
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 122
    :goto_0
    iput-boolean v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 124
    return-void

    .line 126
    nop

    .line 127
    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
    .line 128
.end method

.method public final startRemoveAnimation(JJ)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 15
    if-eqz v0, :cond_2

    .line 17
    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 19
    if-eqz v0, :cond_2

    .line 21
    :cond_1
    move v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    move v0, v3

    .line 25
    :goto_0
    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 26
    cmpl-float v4, v4, v1

    .line 28
    if-lez v4, :cond_3

    .line 30
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 32
    if-eqz v4, :cond_4

    .line 34
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 36
    if-eqz v4, :cond_5

    .line 38
    iget-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 40
    if-eqz v4, :cond_5

    .line 42
    :cond_4
    move v4, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_5
    move v4, v3

    .line 46
    :goto_1
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 47
    cmpl-float v5, v5, v1

    .line 49
    if-lez v5, :cond_6

    .line 51
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 53
    if-eqz v5, :cond_7

    .line 55
    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 57
    if-eqz v5, :cond_8

    .line 59
    iget-boolean v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 61
    if-eqz v5, :cond_8

    .line 63
    :cond_7
    move v5, v2

    .line 65
    goto :goto_2

    .line 66
    :cond_8
    move v5, v3

    .line 67
    :goto_2
    const/high16 v6, 0x43200000    # 160.0f

    .line 68
    const/4 v7, 0x2

    .line 70
    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 73
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 75
    new-array v0, v7, [F

    .line 78
    iget v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 80
    aput v8, v0, v3

    .line 82
    aput v1, v0, v2

    .line 84
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 86
    move-result-object v0

    .line 89
    iget-object v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 90
    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    iget-object v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 95
    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    iget-object v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 100
    iget-object v8, v8, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 102
    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    iget v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 107
    const/high16 v9, 0x3f800000    # 1.0f

    .line 109
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    .line 111
    move-result v8

    .line 114
    mul-float/2addr v8, v6

    .line 115
    float-to-long v8, v8

    .line 116
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 117
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 120
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 123
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 126
    iput-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 128
    :cond_9
    if-eqz v4, :cond_a

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    .line 132
    :cond_a
    if-eqz v5, :cond_b

    .line 135
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 137
    invoke-static {p1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 139
    new-array p1, v7, [F

    .line 142
    iget p2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 144
    aput p2, p1, v3

    .line 146
    aput v1, p1, v2

    .line 148
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 150
    move-result-object p1

    .line 153
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 154
    iget-object p2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 156
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 161
    iget-object p2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 163
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 168
    iget-object p2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Lcom/android/keyguard/PasswordTextView$CharState$1;

    .line 170
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 175
    iget p2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 177
    mul-float/2addr p2, v6

    .line 179
    float-to-long v0, p2

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 181
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 184
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 186
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 189
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 191
    iput-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 194
    :cond_b
    return-void
    .line 196
.end method

.method public final startTextDisappearAnimation(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 2
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 4
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [F

    .line 8
    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 10
    const/4 v2, 0x0

    .line 12
    aput v1, v0, v2

    .line 13
    const/4 v1, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    aput v3, v0, v1

    .line 17
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 23
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Lcom/android/keyguard/PasswordTextView$CharState$6;

    .line 25
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 27
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 30
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Lcom/android/keyguard/PasswordTextView$CharState$2;

    .line 32
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 37
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    .line 39
    iget-object v1, v1, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 41
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 46
    const/high16 v1, 0x43200000    # 160.0f

    .line 48
    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 50
    mul-float/2addr v3, v1

    .line 52
    float-to-long v3, v3

    .line 53
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 57
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 59
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 62
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 64
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 67
    return-void
    .line 69
.end method

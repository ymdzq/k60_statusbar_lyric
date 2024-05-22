.class public final Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public mDirectionX:I

.field public mDismissAnimation:Landroid/animation/ValueAnimator;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mPreviousX:F

.field public mStartX:F

.field public final mView:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

.field public final synthetic this$0:Lcom/android/systemui/screenshot/DraggableConstraintLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/DraggableConstraintLayout;Landroid/content/Context;Lcom/android/systemui/screenshot/DraggableConstraintLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mView:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 7
    new-instance p1, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$SwipeDismissGestureListener;

    .line 9
    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$SwipeDismissGestureListener;-><init>(Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;)V

    .line 11
    new-instance p3, Landroid/view/GestureDetector;

    .line 14
    invoke-direct {p3, p2, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 16
    iput-object p3, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 19
    new-instance p1, Landroid/util/DisplayMetrics;

    .line 21
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 32
    return-void
    .line 35
.end method


# virtual methods
.method public final createSwipeDismissAnimation(F)Landroid/animation/ValueAnimator;
    .locals 6

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 4
    move-result p1

    .line 7
    const/high16 v0, 0x40400000    # 3.0f

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 10
    move-result p1

    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [F

    .line 15
    fill-array-data v0, :array_0

    .line 17
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 20
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mView:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 24
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationX()F

    .line 26
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mView:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 30
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 44
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    cmpl-float v3, v1, v3

    .line 49
    if-gtz v3, :cond_1

    .line 51
    if-nez v3, :cond_0

    .line 53
    const/4 v3, 0x1

    .line 55
    if-ne v2, v3, :cond_0

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 59
    invoke-static {v2}, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->-$$Nest$mgetBackgroundRight(Lcom/android/systemui/screenshot/DraggableConstraintLayout;)I

    .line 61
    move-result v2

    .line 64
    mul-int/lit8 v2, v2, -0x1

    .line 65
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 68
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 70
    :goto_1
    int-to-float v2, v2

    .line 72
    sub-float/2addr v2, v1

    .line 73
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 74
    move-result v3

    .line 77
    iget-object v4, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 78
    const/high16 v5, 0x43c80000    # 400.0f

    .line 80
    invoke-static {v5, v4}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 82
    move-result v4

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 86
    move-result v3

    .line 89
    invoke-static {v3, v2}, Ljava/lang/Math;->copySign(FF)F

    .line 90
    move-result v2

    .line 93
    new-instance v4, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$$ExternalSyntheticLambda0;

    .line 94
    const/4 v5, 0x0

    .line 96
    invoke-direct {v4, p0, v1, v2, v5}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;FFI)V

    .line 97
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    div-float/2addr v3, p1

    .line 103
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 104
    move-result p0

    .line 107
    float-to-long p0, p0

    .line 108
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 109
    return-object v0

    .line 112
    nop

    .line 113
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 114
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mCallbacks:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissCallbacks;

    .line 10
    invoke-interface {v0}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissCallbacks;->onInteraction()V

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 22
    move-result p1

    .line 25
    iput p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mStartX:F

    .line 26
    iput p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mPreviousX:F

    .line 28
    return v1

    .line 30
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 31
    move-result p2

    .line 34
    if-ne p2, v1, :cond_4

    .line 35
    iget-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 37
    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 41
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    return v1

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mView:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    .line 50
    move-result p1

    .line 53
    iget p2, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDirectionX:I

    .line 54
    int-to-float p2, p2

    .line 56
    mul-float/2addr p2, p1

    .line 57
    const/4 v0, 0x0

    .line 58
    cmpl-float p2, p2, v0

    .line 59
    if-lez p2, :cond_2

    .line 61
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 63
    move-result p1

    .line 66
    iget-object p2, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 67
    const/high16 v2, 0x41a00000    # 20.0f

    .line 69
    invoke-static {v2, p2}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 71
    move-result p2

    .line 74
    cmpl-float p1, p1, p2

    .line 75
    if-ltz p1, :cond_2

    .line 77
    move p1, v1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 p1, 0x0

    .line 81
    :goto_0
    if-eqz p1, :cond_3

    .line 82
    iget-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 84
    const/high16 p2, 0x3f800000    # 1.0f

    .line 86
    invoke-static {p2, p1}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 88
    move-result p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->createSwipeDismissAnimation(F)Landroid/animation/ValueAnimator;

    .line 92
    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->this$0:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 96
    iget-object p2, p2, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mCallbacks:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissCallbacks;

    .line 98
    invoke-interface {p2, p1}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissCallbacks;->onSwipeDismissInitiated(Landroid/animation/Animator;)V

    .line 100
    iput-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 103
    new-instance p2, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$1;

    .line 105
    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$1;-><init>(Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;)V

    .line 107
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 113
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 115
    goto :goto_1

    .line 118
    :cond_3
    const/4 p1, 0x2

    .line 119
    new-array p1, p1, [F

    .line 120
    fill-array-data p1, :array_0

    .line 122
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 125
    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mView:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 129
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationX()F

    .line 131
    move-result p2

    .line 134
    new-instance v2, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$$ExternalSyntheticLambda0;

    .line 135
    invoke-direct {v2, p0, p2, v0, v1}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;FFI)V

    .line 137
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 143
    :goto_1
    return v1

    .line 146
    :cond_4
    return p1

    .line 147
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

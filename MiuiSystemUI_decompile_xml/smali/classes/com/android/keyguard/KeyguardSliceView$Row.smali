.class public Lcom/android/keyguard/KeyguardSliceView$Row;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDarkAmount:F

.field public final mKeepAwakeListener:Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;

.field public final mKeyguardSliceTextViewSet:Ljava/util/Set;

.field public mLayoutTransition:Landroid/animation/LayoutTransition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardSliceView$Row;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeyguardSliceTextViewSet:Ljava/util/Set;

    .line 6
    new-instance p1, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeepAwakeListener:Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2
    instance-of p2, p1, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    .line 5
    if-eqz p2, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeyguardSliceTextViewSet:Ljava/util/Set;

    .line 9
    check-cast p1, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    .line 11
    check-cast p0, Ljava/util/HashSet;

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onFinishInflate()V
    .locals 7

    .line 1
    new-instance v0, Landroid/animation/LayoutTransition;

    .line 2
    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 7
    const-wide/16 v1, 0x226

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 11
    const/4 v0, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    filled-new-array {v0, v3}, [I

    .line 16
    move-result-object v4

    .line 19
    const-string v5, "left"

    .line 20
    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 22
    move-result-object v4

    .line 25
    const-string/jumbo v5, "right"

    .line 26
    filled-new-array {v0, v3}, [I

    .line 29
    move-result-object v6

    .line 32
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 33
    move-result-object v5

    .line 36
    filled-new-array {v4, v5}, [Landroid/animation/PropertyValuesHolder;

    .line 37
    move-result-object v4

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-static {v5, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 42
    move-result-object v4

    .line 45
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 46
    invoke-virtual {v6, v0, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 48
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 51
    invoke-virtual {v6, v3, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 53
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 56
    sget-object v6, Lcom/android/app/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 58
    invoke-virtual {v4, v0, v6}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 60
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 63
    invoke-virtual {v4, v3, v6}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 65
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 68
    invoke-virtual {v4, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 70
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 73
    invoke-virtual {v4, v3, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 75
    const/4 v1, 0x2

    .line 78
    new-array v2, v1, [F

    .line 79
    fill-array-data v2, :array_0

    .line 81
    const-string v3, "alpha"

    .line 84
    invoke-static {v5, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 86
    move-result-object v2

    .line 89
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 90
    invoke-virtual {v4, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 92
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 95
    sget-object v4, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 97
    invoke-virtual {v2, v1, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 99
    new-array v1, v1, [F

    .line 102
    fill-array-data v1, :array_1

    .line 104
    invoke-static {v5, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 107
    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 111
    sget-object v3, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 113
    const/4 v4, 0x3

    .line 115
    invoke-virtual {v2, v4, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 116
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 119
    const-wide/16 v5, 0x89

    .line 121
    invoke-virtual {v2, v4, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 123
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 126
    invoke-virtual {v2, v4, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 128
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 131
    invoke-virtual {p0, v0}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 133
    return-void

    .line 136
    nop

    .line 137
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 138
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 146
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 15
    instance-of v3, v2, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    .line 16
    if-eqz v3, :cond_0

    .line 18
    check-cast v2, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    .line 20
    const v3, 0x7fffffff

    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 31
    return-void
    .line 34
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onVisibilityAggregated(Z)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 11
    return-void
    .line 14
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeyguardSliceTextViewSet:Ljava/util/Set;

    .line 9
    check-cast p1, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    .line 11
    check-cast p0, Ljava/util/HashSet;

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public setDarkAmount(F)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    move v1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v3

    .line 11
    :goto_0
    iget v4, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mDarkAmount:F

    .line 12
    cmpl-float v0, v4, v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    goto :goto_1

    .line 18
    :cond_1
    move v2, v3

    .line 19
    :goto_1
    if-ne v1, v2, :cond_2

    .line 20
    return-void

    .line 22
    :cond_2
    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mDarkAmount:F

    .line 23
    if-eqz v1, :cond_3

    .line 25
    const/4 p1, 0x0

    .line 27
    goto :goto_2

    .line 28
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSliceView$Row;->mKeepAwakeListener:Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;

    .line 29
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 31
    return-void
    .line 34
.end method

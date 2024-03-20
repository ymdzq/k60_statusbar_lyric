.class public Landroidx/recyclerview/widget/LinearSmoothScroller;
.super Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mHasCalculatedMillisPerPixel:Z

.field public mInterimTargetDx:I

.field public mInterimTargetDy:I

.field public final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field public mMillisPerPixel:F

.field public mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 5
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 10
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 12
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 17
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mHasCalculatedMillisPerPixel:Z

    .line 20
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 22
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 34
    return-void
    .line 36
.end method

.method public static calculateDtToFit(IIIII)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p4, v0, :cond_4

    .line 3
    if-eqz p4, :cond_1

    .line 5
    const/4 p0, 0x1

    .line 7
    if-ne p4, p0, :cond_0

    .line 8
    sub-int/2addr p3, p1

    .line 10
    return p3

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string/jumbo p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 20
    :cond_1
    sub-int/2addr p2, p0

    .line 21
    if-lez p2, :cond_2

    .line 22
    return p2

    .line 24
    :cond_2
    sub-int/2addr p3, p1

    .line 25
    if-gez p3, :cond_3

    .line 26
    return p3

    .line 28
    :cond_3
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_4
    sub-int/2addr p2, p0

    .line 31
    return p2
    .line 32
.end method


# virtual methods
.method public calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 1
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2
    int-to-float p0, p0

    .line 4
    const/high16 p1, 0x41c80000    # 25.0f

    .line 5
    div-float/2addr p1, p0

    .line 7
    return p1
    .line 8
.end method

.method public final calculateTimeForDeceleration(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    .line 2
    move-result p0

    .line 5
    int-to-double p0, p0

    .line 6
    const-wide v0, 0x3fd57a786c22680aL    # 0.3356

    .line 7
    div-double/2addr p0, v0

    .line 12
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 13
    move-result-wide p0

    .line 16
    double-to-int p0, p0

    .line 17
    return p0
    .line 18
.end method

.method public calculateTimeForScrolling(I)I
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 2
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mHasCalculatedMillisPerPixel:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    .line 13
    move-result v0

    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mMillisPerPixel:F

    .line 17
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mHasCalculatedMillisPerPixel:Z

    .line 20
    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mMillisPerPixel:F

    .line 22
    mul-float/2addr p1, p0

    .line 24
    float-to-double p0, p1

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 26
    move-result-wide p0

    .line 29
    double-to-int p0, p0

    .line 30
    return p0
    .line 31
.end method

.method public onStop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 5
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 8
    return-void
    .line 10
.end method

.method public onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 10
    cmpl-float v0, v0, v3

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    if-lez v0, :cond_1

    .line 17
    move v0, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    move v0, v4

    .line 23
    :goto_1
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 24
    if-eqz v5, :cond_4

    .line 26
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 28
    move-result v6

    .line 31
    if-nez v6, :cond_3

    .line 32
    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object v6

    .line 38
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 39
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 41
    move-result v7

    .line 44
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 45
    sub-int/2addr v7, v8

    .line 47
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 48
    move-result v8

    .line 51
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 52
    add-int/2addr v8, v6

    .line 54
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 55
    move-result v6

    .line 58
    iget v9, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 59
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 61
    move-result v5

    .line 64
    sub-int/2addr v9, v5

    .line 65
    invoke-static {v7, v8, v6, v9, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    .line 66
    move-result v0

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    :goto_2
    move v0, v4

    .line 71
    :goto_3
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 72
    if-eqz v5, :cond_7

    .line 74
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 76
    cmpl-float v3, v5, v3

    .line 78
    if-nez v3, :cond_5

    .line 80
    goto :goto_4

    .line 82
    :cond_5
    if-lez v3, :cond_6

    .line 83
    goto :goto_5

    .line 85
    :cond_6
    move v1, v2

    .line 86
    goto :goto_5

    .line 87
    :cond_7
    :goto_4
    move v1, v4

    .line 88
    :goto_5
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 89
    if-eqz v2, :cond_9

    .line 91
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 93
    move-result v3

    .line 96
    if-nez v3, :cond_8

    .line 97
    goto :goto_6

    .line 99
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    move-result-object v3

    .line 103
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 104
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 106
    move-result v4

    .line 109
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 110
    sub-int/2addr v4, v5

    .line 112
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 113
    move-result p1

    .line 116
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 117
    add-int/2addr p1, v3

    .line 119
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 120
    move-result v3

    .line 123
    iget v5, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 124
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 126
    move-result v2

    .line 129
    sub-int/2addr v5, v2

    .line 130
    invoke-static {v4, p1, v3, v5, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    .line 131
    move-result v4

    .line 134
    :cond_9
    :goto_6
    mul-int p1, v0, v0

    .line 135
    mul-int v1, v4, v4

    .line 137
    add-int/2addr v1, p1

    .line 139
    int-to-double v1, v1

    .line 140
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 141
    move-result-wide v1

    .line 144
    double-to-int p1, v1

    .line 145
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    .line 146
    move-result p1

    .line 149
    if-lez p1, :cond_a

    .line 150
    neg-int v0, v0

    .line 152
    neg-int v1, v4

    .line 153
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 154
    invoke-virtual {p2, v0, v1, p1, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 156
    :cond_a
    return-void
    .line 159
.end method

.class public Lcom/android/wm/shell/common/split/DividerHandleView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$1;

.field public static final WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$1;


# instance fields
.field public mAnimator:Landroid/animation/AnimatorSet;

.field public mCurrentHeight:I

.field public mCurrentWidth:I

.field public final mHeight:I

.field public final mPaint:Landroid/graphics/Paint;

.field public mTouching:Z

.field public final mTouchingHeight:I

.field public final mTouchingWidth:I

.field public final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wm/shell/common/split/DividerHandleView$1;

    .line 2
    const-string/jumbo v1, "width"

    .line 4
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerHandleView$1;-><init>(Ljava/lang/String;I)V

    .line 8
    sput-object v0, Lcom/android/wm/shell/common/split/DividerHandleView;->WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$1;

    .line 11
    new-instance v0, Lcom/android/wm/shell/common/split/DividerHandleView$1;

    .line 13
    const-string v1, "height"

    .line 15
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerHandleView$1;-><init>(Ljava/lang/String;I)V

    .line 18
    sput-object v0, Lcom/android/wm/shell/common/split/DividerHandleView;->HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$1;

    .line 21
    return-void
    .line 23
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/graphics/Paint;

    .line 5
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 15
    const v1, 0x7f06011b    # @color/docked_divider_handle '#ffc4c4c4'

    .line 16
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 20
    move-result v0

    .line 23
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    if-eqz p1, :cond_0

    .line 31
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->isTestMode()Z

    .line 37
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 43
    move-result-object p1

    .line 46
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getHandlerViewWidth(Landroid/view/View;)I

    .line 47
    move-result p1

    .line 50
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    .line 51
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getHandlerViewHeight(Landroid/view/View;)I

    .line 57
    move-result p1

    .line 60
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    .line 61
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object p1

    .line 67
    const p2, 0x7f0710c1    # @dimen/split_divider_handle_width '106.0dp'

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    move-result p1

    .line 74
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 77
    move-result-object p1

    .line 80
    const p2, 0x7f0710c0    # @dimen/split_divider_handle_height '2.0dp'

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 84
    move-result p1

    .line 87
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    .line 88
    :goto_0
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    .line 90
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentWidth:I

    .line 92
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    .line 94
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentHeight:I

    .line 96
    if-le p1, p2, :cond_1

    .line 98
    div-int/lit8 v0, p1, 0x2

    .line 100
    goto :goto_1

    .line 102
    :cond_1
    move v0, p1

    .line 103
    :goto_1
    iput v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mTouchingWidth:I

    .line 104
    if-le p2, p1, :cond_2

    .line 106
    div-int/lit8 p2, p2, 0x2

    .line 108
    :cond_2
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mTouchingHeight:I

    .line 110
    return-void
    .line 112
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentWidth:I

    .line 8
    div-int/lit8 v1, v1, 0x2

    .line 10
    sub-int/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v1

    .line 16
    div-int/lit8 v1, v1, 0x2

    .line 17
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentHeight:I

    .line 19
    div-int/lit8 v3, v2, 0x2

    .line 21
    sub-int/2addr v1, v3

    .line 23
    iget v3, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentWidth:I

    .line 24
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v2

    .line 29
    div-int/lit8 v2, v2, 0x2

    .line 30
    int-to-float v4, v0

    .line 32
    int-to-float v5, v1

    .line 33
    iget v3, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentWidth:I

    .line 34
    add-int/2addr v0, v3

    .line 36
    int-to-float v6, v0

    .line 37
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentHeight:I

    .line 38
    add-int/2addr v1, v0

    .line 40
    int-to-float v7, v1

    .line 41
    int-to-float v9, v2

    .line 42
    iget-object v10, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 43
    move-object v3, p1

    .line 45
    move v8, v9

    .line 46
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 47
    return-void
    .line 50
.end method

.method public setTouching(ZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mTouching:Z

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->isTestMode()Z

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_2

    .line 16
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mTouching:Z

    .line 18
    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 22
    sget p2, Lcom/android/wm/shell/common/split/SplitUtilsStub;->HANDLEVIEW_TOUCHING_BG_COLOR:I

    .line 24
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    return-void

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p2

    .line 38
    const v0, 0x7f06011b    # @color/docked_divider_handle '#ffc4c4c4'

    .line 39
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 42
    move-result p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 49
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 53
    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 57
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 60
    :cond_3
    if-nez p2, :cond_5

    .line 62
    if-eqz p1, :cond_4

    .line 64
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mTouchingWidth:I

    .line 66
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentWidth:I

    .line 68
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mTouchingHeight:I

    .line 70
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentHeight:I

    .line 72
    goto :goto_0

    .line 74
    :cond_4
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    .line 75
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentWidth:I

    .line 77
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    .line 79
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentHeight:I

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 83
    goto :goto_5

    .line 86
    :cond_5
    if-eqz p1, :cond_6

    .line 87
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mTouchingWidth:I

    .line 89
    goto :goto_1

    .line 91
    :cond_6
    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    .line 92
    :goto_1
    if-eqz p1, :cond_7

    .line 94
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mTouchingHeight:I

    .line 96
    goto :goto_2

    .line 98
    :cond_7
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    .line 99
    :goto_2
    sget-object v1, Lcom/android/wm/shell/common/split/DividerHandleView;->WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$1;

    .line 101
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentWidth:I

    .line 103
    filled-new-array {v2, p2}, [I

    .line 105
    move-result-object p2

    .line 108
    invoke-static {p0, v1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 109
    move-result-object p2

    .line 112
    sget-object v1, Lcom/android/wm/shell/common/split/DividerHandleView;->HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$1;

    .line 113
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentHeight:I

    .line 115
    filled-new-array {v2, v0}, [I

    .line 117
    move-result-object v0

    .line 120
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 121
    move-result-object v0

    .line 124
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 125
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 127
    iput-object v1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 130
    filled-new-array {p2, v0}, [Landroid/animation/Animator;

    .line 132
    move-result-object p2

    .line 135
    invoke-virtual {v1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 136
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 139
    if-eqz p1, :cond_8

    .line 141
    const-wide/16 v0, 0x96

    .line 143
    goto :goto_3

    .line 145
    :cond_8
    const-wide/16 v0, 0xc8

    .line 146
    :goto_3
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 148
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 151
    if-eqz p1, :cond_9

    .line 153
    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 155
    goto :goto_4

    .line 157
    :cond_9
    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 158
    :goto_4
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 163
    new-instance v0, Lcom/android/wm/shell/common/split/DividerHandleView$3;

    .line 165
    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/DividerHandleView$3;-><init>(Lcom/android/wm/shell/common/split/DividerHandleView;)V

    .line 167
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    iget-object p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 173
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 175
    :goto_5
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mTouching:Z

    .line 178
    return-void
    .line 180
.end method

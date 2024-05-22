.class public Lcom/android/wm/shell/bubbles/BubbleFlyoutView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field public mArrowPointingLeft:Z

.field public final mBgPaint:Landroid/graphics/Paint;

.field public final mBgRect:Landroid/graphics/RectF;

.field public mBgTranslationX:F

.field public mBgTranslationY:F

.field public final mBubbleElevation:I

.field public mBubbleSize:I

.field public final mCornerRadius:F

.field public mDotCenter:[F

.field public mDotColor:I

.field public final mFloatingBackgroundColor:I

.field public final mFlyoutElevation:I

.field public final mFlyoutPadding:I

.field public final mFlyoutSpaceFromBubble:I

.field public final mFlyoutTextContainer:Landroid/view/ViewGroup;

.field public mFlyoutToDotHeightDelta:F

.field public mFlyoutToDotWidthDelta:F

.field public mFlyoutY:F

.field public final mMessageText:Landroid/widget/TextView;

.field public mNewDotRadius:F

.field public mNewDotSize:F

.field public mOnHide:Ljava/lang/Runnable;

.field public mOriginalDotSize:F

.field public mPercentStillFlyout:F

.field public mPercentTransitionedToDot:F

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mRestingTranslationX:F

.field public final mSenderAvatar:Landroid/widget/ImageView;

.field public final mSenderText:Landroid/widget/TextView;

.field public mTranslationXWhenDot:F

.field public mTranslationYWhenDot:F

.field public final mTriangleOutline:Landroid/graphics/Outline;


# direct methods
.method public static -$$Nest$mgetOutline(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;Landroid/graphics/Outline;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Outline;->isEmpty()Z

    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->getInterpolatedRadius()F

    .line 12
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    .line 16
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 18
    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    .line 26
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    .line 31
    move-result v1

    .line 34
    int-to-float v1, v1

    .line 35
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    .line 36
    add-float/2addr v1, v2

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 39
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    .line 44
    add-float/2addr v2, v3

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 47
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 50
    const v2, 0x3f7ae148    # 0.98f

    .line 52
    cmpl-float v3, v1, v2

    .line 55
    if-lez v3, :cond_0

    .line 57
    sub-float/2addr v1, v2

    .line 59
    const v2, 0x3ca3d70a    # 0.02f

    .line 60
    div-float/2addr v1, v2

    .line 63
    const/high16 v2, 0x3f800000    # 1.0f

    .line 64
    sub-float/2addr v2, v1

    .line 66
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    .line 67
    mul-float/2addr p0, v1

    .line 69
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 70
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 73
    :cond_0
    iget-object p0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 76
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 78
    return-void
    .line 81
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    .line 11
    new-instance v2, Landroid/animation/ArgbEvaluator;

    .line 13
    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 15
    iput-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 18
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 21
    new-instance v3, Landroid/graphics/Outline;

    .line 23
    invoke-direct {v3}, Landroid/graphics/Outline;-><init>()V

    .line 25
    iput-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    .line 28
    new-instance v3, Landroid/graphics/RectF;

    .line 30
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 32
    iput-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    .line 35
    const/4 v3, 0x0

    .line 37
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    .line 38
    const/high16 v4, 0x3f800000    # 1.0f

    .line 40
    iput v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 42
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 44
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 46
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    .line 48
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    .line 50
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    .line 52
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    .line 54
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    move-result-object p1

    .line 61
    const p2, 0x7f0d0058    # @layout/bubble_flyout 'res/layout/bubble_flyout.xml'

    .line 62
    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    const p1, 0x7f0a018c    # @id/bubble_flyout_text_container

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object p1

    .line 74
    check-cast p1, Landroid/view/ViewGroup;

    .line 75
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    .line 77
    const p2, 0x7f0a018a    # @id/bubble_flyout_name

    .line 79
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p2

    .line 85
    check-cast p2, Landroid/widget/TextView;

    .line 86
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    .line 88
    const p2, 0x7f0a0189    # @id/bubble_flyout_avatar

    .line 90
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object p2

    .line 96
    check-cast p2, Landroid/widget/ImageView;

    .line 97
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    .line 99
    const p2, 0x7f0a018b    # @id/bubble_flyout_text

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object p1

    .line 107
    check-cast p1, Landroid/widget/TextView;

    .line 108
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 112
    move-result-object p1

    .line 115
    const p2, 0x7f070142    # @dimen/bubble_flyout_padding_x '14.0dp'

    .line 116
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    move-result p2

    .line 122
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    .line 123
    const p2, 0x7f070145    # @dimen/bubble_flyout_space_from_bubble '8.0dp'

    .line 125
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 128
    move-result p2

    .line 131
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    .line 132
    const p2, 0x7f070138    # @dimen/bubble_elevation '1.0dp'

    .line 134
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 137
    move-result p2

    .line 140
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    .line 141
    const p2, 0x7f070141    # @dimen/bubble_flyout_elevation '4.0dp'

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 146
    move-result p1

    .line 149
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    .line 150
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 152
    const v3, 0x11200af    # @android:^attr-private/materialColorSurfaceContainerHigh

    .line 154
    const v4, 0x1010571    # @android:attr/dialogCornerRadius

    .line 157
    filled-new-array {v3, v4}, [I

    .line 160
    move-result-object v3

    .line 163
    invoke-virtual {p2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 164
    move-result-object p2

    .line 167
    const/4 v3, -0x1

    .line 168
    const/4 v4, 0x0

    .line 169
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 170
    move-result v3

    .line 173
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    .line 174
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 176
    move-result v5

    .line 179
    int-to-float v5, v5

    .line 180
    iput v5, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mCornerRadius:F

    .line 181
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 186
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 189
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 192
    int-to-float p1, p1

    .line 195
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 196
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$1;

    .line 199
    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleFlyoutView;)V

    .line 201
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 204
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 207
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    .line 213
    int-to-float p1, v4

    .line 215
    invoke-static {p1, p1, v2}, Lcom/android/wm/shell/common/TriangleShape;->createHorizontal(FFZ)Lcom/android/wm/shell/common/TriangleShape;

    .line 216
    move-result-object p2

    .line 219
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 220
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 223
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 226
    move-result-object p0

    .line 229
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    .line 233
    invoke-static {p1, p1, v4}, Lcom/android/wm/shell/common/TriangleShape;->createHorizontal(FFZ)Lcom/android/wm/shell/common/TriangleShape;

    .line 235
    move-result-object p1

    .line 238
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 239
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 242
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 245
    move-result-object p0

    .line 248
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    return-void
    .line 252
.end method

.method private getInterpolatedRadius()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    .line 2
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 4
    mul-float/2addr v0, v1

    .line 6
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mCornerRadius:F

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    invoke-static {v2, v1, p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method


# virtual methods
.method public final fade(ZLandroid/graphics/PointF;ZLjava/lang/Runnable;)V
    .locals 8

    .line 1
    iget v0, p2, Landroid/graphics/PointF;->y:F

    .line 2
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    .line 8
    move-result v2

    .line 11
    sub-int/2addr v1, v2

    .line 12
    int-to-float v1, v1

    .line 13
    const/high16 v2, 0x40000000    # 2.0f

    .line 14
    div-float/2addr v1, v2

    .line 16
    add-float/2addr v1, v0

    .line 17
    iput v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    .line 18
    const/4 v0, 0x0

    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    if-eqz p1, :cond_0

    .line 23
    move v2, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v1

    .line 27
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 28
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    .line 31
    const/high16 v3, 0x42200000    # 40.0f

    .line 33
    if-eqz p1, :cond_1

    .line 35
    add-float/2addr v2, v3

    .line 37
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 38
    iget v2, p2, Landroid/graphics/PointF;->x:F

    .line 41
    iget-boolean v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 43
    if-eqz v4, :cond_2

    .line 45
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleSize:I

    .line 47
    int-to-float v4, v4

    .line 49
    add-float/2addr v2, v4

    .line 50
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    .line 51
    int-to-float v4, v4

    .line 53
    add-float/2addr v2, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 56
    move-result v4

    .line 59
    int-to-float v4, v4

    .line 60
    sub-float/2addr v2, v4

    .line 61
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    .line 62
    int-to-float v4, v4

    .line 64
    sub-float/2addr v2, v4

    .line 65
    :goto_1
    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    .line 66
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 68
    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->updateDot(Landroid/graphics/PointF;Z)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 74
    move-result-object p2

    .line 77
    if-eqz p1, :cond_3

    .line 78
    move v0, v1

    .line 80
    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 81
    move-result-object p2

    .line 84
    const-wide/16 v0, 0xfa

    .line 85
    const-wide/16 v4, 0x96

    .line 87
    if-eqz p1, :cond_4

    .line 89
    move-wide v6, v0

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move-wide v6, v4

    .line 93
    :goto_2
    invoke-virtual {p2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 94
    move-result-object p2

    .line 97
    if-eqz p1, :cond_5

    .line 98
    sget-object p3, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 100
    goto :goto_3

    .line 102
    :cond_5
    sget-object p3, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 103
    :goto_3
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 108
    move-result-object p2

    .line 111
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    .line 112
    if-eqz p1, :cond_6

    .line 114
    goto :goto_4

    .line 116
    :cond_6
    sub-float/2addr p0, v3

    .line 117
    :goto_4
    invoke-virtual {p2, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 118
    move-result-object p0

    .line 121
    if-eqz p1, :cond_7

    .line 122
    goto :goto_5

    .line 124
    :cond_7
    move-wide v0, v4

    .line 125
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 126
    move-result-object p0

    .line 129
    if-eqz p1, :cond_8

    .line 130
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 132
    goto :goto_6

    .line 134
    :cond_8
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 135
    :goto_6
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 137
    move-result-object p0

    .line 140
    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 141
    return-void
    .line 144
.end method

.method public getRestingTranslationX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    .line 2
    return p0
    .line 4
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 7
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 9
    mul-float/2addr v1, v2

    .line 11
    sub-float/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 13
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    .line 18
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 20
    mul-float/2addr v2, v3

    .line 22
    sub-float/2addr v1, v2

    .line 23
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->getInterpolatedRadius()F

    .line 24
    move-result v2

    .line 27
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    .line 28
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 30
    mul-float/2addr v3, v4

    .line 32
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    .line 33
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    .line 35
    mul-float/2addr v3, v4

    .line 37
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    .line 38
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    .line 40
    const/4 v4, 0x0

    .line 42
    int-to-float v4, v4

    .line 43
    iget v5, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 44
    mul-float/2addr v4, v5

    .line 46
    sub-float/2addr v0, v4

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 54
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 56
    iget v4, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v4

    .line 63
    iget v5, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotColor:I

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v5

    .line 69
    invoke-virtual {v1, v3, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    .line 86
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    .line 93
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    .line 95
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 103
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    return-void
    .line 109
.end method

.method public final setCollapsePercent(F)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 11
    move-result p1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 16
    move-result p1

    .line 19
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 20
    sub-float v2, v0, p1

    .line 22
    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 24
    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 26
    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 30
    move-result v2

    .line 33
    neg-int v2, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 36
    move-result v2

    .line 39
    :goto_0
    int-to-float v2, v2

    .line 40
    mul-float/2addr p1, v2

    .line 41
    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 42
    const/high16 v3, 0x3f400000    # 0.75f

    .line 44
    sub-float/2addr v2, v3

    .line 46
    const/high16 v3, 0x3e800000    # 0.25f

    .line 47
    div-float/2addr v2, v3

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 50
    move-result v1

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 54
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 60
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    .line 68
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 70
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    .line 73
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 75
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 80
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 85
    iget p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    .line 88
    int-to-float v0, p1

    .line 90
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    .line 91
    sub-int/2addr p1, v1

    .line 93
    int-to-float p1, p1

    .line 94
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 95
    mul-float/2addr p1, v1

    .line 97
    sub-float/2addr v0, p1

    .line 98
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 102
    return-void
    .line 105
.end method

.method public final updateDot(Landroid/graphics/PointF;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mNewDotSize:F

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 9
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    sub-float/2addr v2, v1

    .line 14
    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 17
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    sub-float/2addr v2, v1

    .line 22
    iput v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    .line 23
    if-eqz p2, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    .line 30
    div-float v0, p2, v0

    .line 32
    :goto_1
    iget p2, p1, Landroid/graphics/PointF;->x:F

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mDotCenter:[F

    .line 36
    const/4 v2, 0x0

    .line 38
    aget v2, v1, v2

    .line 39
    add-float/2addr p2, v2

    .line 41
    sub-float/2addr p2, v0

    .line 42
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 43
    const/4 v2, 0x1

    .line 45
    aget v1, v1, v2

    .line 46
    add-float/2addr p1, v1

    .line 48
    sub-float/2addr p1, v0

    .line 49
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    .line 50
    sub-float/2addr v0, p2

    .line 52
    iget p2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutY:F

    .line 53
    sub-float/2addr p2, p1

    .line 55
    neg-float p1, v0

    .line 56
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    .line 57
    neg-float p1, p2

    .line 59
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    .line 60
    return-void
    .line 62
.end method

.method public final updateFlyoutMessage(Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v3, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->isGroupChat:Z

    .line 9
    if-eqz v3, :cond_0

    .line 11
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderAvatar:Landroid/widget/ImageView;

    .line 29
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    .line 35
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 45
    iget-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mIsLargeScreen:Z

    .line 47
    if-eqz v3, :cond_1

    .line 49
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 53
    move-result v3

    .line 56
    int-to-float v3, v3

    .line 57
    const v4, 0x3e99999a    # 0.3f

    .line 58
    mul-float/2addr v3, v4

    .line 61
    iget v0, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mMinimumFlyoutWidthLargeScreen:I

    .line 62
    int-to-float v0, v0

    .line 64
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 65
    move-result v0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 72
    move-result v0

    .line 75
    int-to-float v0, v0

    .line 76
    const v3, 0x3f19999a    # 0.6f

    .line 77
    mul-float/2addr v0, v3

    .line 80
    :goto_1
    float-to-int v0, v0

    .line 81
    iget v3, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    .line 82
    mul-int/lit8 v3, v3, 0x2

    .line 84
    sub-int/2addr v0, v3

    .line 86
    iget-object v3, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    .line 87
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v3

    .line 92
    if-nez v3, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    .line 95
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 97
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    .line 100
    iget-object v3, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderName:Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    .line 107
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    goto :goto_2

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    .line 118
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 120
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    .line 123
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
    .line 130
.end method

.method public final updateFontSize()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x10502d1    # @android:dimen/timepicker_radial_picker_top_margin

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mMessageText:Landroid/widget/TextView;

    .line 16
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->mSenderText:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 24
    return-void
    .line 27
.end method

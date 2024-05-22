.class public Lcom/android/systemui/screenshot/CropView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActivePointerId:I

.field public final mContainerBackgroundPaint:Landroid/graphics/Paint;

.field public mCrop:Landroid/graphics/RectF;

.field public mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

.field public final mCropTouchMargin:F

.field public mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field public mEntranceInterpolation:F

.field public final mExploreByTouchHelper:Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;

.field public mExtraBottomPadding:I

.field public mExtraTopPadding:I

.field public final mHandlePaint:Landroid/graphics/Paint;

.field public mImageWidth:I

.field public mMotionRange:Landroid/util/Range;

.field public mMovementStartValue:F

.field public final mShadePaint:Landroid/graphics/Paint;

.field public mStartingX:F

.field public mStartingY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p3, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p3, v0, v0, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 4
    sget-object p3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    iput-object p3, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 5
    iput v1, p0, Lcom/android/systemui/screenshot/CropView;->mEntranceInterpolation:F

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/R$styleable;->CropView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/CropView;->mShadePaint:Landroid/graphics/Paint;

    const/4 p3, 0x3

    const/16 v1, 0xff

    .line 8
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 10
    invoke-static {v1, p3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/CropView;->mContainerBackgroundPaint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    const/high16 v0, -0x1000000

    .line 14
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 p3, 0x2

    const/16 v0, 0x14

    .line 16
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    .line 17
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41c00000    # 24.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    .line 20
    new-instance p1, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;-><init>(Lcom/android/systemui/screenshot/CropView;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mExploreByTouchHelper:Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;

    .line 21
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private getImageHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mExtraTopPadding:I

    .line 6
    sub-int/2addr v0, v1

    .line 8
    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mExtraBottomPadding:I

    .line 9
    sub-int/2addr v0, p0

    .line 11
    return v0
    .line 12
.end method

.method public static isVertical(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 2
    if-eq p0, v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 6
    if-ne p0, v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
    .line 14
.end method


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mExploreByTouchHelper:Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mExploreByTouchHelper:Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public final drawHorizontalHandle(Landroid/graphics/Canvas;FZ)V
    .locals 11

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 2
    move-result p2

    .line 5
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 6
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 10
    move-result v0

    .line 13
    int-to-float v2, v0

    .line 14
    int-to-float p2, p2

    .line 15
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 16
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 20
    move-result v0

    .line 23
    int-to-float v4, v0

    .line 24
    iget-object v6, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    .line 25
    move-object v1, p1

    .line 27
    move v3, p2

    .line 28
    move v5, p2

    .line 29
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    move-result-object v0

    .line 40
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 41
    const/high16 v1, 0x41000000    # 8.0f

    .line 43
    mul-float/2addr v0, v1

    .line 45
    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 46
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 50
    move-result v1

    .line 53
    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 54
    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 56
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 58
    move-result v2

    .line 61
    add-int/2addr v2, v1

    .line 62
    div-int/lit8 v2, v2, 0x2

    .line 63
    int-to-float v1, v2

    .line 65
    sub-float v3, v1, v0

    .line 66
    sub-float v4, p2, v0

    .line 68
    add-float v5, v1, v0

    .line 70
    add-float v6, p2, v0

    .line 72
    if-eqz p3, :cond_0

    .line 74
    const/high16 p2, 0x43340000    # 180.0f

    .line 76
    goto :goto_0

    .line 78
    :cond_0
    const/4 p2, 0x0

    .line 79
    :goto_0
    move v7, p2

    .line 80
    const/high16 v8, 0x43340000    # 180.0f

    .line 81
    const/4 v9, 0x1

    .line 83
    iget-object v10, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    .line 84
    move-object v2, p1

    .line 86
    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 87
    return-void
    .line 90
.end method

.method public final drawShade(Landroid/graphics/Canvas;FFFF)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 2
    move-result p2

    .line 5
    int-to-float v1, p2

    .line 6
    invoke-virtual {p0, p3}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 7
    move-result p2

    .line 10
    int-to-float v2, p2

    .line 11
    invoke-virtual {p0, p4}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 12
    move-result p2

    .line 15
    int-to-float v3, p2

    .line 16
    invoke-virtual {p0, p5}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 17
    move-result p2

    .line 20
    int-to-float v4, p2

    .line 21
    iget-object v5, p0, Lcom/android/systemui/screenshot/CropView;->mShadePaint:Landroid/graphics/Paint;

    .line 22
    move-object v0, p1

    .line 24
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 25
    return-void
    .line 28
.end method

.method public final drawVerticalHandle(Landroid/graphics/Canvas;FZ)V
    .locals 12

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 2
    move-result p2

    .line 5
    int-to-float p2, p2

    .line 6
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 7
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 11
    move-result v0

    .line 14
    int-to-float v2, v0

    .line 15
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 16
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 20
    move-result v0

    .line 23
    int-to-float v4, v0

    .line 24
    iget-object v5, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    .line 25
    move-object v0, p1

    .line 27
    move v1, p2

    .line 28
    move v3, p2

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    move-result-object v0

    .line 40
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 41
    const/high16 v1, 0x41000000    # 8.0f

    .line 43
    mul-float/2addr v0, v1

    .line 45
    sget-object v1, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    .line 48
    move-result v1

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 52
    move-result v1

    .line 55
    sget-object v2, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 56
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    .line 58
    move-result v2

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 62
    move-result v2

    .line 65
    add-int/2addr v2, v1

    .line 66
    div-int/lit8 v2, v2, 0x2

    .line 67
    sub-float v4, p2, v0

    .line 69
    int-to-float v1, v2

    .line 71
    sub-float v5, v1, v0

    .line 72
    add-float v6, p2, v0

    .line 74
    add-float v7, v1, v0

    .line 76
    if-eqz p3, :cond_0

    .line 78
    const/high16 p2, 0x42b40000    # 90.0f

    .line 80
    goto :goto_0

    .line 82
    :cond_0
    const/high16 p2, 0x43870000    # 270.0f

    .line 83
    :goto_0
    move v8, p2

    .line 85
    const/high16 v9, 0x43340000    # 180.0f

    .line 86
    const/4 v10, 0x1

    .line 88
    iget-object v11, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    .line 89
    move-object v3, p1

    .line 91
    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 92
    return-void
    .line 95
.end method

.method public final fractionToHorizontalPixels(F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    move-result v0

    .line 5
    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mImageWidth:I

    .line 6
    sub-int/2addr v0, p0

    .line 8
    div-int/lit8 v0, v0, 0x2

    .line 9
    int-to-float v0, v0

    .line 11
    int-to-float p0, p0

    .line 12
    mul-float/2addr p1, p0

    .line 13
    add-float/2addr p1, v0

    .line 14
    float-to-int p0, p1

    .line 15
    return p0
    .line 16
.end method

.method public final fractionToVerticalPixels(F)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mExtraTopPadding:I

    .line 2
    int-to-float v0, v0

    .line 4
    invoke-direct {p0}, Lcom/android/systemui/screenshot/CropView;->getImageHeight()I

    .line 5
    move-result p0

    .line 8
    int-to-float p0, p0

    .line 9
    mul-float/2addr p1, p0

    .line 10
    add-float/2addr p1, v0

    .line 11
    float-to-int p0, p1

    .line 12
    return p0
    .line 13
.end method

.method public final getAllowedValues(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Landroid/util/Range;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    const/4 v0, 0x2

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    if-eq p1, v0, :cond_2

    .line 13
    const/4 v0, 0x3

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    const/4 v0, 0x4

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p1, Landroid/util/Range;

    .line 23
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 25
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 27
    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    .line 29
    sget-object v3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->LEFT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 31
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)F

    .line 33
    move-result p0

    .line 36
    add-float/2addr p0, v0

    .line 37
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    move-result-object p0

    .line 41
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object v0

    .line 45
    invoke-direct {p1, p0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 46
    return-object p1

    .line 49
    :cond_1
    new-instance p1, Landroid/util/Range;

    .line 50
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 56
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 58
    iget v2, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    .line 60
    sget-object v3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->RIGHT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 62
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)F

    .line 64
    move-result p0

    .line 67
    sub-float/2addr v1, p0

    .line 68
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 69
    move-result-object p0

    .line 72
    invoke-direct {p1, v0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 73
    return-object p1

    .line 76
    :cond_2
    new-instance p1, Landroid/util/Range;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 79
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 81
    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    .line 83
    sget-object v3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 85
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)F

    .line 87
    move-result p0

    .line 90
    add-float/2addr p0, v0

    .line 91
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    move-result-object p0

    .line 95
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 96
    move-result-object v0

    .line 99
    invoke-direct {p1, p0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 100
    return-object p1

    .line 103
    :cond_3
    new-instance p1, Landroid/util/Range;

    .line 104
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 106
    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 110
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 112
    iget v2, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    .line 114
    sget-object v3, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 116
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)F

    .line 118
    move-result p0

    .line 121
    sub-float/2addr v1, p0

    .line 122
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 123
    move-result-object p0

    .line 126
    invoke-direct {p1, v0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 127
    return-object p1
    .line 130
.end method

.method public final getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    const/4 v0, 0x3

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    const/4 v0, 0x4

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 20
    iget p0, p0, Landroid/graphics/RectF;->right:F

    .line 22
    return p0

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 25
    iget p0, p0, Landroid/graphics/RectF;->left:F

    .line 27
    return p0

    .line 29
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 30
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 32
    return p0

    .line 34
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 35
    iget p0, p0, Landroid/graphics/RectF;->top:F

    .line 37
    return p0
    .line 39
.end method

.method public final getCropBoundaries(II)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 4
    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 6
    int-to-float p1, p1

    .line 8
    mul-float/2addr v1, p1

    .line 9
    float-to-int v1, v1

    .line 10
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 11
    int-to-float p2, p2

    .line 13
    mul-float/2addr v2, p2

    .line 14
    float-to-int v2, v2

    .line 15
    iget v3, p0, Landroid/graphics/RectF;->right:F

    .line 16
    mul-float/2addr v3, p1

    .line 18
    float-to-int p1, v3

    .line 19
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 20
    mul-float/2addr p0, p2

    .line 22
    float-to-int p0, p0

    .line 23
    invoke-direct {v0, v1, v2, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    return-object v0
    .line 27
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 5
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 7
    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mEntranceInterpolation:F

    .line 9
    const/4 v6, 0x0

    .line 11
    invoke-static {v0, v6, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 12
    move-result v7

    .line 15
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 16
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 18
    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mEntranceInterpolation:F

    .line 20
    const/high16 v8, 0x3f800000    # 1.0f

    .line 22
    invoke-static {v0, v8, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 24
    move-result v9

    .line 27
    const/4 v10, 0x0

    .line 28
    const/high16 v11, 0x3f800000    # 1.0f

    .line 29
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 31
    iget v5, v0, Landroid/graphics/RectF;->top:F

    .line 33
    const/4 v2, 0x0

    .line 35
    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    move-object v0, p0

    .line 38
    move-object v1, p1

    .line 39
    move v3, v7

    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 44
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 46
    move-object v0, p0

    .line 48
    move v4, v11

    .line 49
    move v5, v9

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 54
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 56
    iget v4, v0, Landroid/graphics/RectF;->left:F

    .line 58
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 60
    move-object v0, p0

    .line 62
    move v2, v10

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 67
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 69
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 71
    const/high16 v4, 0x3f800000    # 1.0f

    .line 73
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 75
    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    .line 78
    invoke-virtual {p0, v6}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 81
    move-result v0

    .line 84
    int-to-float v1, v0

    .line 85
    invoke-virtual {p0, v6}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 86
    move-result v0

    .line 89
    int-to-float v2, v0

    .line 90
    invoke-virtual {p0, v8}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 91
    move-result v0

    .line 94
    int-to-float v3, v0

    .line 95
    invoke-virtual {p0, v7}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 96
    move-result v0

    .line 99
    int-to-float v4, v0

    .line 100
    iget-object v5, p0, Lcom/android/systemui/screenshot/CropView;->mContainerBackgroundPaint:Landroid/graphics/Paint;

    .line 101
    move-object v0, p1

    .line 103
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    invoke-virtual {p0, v6}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 107
    move-result v0

    .line 110
    int-to-float v1, v0

    .line 111
    invoke-virtual {p0, v9}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 112
    move-result v0

    .line 115
    int-to-float v2, v0

    .line 116
    invoke-virtual {p0, v8}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 117
    move-result v0

    .line 120
    int-to-float v3, v0

    .line 121
    invoke-virtual {p0, v8}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 122
    move-result v0

    .line 125
    int-to-float v4, v0

    .line 126
    iget-object v5, p0, Lcom/android/systemui/screenshot/CropView;->mContainerBackgroundPaint:Landroid/graphics/Paint;

    .line 127
    move-object v0, p1

    .line 129
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mHandlePaint:Landroid/graphics/Paint;

    .line 133
    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mEntranceInterpolation:F

    .line 135
    const/high16 v2, 0x437f0000    # 255.0f

    .line 137
    mul-float/2addr v1, v2

    .line 139
    float-to-int v1, v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 144
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 146
    const/4 v1, 0x1

    .line 148
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/screenshot/CropView;->drawHorizontalHandle(Landroid/graphics/Canvas;FZ)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 152
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 154
    const/4 v2, 0x0

    .line 156
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/screenshot/CropView;->drawHorizontalHandle(Landroid/graphics/Canvas;FZ)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 160
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 162
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/screenshot/CropView;->drawVerticalHandle(Landroid/graphics/Canvas;FZ)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 167
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 169
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/screenshot/CropView;->drawVerticalHandle(Landroid/graphics/Canvas;FZ)V

    .line 171
    return-void
    .line 174
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mExploreByTouchHelper:Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/screenshot/CropView$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    iget-object p1, p1, Lcom/android/systemui/screenshot/CropView$SavedState;->mCrop:Landroid/graphics/RectF;

    .line 11
    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 13
    return-void
    .line 15
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/systemui/screenshot/CropView$SavedState;

    .line 6
    invoke-direct {v1, v0}, Lcom/android/systemui/screenshot/CropView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 11
    iput-object p0, v1, Lcom/android/systemui/screenshot/CropView$SavedState;->mCrop:Landroid/graphics/RectF;

    .line 13
    return-object v1
    .line 15
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 2
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 10
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 14
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 18
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    sget-object v4, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 23
    const/4 v5, 0x1

    .line 25
    if-eqz v2, :cond_7

    .line 26
    if-eq v2, v5, :cond_5

    .line 28
    const/4 v0, 0x2

    .line 30
    if-eq v2, v0, :cond_2

    .line 31
    const/4 v0, 0x3

    .line 33
    if-eq v2, v0, :cond_5

    .line 34
    const/4 v0, 0x5

    .line 36
    if-eq v2, v0, :cond_1

    .line 37
    const/4 v0, 0x6

    .line 39
    if-eq v2, v0, :cond_0

    .line 40
    goto/16 :goto_1

    .line 42
    :cond_0
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mActivePointerId:I

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 46
    move-result v1

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 50
    move-result v1

    .line 53
    if-ne v0, v1, :cond_6

    .line 54
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 56
    if-eq v0, v4, :cond_6

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 60
    move-result v0

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 64
    move-result p1

    .line 67
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/screenshot/CropView;->updateListener(FI)V

    .line 68
    return v5

    .line 71
    :cond_1
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mActivePointerId:I

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 74
    move-result v1

    .line 77
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 78
    move-result v1

    .line 81
    if-ne v0, v1, :cond_6

    .line 82
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 84
    if-eq v0, v4, :cond_6

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 88
    move-result v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 92
    move-result p1

    .line 95
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/screenshot/CropView;->updateListener(FI)V

    .line 96
    return v5

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 100
    if-eq v1, v4, :cond_6

    .line 102
    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mActivePointerId:I

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 106
    move-result v1

    .line 109
    if-ltz v1, :cond_4

    .line 110
    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 112
    invoke-static {v2}, Lcom/android/systemui/screenshot/CropView;->isVertical(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z

    .line 114
    move-result v2

    .line 117
    if-eqz v2, :cond_3

    .line 118
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 120
    move-result v2

    .line 123
    iget v3, p0, Lcom/android/systemui/screenshot/CropView;->mStartingY:F

    .line 124
    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 127
    move-result v2

    .line 130
    iget v3, p0, Lcom/android/systemui/screenshot/CropView;->mStartingX:F

    .line 131
    :goto_0
    sub-float/2addr v2, v3

    .line 133
    float-to-int v2, v2

    .line 134
    int-to-float v2, v2

    .line 135
    iget-object v3, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 136
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)F

    .line 138
    move-result v2

    .line 141
    iget-object v3, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 142
    iget-object v4, p0, Lcom/android/systemui/screenshot/CropView;->mMotionRange:Landroid/util/Range;

    .line 144
    iget v6, p0, Lcom/android/systemui/screenshot/CropView;->mMovementStartValue:F

    .line 146
    add-float/2addr v6, v2

    .line 148
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    move-result-object v2

    .line 152
    invoke-virtual {v4, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 153
    move-result-object v2

    .line 156
    check-cast v2, Ljava/lang/Float;

    .line 157
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 159
    move-result v2

    .line 162
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/screenshot/CropView;->setBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V

    .line 163
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 166
    move-result p1

    .line 169
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/screenshot/CropView;->updateListener(FI)V

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 173
    :cond_4
    return v5

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 177
    if-eq v0, v4, :cond_6

    .line 179
    iget v0, p0, Lcom/android/systemui/screenshot/CropView;->mActivePointerId:I

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 183
    move-result v1

    .line 186
    if-ne v0, v1, :cond_6

    .line 187
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 189
    move-result p1

    .line 192
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/screenshot/CropView;->updateListener(FI)V

    .line 193
    return v5

    .line 196
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 197
    move-result p0

    .line 200
    return p0

    .line 201
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 202
    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 204
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 206
    move-result v2

    .line 209
    iget-object v6, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 210
    iget v6, v6, Landroid/graphics/RectF;->right:F

    .line 212
    invoke-virtual {p0, v6}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    .line 214
    move-result v6

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 218
    move-result v7

    .line 221
    int-to-float v0, v0

    .line 222
    sub-float/2addr v7, v0

    .line 223
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 224
    move-result v7

    .line 227
    iget v8, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    .line 228
    cmpg-float v7, v7, v8

    .line 230
    if-gez v7, :cond_8

    .line 232
    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 234
    goto :goto_2

    .line 236
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 237
    move-result v7

    .line 240
    int-to-float v1, v1

    .line 241
    sub-float/2addr v7, v1

    .line 242
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 243
    move-result v7

    .line 246
    iget v8, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    .line 247
    cmpg-float v7, v7, v8

    .line 249
    if-gez v7, :cond_9

    .line 251
    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 253
    goto :goto_2

    .line 255
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 256
    move-result v7

    .line 259
    cmpl-float v0, v7, v0

    .line 260
    if-gtz v0, :cond_a

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 264
    move-result v0

    .line 267
    cmpg-float v0, v0, v1

    .line 268
    if-gez v0, :cond_c

    .line 270
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 272
    move-result v0

    .line 275
    int-to-float v1, v2

    .line 276
    sub-float/2addr v0, v1

    .line 277
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 278
    move-result v0

    .line 281
    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    .line 282
    cmpg-float v0, v0, v1

    .line 284
    if-gez v0, :cond_b

    .line 286
    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->LEFT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 288
    goto :goto_2

    .line 290
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 291
    move-result v0

    .line 294
    int-to-float v1, v6

    .line 295
    sub-float/2addr v0, v1

    .line 296
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 297
    move-result v0

    .line 300
    iget v1, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    .line 301
    cmpg-float v0, v0, v1

    .line 303
    if-gez v0, :cond_c

    .line 305
    sget-object v0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->RIGHT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 307
    goto :goto_2

    .line 309
    :cond_c
    move-object v0, v4

    .line 310
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 311
    if-eq v0, v4, :cond_d

    .line 313
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 315
    move-result v0

    .line 318
    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mActivePointerId:I

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 321
    move-result v0

    .line 324
    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mStartingY:F

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 327
    move-result v0

    .line 330
    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mStartingX:F

    .line 331
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    .line 335
    move-result v0

    .line 338
    iput v0, p0, Lcom/android/systemui/screenshot/CropView;->mMovementStartValue:F

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 341
    move-result p1

    .line 344
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/screenshot/CropView;->updateListener(FI)V

    .line 345
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/CropView;->getAllowedValues(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Landroid/util/Range;

    .line 350
    move-result-object p1

    .line 353
    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mMotionRange:Landroid/util/Range;

    .line 354
    :cond_d
    return v5
    .line 356
.end method

.method public final pixelDistanceToFraction(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)F
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/systemui/screenshot/CropView;->isVertical(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/android/systemui/screenshot/CropView;->getImageHeight()I

    .line 8
    move-result p0

    .line 11
    :goto_0
    int-to-float p0, p0

    .line 12
    div-float/2addr p2, p0

    .line 13
    return p2

    .line 14
    :cond_0
    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mImageWidth:I

    .line 15
    goto :goto_0
    .line 17
.end method

.method public setBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/CropView;->getAllowedValues(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Landroid/util/Range;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p2

    .line 9
    invoke-virtual {v0, p2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 10
    move-result-object p2

    .line 13
    check-cast p2, Ljava/lang/Float;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 16
    move-result p2

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_4

    .line 24
    const/4 v0, 0x1

    .line 26
    if-eq p1, v0, :cond_3

    .line 27
    const/4 v0, 0x2

    .line 29
    if-eq p1, v0, :cond_2

    .line 30
    const/4 v0, 0x3

    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    const/4 v0, 0x4

    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 39
    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 44
    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 49
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 51
    goto :goto_0

    .line 53
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 54
    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 56
    goto :goto_0

    .line 58
    :cond_4
    const-string p1, "CropView"

    .line 59
    const-string p2, "No boundary selected"

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 66
    return-void
    .line 69
.end method

.method public setCropInteractionListener(Lcom/android/systemui/screenshot/CropView$CropInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

    .line 2
    return-void
    .line 4
.end method

.method public setExtraPadding(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/screenshot/CropView;->mExtraTopPadding:I

    .line 2
    iput p2, p0, Lcom/android/systemui/screenshot/CropView;->mExtraBottomPadding:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
    .line 9
.end method

.method public setImageWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/screenshot/CropView;->mImageWidth:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateListener(FI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 6
    invoke-static {v0}, Lcom/android/systemui/screenshot/CropView;->isVertical(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    .line 16
    move-result v3

    .line 19
    if-eqz p2, :cond_2

    .line 20
    const/4 v0, 0x1

    .line 22
    if-eq p2, v0, :cond_1

    .line 23
    const/4 v0, 0x2

    .line 25
    if-eq p2, v0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/screenshot/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

    .line 29
    invoke-virtual {p0, v3}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 31
    move-result v0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 35
    iget p0, p0, Landroid/graphics/RectF;->left:F

    .line 37
    check-cast p2, Lcom/android/systemui/screenshot/MagnifierView;

    .line 39
    invoke-virtual {p2, v3, v0, p1}, Lcom/android/systemui/screenshot/MagnifierView;->onCropDragMoved(FIF)V

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

    .line 45
    check-cast p0, Lcom/android/systemui/screenshot/MagnifierView;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/MagnifierView;->onCropDragComplete()V

    .line 49
    goto :goto_0

    .line 52
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/screenshot/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/CropView$CropInteractionListener;

    .line 53
    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 55
    invoke-virtual {p0, v3}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    .line 57
    move-result v4

    .line 60
    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    .line 61
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 63
    iget p0, p0, Landroid/graphics/RectF;->right:F

    .line 65
    add-float/2addr v0, p0

    .line 67
    const/high16 p0, 0x40000000    # 2.0f

    .line 68
    div-float v5, v0, p0

    .line 70
    move-object v1, p2

    .line 72
    check-cast v1, Lcom/android/systemui/screenshot/MagnifierView;

    .line 73
    move v6, p1

    .line 75
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/screenshot/MagnifierView;->onCropDragStarted(Lcom/android/systemui/screenshot/CropView$CropBoundary;FIFF)V

    .line 76
    :cond_3
    :goto_0
    return-void
    .line 79
.end method

.class public Lcom/android/settings/device/ProgressCardView;
.super Landroid/view/View;
.source "ProgressCardView.java"


# instance fields
.field private mCurrentWaterHeight:I

.field private mCurrentWaveHeight:I

.field private mDamping:F

.field private mDuration:I

.field private mFinalWaterHeight:I

.field private mFirstStartAnim:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPercent:F

.field private mResponse:F

.field private mViewHeight:I

.field private mWaveHeight:I

.field private mWaveOffset:I

.field private mWaveWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentWaterHeight(Lcom/android/settings/device/ProgressCardView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/device/ProgressCardView;->mCurrentWaterHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentWaveHeight(Lcom/android/settings/device/ProgressCardView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/device/ProgressCardView;->mCurrentWaveHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFinalWaterHeight(Lcom/android/settings/device/ProgressCardView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/device/ProgressCardView;->mFinalWaterHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewHeight(Lcom/android/settings/device/ProgressCardView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/device/ProgressCardView;->mViewHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaveHeight(Lcom/android/settings/device/ProgressCardView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/device/ProgressCardView;->mWaveHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaveOffset(Lcom/android/settings/device/ProgressCardView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/device/ProgressCardView;->mWaveOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaveWidth(Lcom/android/settings/device/ProgressCardView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/device/ProgressCardView;->mWaveWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentWaterHeight(Lcom/android/settings/device/ProgressCardView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mCurrentWaterHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentWaveHeight(Lcom/android/settings/device/ProgressCardView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mCurrentWaveHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaveOffset(Lcom/android/settings/device/ProgressCardView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mWaveOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mPercent:F

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mCurrentWaterHeight:I

    const/16 v0, 0x1e

    .line 35
    iput v0, p0, Lcom/android/settings/device/ProgressCardView;->mWaveHeight:I

    const/16 v0, 0x190

    .line 36
    iput v0, p0, Lcom/android/settings/device/ProgressCardView;->mWaveWidth:I

    .line 37
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mWaveOffset:I

    .line 38
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mCurrentWaveHeight:I

    const p1, 0x3f19999a    # 0.6f

    .line 41
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mDamping:F

    .line 42
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mResponse:F

    const/16 p1, 0x640

    .line 43
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mDuration:I

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/android/settings/device/ProgressCardView;->mFirstStartAnim:Z

    .line 49
    invoke-direct {p0}, Lcom/android/settings/device/ProgressCardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mPercent:F

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mCurrentWaterHeight:I

    const/16 p2, 0x1e

    .line 35
    iput p2, p0, Lcom/android/settings/device/ProgressCardView;->mWaveHeight:I

    const/16 p2, 0x190

    .line 36
    iput p2, p0, Lcom/android/settings/device/ProgressCardView;->mWaveWidth:I

    .line 37
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mWaveOffset:I

    .line 38
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mCurrentWaveHeight:I

    const p1, 0x3f19999a    # 0.6f

    .line 41
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mDamping:F

    .line 42
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mResponse:F

    const/16 p1, 0x640

    .line 43
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mDuration:I

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/android/settings/device/ProgressCardView;->mFirstStartAnim:Z

    .line 54
    invoke-direct {p0}, Lcom/android/settings/device/ProgressCardView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method private startAnim()V
    .locals 4

    .line 111
    iget v0, p0, Lcom/android/settings/device/ProgressCardView;->mViewHeight:I

    iget v1, p0, Lcom/android/settings/device/ProgressCardView;->mFinalWaterHeight:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 112
    new-instance v1, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    .line 113
    iget v2, p0, Lcom/android/settings/device/ProgressCardView;->mDamping:F

    invoke-virtual {v1, v2}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 114
    iget v2, p0, Lcom/android/settings/device/ProgressCardView;->mResponse:F

    invoke-virtual {v1, v2}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 115
    iget v2, p0, Lcom/android/settings/device/ProgressCardView;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    new-instance v1, Lcom/android/settings/device/ProgressCardView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/device/ProgressCardView$1;-><init>(Lcom/android/settings/device/ProgressCardView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 124
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 126
    iget v1, p0, Lcom/android/settings/device/ProgressCardView;->mWaveWidth:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/android/settings/device/ProgressCardView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/device/ProgressCardView$2;-><init>(Lcom/android/settings/device/ProgressCardView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget p0, p0, Lcom/android/settings/device/ProgressCardView;->mDuration:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    iget-boolean v0, p0, Lcom/android/settings/device/ProgressCardView;->mFirstStartAnim:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/device/ProgressCardView;->mFirstStartAnim:Z

    .line 82
    invoke-direct {p0}, Lcom/android/settings/device/ProgressCardView;->startAnim()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 88
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$color;->progress_paint_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget v0, p0, Lcom/android/settings/device/ProgressCardView;->mWaveWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 91
    iget-object v1, p0, Lcom/android/settings/device/ProgressCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 92
    iget-object v1, p0, Lcom/android/settings/device/ProgressCardView;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/settings/device/ProgressCardView;->mWaveWidth:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/settings/device/ProgressCardView;->mWaveOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/device/ProgressCardView;->mViewHeight:I

    iget v4, p0, Lcom/android/settings/device/ProgressCardView;->mCurrentWaterHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 93
    iget v1, p0, Lcom/android/settings/device/ProgressCardView;->mWaveWidth:I

    neg-int v1, v1

    :goto_0
    iget v2, p0, Lcom/android/settings/device/ProgressCardView;->mWaveWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/settings/device/ProgressCardView;->mPath:Landroid/graphics/Path;

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/android/settings/device/ProgressCardView;->mCurrentWaveHeight:I

    neg-int v5, v5

    int-to-float v5, v5

    int-to-float v6, v0

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 95
    iget-object v2, p0, Lcom/android/settings/device/ProgressCardView;->mPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/settings/device/ProgressCardView;->mCurrentWaveHeight:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 93
    iget v2, p0, Lcom/android/settings/device/ProgressCardView;->mWaveWidth:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/device/ProgressCardView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/settings/device/ProgressCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mViewHeight:I

    int-to-float p1, p1

    .line 73
    iget p2, p0, Lcom/android/settings/device/ProgressCardView;->mPercent:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mFinalWaterHeight:I

    return-void
.end method

.method public setPercent(F)V
    .locals 1

    .line 58
    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mPercent:F

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/android/settings/device/ProgressCardView;->mFirstStartAnim:Z

    .line 60
    iget v0, p0, Lcom/android/settings/device/ProgressCardView;->mViewHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/android/settings/device/ProgressCardView;->mFinalWaterHeight:I

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

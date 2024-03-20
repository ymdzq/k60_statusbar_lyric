.class public Lmiuix/androidbasewidget/widget/CircleProgressBar;
.super Lmiuix/androidbasewidget/widget/ProgressBar;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mArcPath:Landroid/graphics/Path;

.field public mArcRect:Landroid/graphics/RectF;

.field public mBitmapForSoftLayer:Landroid/graphics/Bitmap;

.field public mCanvasForSoftLayer:Landroid/graphics/Canvas;

.field public mChangeProgressAnimator:Landroid/animation/Animator;

.field public mCurrentLevel:I

.field public mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

.field public mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

.field public mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

.field public final mPaint:Landroid/graphics/Paint;

.field public mPrevAlpha:I

.field public mPrevLevel:I

.field public mProgressLevels:[I

.field public mRotateVelocity:I

.field public mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    const/16 p2, 0x12c

    .line 5
    iput p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 8
    invoke-virtual {p3}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0605ab    # @color/miuix_appcompat_progressbar_circle_color_dark '#ccffffff'

    goto :goto_0

    :cond_0
    const p3, 0x7f0605ac    # @color/miuix_appcompat_progressbar_circle_color_light '#cc000000'

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 10
    invoke-static {p1}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f040179    # @attr/circleProgressBarColor

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_1
    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_2

    const/16 v1, 0x1f

    if-gt p1, v1, :cond_2

    .line 15
    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 17
    :cond_3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private getIntrinsicHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    aget-object v0, v0, v1

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 11
    move-result v0

    .line 14
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    .line 15
    if-eqz v2, :cond_1

    .line 17
    aget-object v2, v2, v1

    .line 19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 21
    move-result v2

    .line 24
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result v0

    .line 28
    :cond_1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 29
    if-eqz p0, :cond_2

    .line 31
    aget-object p0, p0, v1

    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 35
    move-result p0

    .line 38
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 39
    move-result v0

    .line 42
    :cond_2
    return v0
    .line 43
.end method

.method private getIntrinsicWidth()I
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    aget-object v0, v0, v1

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 11
    move-result v0

    .line 14
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    .line 15
    if-eqz v2, :cond_1

    .line 17
    aget-object v2, v2, v1

    .line 19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 21
    move-result v2

    .line 24
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result v0

    .line 28
    :cond_1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 29
    if-eqz p0, :cond_2

    .line 31
    aget-object p0, p0, v1

    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 35
    move-result p0

    .line 38
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 39
    move-result v0

    .line 42
    :cond_2
    return v0
    .line 43
.end method

.method private getRate()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 7
    move-result p0

    .line 10
    int-to-float p0, p0

    .line 11
    div-float/2addr v0, p0

    .line 12
    return v0
    .line 13
.end method


# virtual methods
.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .locals 9

    .line 1
    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 10
    move-result p2

    .line 13
    const/high16 v0, 0x43b40000    # 360.0f

    .line 14
    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object p2

    .line 21
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 22
    int-to-float v2, p2

    .line 24
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object p2

    .line 28
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 29
    int-to-float v3, p2

    .line 31
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 32
    move-result-object p2

    .line 35
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 36
    int-to-float v4, p2

    .line 38
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 39
    move-result-object p2

    .line 42
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 43
    int-to-float v5, p2

    .line 45
    const/4 v6, 0x0

    .line 46
    const/16 v7, 0x1f

    .line 47
    move-object v1, p1

    .line 49
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 50
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 53
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 55
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 62
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 66
    move-result v1

    .line 69
    int-to-float v1, v1

    .line 70
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    .line 74
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 76
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    .line 79
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    .line 81
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 83
    mul-float/2addr p5, v0

    .line 85
    invoke-virtual {p2, v1, v2, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 86
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcPath:Landroid/graphics/Path;

    .line 89
    iget-object p5, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 91
    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 93
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 96
    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 98
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 103
    const/4 p5, 0x0

    .line 105
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 109
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 119
    if-nez p2, :cond_2

    .line 121
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 123
    move-result-object p2

    .line 126
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 127
    move-result p2

    .line 130
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 131
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 135
    move-result v1

    .line 138
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 139
    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 141
    move-result-object p2

    .line 144
    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 145
    new-instance p2, Landroid/graphics/Canvas;

    .line 147
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 149
    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 154
    :cond_2
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 156
    const/4 v1, 0x0

    .line 158
    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 159
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 162
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 164
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 167
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 169
    move-result-object v1

    .line 172
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 173
    neg-int v1, v1

    .line 175
    int-to-float v1, v1

    .line 176
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 177
    move-result-object v2

    .line 180
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 181
    neg-int v2, v2

    .line 183
    int-to-float v2, v2

    .line 184
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 188
    iget-object v4, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    .line 190
    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 192
    mul-float v6, p5, v0

    .line 194
    const/4 v7, 0x1

    .line 196
    iget-object v8, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 197
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 199
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 202
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 205
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 207
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    .line 210
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 212
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    .line 215
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 217
    move-result-object p5

    .line 220
    iget p5, p5, Landroid/graphics/Rect;->left:I

    .line 221
    int-to-float p5, p5

    .line 223
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 224
    move-result-object p4

    .line 227
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 228
    int-to-float p4, p4

    .line 230
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p1, p2, p5, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 232
    :goto_0
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 235
    if-eqz p2, :cond_3

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 239
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    .line 242
    move-result p4

    .line 245
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    .line 246
    move-result p5

    .line 249
    sub-int/2addr p4, p5

    .line 250
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    .line 251
    move-result p5

    .line 254
    sub-int/2addr p4, p5

    .line 255
    div-int/lit8 p4, p4, 0x2

    .line 256
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    .line 258
    move-result p5

    .line 261
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    .line 262
    move-result v1

    .line 265
    sub-int/2addr p5, v1

    .line 266
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    .line 267
    move-result v1

    .line 270
    sub-int/2addr p5, v1

    .line 271
    div-int/lit8 p5, p5, 0x2

    .line 272
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 274
    move-result v1

    .line 277
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 278
    move-result v2

    .line 281
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 282
    move-result v3

    .line 285
    int-to-float v3, v3

    .line 286
    mul-float/2addr v3, v0

    .line 287
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 288
    move-result p0

    .line 291
    int-to-float p0, p0

    .line 292
    div-float/2addr v3, p0

    .line 293
    int-to-float p0, p4

    .line 294
    int-to-float v0, p5

    .line 295
    invoke-virtual {p1, v3, p0, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 296
    div-int/lit8 v1, v1, 0x2

    .line 299
    sub-int p0, p4, v1

    .line 301
    div-int/lit8 v2, v2, 0x2

    .line 303
    sub-int v0, p5, v2

    .line 305
    add-int/2addr p4, v1

    .line 307
    add-int/2addr p5, v2

    .line 308
    invoke-virtual {p2, p0, v0, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 315
    :cond_3
    if-eqz p3, :cond_4

    .line 318
    invoke-virtual {p3, p6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 320
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 323
    :cond_4
    return-void
    .line 326
.end method

.method public final drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getProgressLevelCount()I

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_3

    .line 10
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 12
    if-eqz v2, :cond_0

    .line 14
    aget-object v2, v2, v1

    .line 16
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    .line 18
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 22
    :cond_0
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 25
    if-eqz v2, :cond_1

    .line 27
    aget-object v2, v2, v1

    .line 29
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    .line 31
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 35
    :cond_1
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    .line 38
    if-eqz v2, :cond_2

    .line 40
    aget-object v2, v2, v1

    .line 42
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    .line 44
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 48
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 54
    return-void
    .line 57
.end method

.method public final getDrawables([I)[Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p0

    .line 13
    array-length v0, p1

    .line 14
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 15
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    array-length v3, p1

    .line 19
    if-ge v2, v3, :cond_1

    .line 20
    aget v3, p1, v2

    .line 22
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v3

    .line 27
    aput-object v3, v0, v2

    .line 28
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 30
    move-result v4

    .line 33
    aget-object v5, v0, v2

    .line 34
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 36
    move-result v5

    .line 39
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    return-object v0
    .line 46
.end method

.method public getPrevAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    .line 2
    return p0
    .line 4
.end method

.method public getProgressLevelCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-nez p0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    array-length p0, p0

    .line 8
    add-int/2addr v0, p0

    .line 9
    :goto_0
    return v0
    .line 10
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    .line 3
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 5
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    move-object v5, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    aget-object v1, v1, v0

    .line 12
    move-object v5, v1

    .line 14
    :goto_0
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    .line 15
    if-nez v1, :cond_1

    .line 17
    move-object v6, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    aget-object v1, v1, v0

    .line 21
    move-object v6, v1

    .line 23
    :goto_1
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 24
    if-nez v1, :cond_2

    .line 26
    move-object v7, v2

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    aget-object v0, v1, v0

    .line 30
    move-object v7, v0

    .line 32
    :goto_2
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getRate()F

    .line 33
    move-result v8

    .line 36
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    .line 37
    rsub-int v9, v0, 0xff

    .line 39
    move-object v3, p0

    .line 41
    move-object v4, p1

    .line 42
    invoke-virtual/range {v3 .. v9}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 43
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    .line 46
    const/16 v1, 0xa

    .line 48
    if-lt v0, v1, :cond_6

    .line 50
    iget v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    .line 52
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 54
    if-nez v1, :cond_3

    .line 56
    move-object v5, v2

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    aget-object v1, v1, v0

    .line 60
    move-object v5, v1

    .line 62
    :goto_3
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    .line 63
    if-nez v1, :cond_4

    .line 65
    move-object v6, v2

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    aget-object v1, v1, v0

    .line 69
    move-object v6, v1

    .line 71
    :goto_4
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 72
    if-nez v1, :cond_5

    .line 74
    goto :goto_5

    .line 76
    :cond_5
    aget-object v2, v1, v0

    .line 77
    :goto_5
    move-object v7, v2

    .line 79
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getRate()F

    .line 80
    move-result v8

    .line 83
    iget v9, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    .line 84
    move-object v3, p0

    .line 86
    move-object v4, p1

    .line 87
    invoke-virtual/range {v3 .. v9}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_6
    monitor-exit p0

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    monitor-exit p0

    .line 94
    throw p1
    .line 95
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getIntrinsicWidth()I

    .line 3
    move-result p1

    .line 6
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getIntrinsicHeight()I

    .line 7
    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
    .line 18
.end method

.method public setDrawablesForLevels([I[I[I)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p2}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 19
    invoke-virtual {p0, p3}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawablesForLevels([Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsBackDrawable:[Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p3, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mLevelsForeDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 5
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    array-length p1, p2

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    .line 7
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 8
    array-length p1, p3

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_2

    aget-object v2, p3, v1

    .line 9
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_6

    .line 10
    array-length p1, p2

    move p3, v0

    :goto_3
    if-ge p3, p1, :cond_5

    aget-object v1, p2, p3

    .line 11
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 12
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_4

    .line 13
    :cond_3
    instance-of v2, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_4

    .line 14
    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'middles\' must a bitmap or nine patch drawable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_5
    new-instance p1, Landroid/graphics/RectF;

    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, -0x5

    int-to-float p3, p3

    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    aget-object v2, p2, v0

    .line 17
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, 0x5

    int-to-float p2, p2

    invoke-direct {p1, p3, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    :cond_6
    return-void
.end method

.method public setOnProgressChangedListener(Lmiuix/androidbasewidget/widget/CircleProgressBar$OnProgressChangedListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setPrevAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevAlpha:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public declared-synchronized setProgress(I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    .line 6
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    move v0, v1

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    array-length v0, v0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    const/4 v3, -0x1

    .line 15
    if-ge v2, v0, :cond_2

    .line 16
    iget-object v4, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    .line 18
    aget v4, v4, v2

    .line 20
    if-ge p1, v4, :cond_1

    .line 22
    goto :goto_1

    .line 24
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    move v2, v3

    .line 28
    :goto_1
    if-ne v2, v3, :cond_3

    .line 29
    goto :goto_2

    .line 31
    :cond_3
    move v0, v2

    .line 32
    :goto_2
    iget p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    .line 33
    if-eq v0, p1, :cond_4

    .line 35
    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mPrevLevel:I

    .line 37
    iput v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mCurrentLevel:I

    .line 39
    const/16 p1, 0xff

    .line 41
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setPrevAlpha(I)V

    .line 43
    const-string p1, "prevAlpha"

    .line 46
    filled-new-array {v1}, [I

    .line 48
    move-result-object v0

    .line 51
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 52
    move-result-object p1

    .line 55
    const-wide/16 v0, 0x12c

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 58
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 61
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 63
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_4
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p0

    .line 75
    throw p1
    .line 76
.end method

.method public setProgressByAnimator(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const-string v1, "progress"

    .line 5
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    mul-int/lit16 v0, v0, 0x3e8

    .line 6
    iget v1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_1

    .line 9
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    :cond_1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public setProgressLevels([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mProgressLevels:[I

    .line 2
    return-void
    .line 4
.end method

.method public setRotateVelocity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mRotateVelocity:I

    .line 2
    return-void
    .line 4
.end method

.method public setThumb(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/CircleProgressBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-void
.end method

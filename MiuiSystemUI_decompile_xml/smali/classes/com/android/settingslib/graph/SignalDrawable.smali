.class public final Lcom/android/settingslib/graph/SignalDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimating:Z

.field public final mAttributionPath:Landroid/graphics/Path;

.field public final mAttributionScaleMatrix:Landroid/graphics/Matrix;

.field public final mChangeDot:Lcom/android/settingslib/graph/SignalDrawable$1;

.field public mCurrentDot:I

.field public final mCutoutHeightFraction:F

.field public final mCutoutPath:Landroid/graphics/Path;

.field public final mCutoutWidthFraction:F

.field public final mForegroundPaint:Landroid/graphics/Paint;

.field public final mForegroundPath:Landroid/graphics/Path;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntrinsicSize:I

.field public final mScaledAttributionPath:Landroid/graphics/Path;

.field public final mTransparentPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    const v0, 0x108055f    # @android:drawable/ic_signal_wifi_transient_animation_drawable

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    .line 20
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    .line 25
    new-instance v1, Landroid/graphics/Path;

    .line 27
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    .line 32
    new-instance v1, Landroid/graphics/Path;

    .line 34
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    .line 39
    new-instance v1, Landroid/graphics/Path;

    .line 41
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionPath:Landroid/graphics/Path;

    .line 46
    new-instance v2, Landroid/graphics/Matrix;

    .line 48
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 50
    iput-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionScaleMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v2, Landroid/graphics/Path;

    .line 55
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable;->mScaledAttributionPath:Landroid/graphics/Path;

    .line 60
    new-instance v2, Lcom/android/settingslib/graph/SignalDrawable$1;

    .line 62
    invoke-direct {v2, p0}, Lcom/android/settingslib/graph/SignalDrawable$1;-><init>(Lcom/android/settingslib/graph/SignalDrawable;)V

    .line 64
    iput-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Lcom/android/settingslib/graph/SignalDrawable$1;

    .line 67
    const v2, 0x10402e5    # @android:string/date_picker_month_typeface

    .line 69
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 75
    invoke-static {v2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 76
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateScaledAttributionPath()V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    move-result-object v1

    .line 89
    const v2, 0x10500e9    # @android:dimen/config_wallpaperMaxScale

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 93
    move-result v1

    .line 96
    iput v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutWidthFraction:F

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object v1

    .line 102
    const v2, 0x10500e8    # @android:dimen/config_wallpaperDimAmount

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 106
    move-result v1

    .line 109
    iput v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutHeightFraction:F

    .line 110
    const v1, 0x7f0600d7    # @color/dark_mode_icon_color_single_tone '#bf000000'

    .line 112
    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 115
    move-result v1

    .line 118
    const v2, 0x7f0601bf    # @color/light_mode_icon_color_single_tone '#e6ffffff'

    .line 119
    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 122
    move-result v2

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    move-result-object v3

    .line 129
    const v4, 0x7f07109f    # @dimen/signal_icon_size '15.0dp'

    .line 130
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 133
    move-result v3

    .line 136
    iput v3, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    .line 137
    const v3, 0x106000d    # @android:color/transparent

    .line 139
    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    .line 142
    move-result p1

    .line 145
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 149
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 151
    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 153
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 156
    new-instance p1, Landroid/os/Handler;

    .line 159
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    .line 164
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 166
    move-result-object p1

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v0

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    move-result-object v1

    .line 177
    const/4 v2, 0x0

    .line 178
    invoke-virtual {p1, v2, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    move-result-object p1

    .line 182
    check-cast p1, Ljava/lang/Integer;

    .line 183
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 185
    move-result p1

    .line 188
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 189
    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/settingslib/graph/SignalDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 193
    return-void
    .line 196
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 10
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 19
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLayoutDirection()I

    .line 24
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    if-ne v2, v4, :cond_0

    .line 30
    move v2, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v3

    .line 34
    :goto_0
    const/4 v5, 0x0

    .line 35
    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    const/high16 v6, -0x40800000    # -1.0f

    .line 44
    const/high16 v7, 0x3f800000    # 1.0f

    .line 46
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 48
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v6, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    .line 54
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 56
    iget-object v6, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    .line 59
    sget-object v7, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 61
    invoke-virtual {v6, v7}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 63
    const v6, 0x3daaaaab

    .line 66
    mul-float/2addr v6, v0

    .line 69
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 70
    move-result v6

    .line 73
    int-to-float v6, v6

    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLevel()I

    .line 75
    move-result v7

    .line 78
    const/high16 v8, 0xff0000

    .line 79
    and-int/2addr v7, v8

    .line 81
    shr-int/lit8 v7, v7, 0x10

    .line 82
    const/4 v9, 0x3

    .line 84
    if-ne v7, v9, :cond_2

    .line 85
    move v7, v4

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move v7, v3

    .line 89
    :goto_1
    if-eqz v7, :cond_3

    .line 90
    const/high16 v3, 0x3e000000    # 0.125f

    .line 92
    mul-float/2addr v3, v1

    .line 94
    const/high16 v4, 0x3d800000    # 0.0625f

    .line 95
    mul-float/2addr v4, v1

    .line 97
    add-float v5, v4, v3

    .line 98
    sub-float/2addr v0, v6

    .line 100
    sub-float/2addr v0, v3

    .line 101
    sub-float/2addr v1, v6

    .line 102
    sub-float/2addr v1, v3

    .line 103
    iget-object v6, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    .line 104
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 106
    const/4 v12, 0x2

    .line 109
    move-object v7, p0

    .line 110
    move v8, v0

    .line 111
    move v9, v1

    .line 112
    move v10, v4

    .line 113
    move v11, v3

    .line 114
    invoke-virtual/range {v7 .. v12}, Lcom/android/settingslib/graph/SignalDrawable;->drawDotAndPadding(FFFFI)V

    .line 115
    sub-float v8, v0, v5

    .line 118
    const/4 v12, 0x1

    .line 120
    invoke-virtual/range {v7 .. v12}, Lcom/android/settingslib/graph/SignalDrawable;->drawDotAndPadding(FFFFI)V

    .line 121
    const/high16 v6, 0x40000000    # 2.0f

    .line 124
    mul-float/2addr v5, v6

    .line 126
    sub-float v8, v0, v5

    .line 127
    const/4 v12, 0x0

    .line 129
    invoke-virtual/range {v7 .. v12}, Lcom/android/settingslib/graph/SignalDrawable;->drawDotAndPadding(FFFFI)V

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    .line 133
    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 137
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    .line 140
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 142
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 144
    goto :goto_2

    .line 147
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLevel()I

    .line 148
    move-result v6

    .line 151
    and-int/2addr v6, v8

    .line 152
    shr-int/lit8 v6, v6, 0x10

    .line 153
    const/4 v7, 0x2

    .line 155
    if-ne v6, v7, :cond_4

    .line 156
    move v3, v4

    .line 158
    :cond_4
    if-eqz v3, :cond_5

    .line 159
    iget v3, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutWidthFraction:F

    .line 161
    mul-float/2addr v3, v0

    .line 163
    const/high16 v4, 0x41c00000    # 24.0f

    .line 164
    div-float/2addr v3, v4

    .line 166
    iget v6, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutHeightFraction:F

    .line 167
    mul-float/2addr v6, v1

    .line 169
    div-float/2addr v6, v4

    .line 170
    iget-object v4, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    .line 171
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    .line 176
    neg-float v1, v3

    .line 178
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 179
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    .line 182
    neg-float v1, v6

    .line 184
    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 185
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    .line 188
    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 190
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    .line 193
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 195
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    .line 198
    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    .line 200
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 202
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mScaledAttributionPath:Landroid/graphics/Path;

    .line 205
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 207
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 209
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 214
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 217
    return-void
    .line 220
.end method

.method public final drawDotAndPadding(FFFFI)V
    .locals 9

    .line 1
    iget v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    .line 2
    if-ne p5, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    .line 6
    add-float v7, p1, p4

    .line 8
    add-float v8, p2, p4

    .line 10
    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 12
    move v2, p1

    .line 14
    move v3, p2

    .line 15
    move v4, v7

    .line 16
    move v5, v8

    .line 17
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 18
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutoutPath:Landroid/graphics/Path;

    .line 21
    sub-float v1, p1, p3

    .line 23
    sub-float v2, p2, p3

    .line 25
    add-float v3, v7, p3

    .line 27
    add-float v4, v8, p3

    .line 29
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 31
    move-object p0, v0

    .line 33
    move p1, v1

    .line 34
    move p2, v2

    .line 35
    move p3, v3

    .line 36
    move p4, v4

    .line 37
    move-object p5, v5

    .line 38
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 39
    :cond_0
    return-void
    .line 42
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    .line 2
    return p0
    .line 4
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    .line 2
    return p0
    .line 4
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateScaledAttributionPath()V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    .line 8
    return-void
    .line 11
.end method

.method public final onLevelChange(I)Z
    .locals 3

    .line 1
    const v0, 0xff00

    .line 2
    and-int/2addr v0, p1

    .line 5
    shr-int/lit8 v0, v0, 0x8

    .line 6
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    add-int/2addr v1, v2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    const/16 v0, 0xa

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    and-int/lit16 p1, p1, 0xff

    .line 20
    add-int/2addr p1, v0

    .line 22
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateAnimation()V

    .line 26
    iget-object p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 31
    move-result p1

    .line 34
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 35
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settingslib/graph/SignalDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 39
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    .line 42
    return v2
    .line 45
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    return-void
    .line 10
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 7
    return-void
    .line 10
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 7
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 13
    move-result p1

    .line 16
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 22
    move-result p1

    .line 25
    if-eq v0, p1, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public final setVisible(ZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateAnimation()V

    .line 6
    return p1
    .line 9
.end method

.method public final updateAnimation()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLevel()I

    .line 2
    move-result v0

    .line 5
    const/high16 v1, 0xff0000

    .line 6
    and-int/2addr v0, v1

    .line 8
    shr-int/lit8 v0, v0, 0x10

    .line 9
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x3

    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->isVisible()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    move v1, v2

    .line 28
    :goto_1
    iget-boolean v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAnimating:Z

    .line 29
    if-ne v1, v0, :cond_2

    .line 31
    return-void

    .line 33
    :cond_2
    iput-boolean v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAnimating:Z

    .line 34
    if-eqz v1, :cond_3

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Lcom/android/settingslib/graph/SignalDrawable$1;

    .line 38
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable$1;->run()V

    .line 40
    goto :goto_2

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Lcom/android/settingslib/graph/SignalDrawable$1;

    .line 46
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    :goto_2
    return-void
    .line 51
.end method

.method public final updateScaledAttributionPath()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionScaleMatrix:Landroid/graphics/Matrix;

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionScaleMatrix:Landroid/graphics/Matrix;

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 26
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    const/high16 v2, 0x41c00000    # 24.0f

    .line 31
    div-float/2addr v1, v2

    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    .line 34
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 38
    move-result v3

    .line 41
    int-to-float v3, v3

    .line 42
    div-float/2addr v3, v2

    .line 43
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionPath:Landroid/graphics/Path;

    .line 47
    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAttributionScaleMatrix:Landroid/graphics/Matrix;

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mScaledAttributionPath:Landroid/graphics/Path;

    .line 51
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 53
    return-void
    .line 56
.end method

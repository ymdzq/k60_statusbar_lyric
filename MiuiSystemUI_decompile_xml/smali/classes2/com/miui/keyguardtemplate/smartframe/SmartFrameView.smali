.class public Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public currentShape:I

.field public drawableTranslateX:I

.field public drawableTranslateY:I

.field public frameColor:I

.field public mDrawableHeight:I

.field public mDrawableLeft:I

.field public mDrawableTop:I

.field public mDrawableWidth:I

.field public mHeight:I

.field public mSmartFrameChangeListener:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView$SmartFrameChangedListener;

.field public mWidth:I

.field public final paint:Landroid/graphics/Paint;

.field public shapeDrawable:Landroid/graphics/drawable/Drawable;

.field public final shapes:Landroid/util/SparseIntArray;

.field public strokeDrawable:Landroid/graphics/drawable/Drawable;

.field public final xfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput p2, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->currentShape:I

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->drawableTranslateX:I

    .line 6
    iput p3, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->drawableTranslateY:I

    const/high16 p3, -0x10000

    .line 7
    iput p3, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->frameColor:I

    const/4 p3, 0x0

    .line 8
    iput-object p3, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mSmartFrameChangeListener:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView$SmartFrameChangedListener;

    .line 9
    new-instance p3, Landroid/util/SparseIntArray;

    const/4 v0, 0x6

    invoke-direct {p3, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p3, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->shapes:Landroid/util/SparseIntArray;

    const v1, 0x7f0817c6    # @drawable/sf_shape1 'res/drawable/sf_shape1.xml'

    .line 10
    invoke-virtual {p3, p2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p2, 0x2

    const v2, 0x7f0817c7    # @drawable/sf_shape2 'res/drawable/sf_shape2.xml'

    .line 11
    invoke-virtual {p3, p2, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p2, 0x3

    const v2, 0x7f0817c8    # @drawable/sf_shape3 'res/drawable/sf_shape3.xml'

    .line 12
    invoke-virtual {p3, p2, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p2, 0x4

    const v2, 0x7f0817c9    # @drawable/sf_shape4 'res/drawable/sf_shape4.xml'

    .line 13
    invoke-virtual {p3, p2, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p2, 0x5

    const v2, 0x7f0817ca    # @drawable/sf_shape5 'res/drawable/sf_shape5.xml'

    .line 14
    invoke-virtual {p3, p2, v2}, Landroid/util/SparseIntArray;->append(II)V

    const p2, 0x7f0817cb    # @drawable/sf_shape6 'res/drawable/sf_shape6.xml'

    .line 15
    invoke-virtual {p3, v0, p2}, Landroid/util/SparseIntArray;->append(II)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mWidth:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mHeight:I

    .line 18
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->initDrawablePositionParams()V

    .line 19
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->xfermode:Landroid/graphics/Xfermode;

    .line 20
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->paint:Landroid/graphics/Paint;

    .line 21
    sget-object p2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getDrawableHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getDrawableLeft()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableLeft:I

    .line 2
    return p0
    .line 4
.end method

.method public getDrawableTop()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableTop:I

    .line 2
    return p0
    .line 4
.end method

.method public getDrawableTranslateX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->drawableTranslateX:I

    .line 2
    return p0
    .line 4
.end method

.method public getDrawableTranslateY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->drawableTranslateY:I

    .line 2
    return p0
    .line 4
.end method

.method public getDrawableWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getFillColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->frameColor:I

    .line 2
    return p0
    .line 4
.end method

.method public getRealDrawableLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableLeft:I

    .line 2
    iget p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->drawableTranslateX:I

    .line 4
    add-int/2addr v0, p0

    .line 6
    return v0
    .line 7
.end method

.method public getRealDrawableTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableTop:I

    .line 2
    iget p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->drawableTranslateY:I

    .line 4
    add-int/2addr v0, p0

    .line 6
    return v0
    .line 7
.end method

.method public getShape()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->currentShape:I

    .line 2
    return p0
    .line 4
.end method

.method public getShapeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStrokeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->strokeDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final initDrawablePositionParams()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    sget-boolean v1, Lcom/miui/keyguardtemplate/Util;->FOLD_DEVICE:Z

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v1

    .line 15
    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 16
    int-to-float v1, v1

    .line 18
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 19
    const-string v3, "cetus"

    .line 21
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    invoke-static {v0}, Lcom/miui/keyguardtemplate/Util;->inLargeScreen(Landroid/content/Context;)Z

    .line 29
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    const/high16 v0, 0x43a00000    # 320.0f

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    invoke-static {v0}, Lcom/miui/keyguardtemplate/Util;->inLargeScreen(Landroid/content/Context;)Z

    .line 44
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    const/high16 v0, 0x44290000    # 676.0f

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    sget-boolean v2, Lcom/miui/keyguardtemplate/Util;->FOLD_DEVICE:Z

    .line 53
    if-eqz v2, :cond_2

    .line 55
    invoke-static {v0}, Lcom/miui/keyguardtemplate/Util;->inLargeScreen(Landroid/content/Context;)Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    const/high16 v0, 0x442e0000    # 696.0f

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    sget-boolean v0, Lcom/miui/keyguardtemplate/Util;->PAD_DEVICE:Z

    .line 66
    if-eqz v0, :cond_3

    .line 68
    const v0, 0x4431c000    # 711.0f

    .line 70
    goto :goto_0

    .line 73
    :cond_3
    const/high16 v0, 0x43c40000    # 392.0f

    .line 74
    :goto_0
    div-float/2addr v1, v0

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object v0

    .line 84
    const v2, 0x7f071092    # @dimen/sf_shape_margin_left '0.0dp'

    .line 85
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    mul-float/2addr v0, v1

    .line 93
    float-to-int v0, v0

    .line 94
    iput v0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableLeft:I

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v0

    .line 104
    const v2, 0x7f071093    # @dimen/sf_shape_margin_top '237.0dp'

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 108
    move-result v0

    .line 111
    int-to-float v0, v0

    .line 112
    mul-float/2addr v0, v1

    .line 113
    float-to-int v0, v0

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    move-result-object v2

    .line 122
    const v3, 0x7f071091    # @dimen/sf_shape_margin_bottom '120.0dp'

    .line 123
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 126
    move-result v2

    .line 129
    int-to-float v2, v2

    .line 130
    mul-float/2addr v2, v1

    .line 131
    float-to-int v2, v2

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    move-result-object v3

    .line 136
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 137
    move-result-object v3

    .line 140
    const v4, 0x7f071094    # @dimen/sf_shape_width '392.0dp'

    .line 141
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 144
    move-result v3

    .line 147
    int-to-float v3, v3

    .line 148
    mul-float/2addr v3, v1

    .line 149
    float-to-int v3, v3

    .line 150
    iput v3, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableWidth:I

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    move-result-object v3

    .line 156
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    move-result-object v3

    .line 160
    const v4, 0x7f071090    # @dimen/sf_shape_height '494.0dp'

    .line 161
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 164
    move-result v3

    .line 167
    int-to-float v3, v3

    .line 168
    mul-float/2addr v3, v1

    .line 169
    float-to-int v1, v3

    .line 170
    iput v1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableHeight:I

    .line 171
    iget v3, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mHeight:I

    .line 173
    sub-int/2addr v3, v0

    .line 175
    sub-int/2addr v3, v2

    .line 176
    sub-int/2addr v3, v1

    .line 177
    const/4 v1, 0x0

    .line 178
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 179
    move-result v1

    .line 182
    div-int/lit8 v1, v1, 0x2

    .line 183
    add-int/2addr v1, v0

    .line 185
    iput v1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableTop:I

    .line 186
    iget v0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableLeft:I

    .line 188
    if-nez v0, :cond_4

    .line 190
    iget v0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mWidth:I

    .line 192
    if-eqz v0, :cond_4

    .line 194
    iget v1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableWidth:I

    .line 196
    sub-int/2addr v0, v1

    .line 198
    div-int/lit8 v0, v0, 0x2

    .line 199
    iput v0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableLeft:I

    .line 201
    :cond_4
    return-void
    .line 203
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mSmartFrameChangeListener:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView$SmartFrameChangedListener;

    .line 6
    return-void
    .line 8
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 7
    int-to-float v3, v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    move-result v0

    .line 12
    int-to-float v4, v0

    .line 13
    iget-object v5, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->paint:Landroid/graphics/Paint;

    .line 14
    const/16 v6, 0x1f

    .line 16
    move-object v0, p1

    .line 18
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 19
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getRealDrawableLeft()I

    .line 25
    move-result v2

    .line 28
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getRealDrawableTop()I

    .line 29
    move-result v3

    .line 32
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getRealDrawableLeft()I

    .line 33
    move-result v4

    .line 36
    iget v5, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableWidth:I

    .line 37
    add-int/2addr v4, v5

    .line 39
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getRealDrawableTop()I

    .line 40
    move-result v5

    .line 43
    iget v6, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableHeight:I

    .line 44
    add-int/2addr v5, v6

    .line 46
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    iget-object v1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    iget-object v1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->paint:Landroid/graphics/Paint;

    .line 55
    iget v2, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->frameColor:I

    .line 57
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->paint:Landroid/graphics/Paint;

    .line 62
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 64
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->paint:Landroid/graphics/Paint;

    .line 69
    iget-object v2, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->xfermode:Landroid/graphics/Xfermode;

    .line 71
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 78
    move-result v1

    .line 81
    int-to-float v6, v1

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 83
    move-result v1

    .line 86
    int-to-float v7, v1

    .line 87
    iget-object v8, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->paint:Landroid/graphics/Paint;

    .line 88
    move-object v3, p1

    .line 90
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    iget-object v1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->paint:Landroid/graphics/Paint;

    .line 94
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 97
    iget-object v1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->strokeDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getRealDrawableLeft()I

    .line 104
    move-result v2

    .line 107
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getRealDrawableTop()I

    .line 108
    move-result v3

    .line 111
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getRealDrawableLeft()I

    .line 112
    move-result v4

    .line 115
    iget v5, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableWidth:I

    .line 116
    add-int/2addr v4, v5

    .line 118
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getRealDrawableTop()I

    .line 119
    move-result v5

    .line 122
    iget v6, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableHeight:I

    .line 123
    add-int/2addr v5, v6

    .line 125
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    iget-object p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->strokeDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 134
    return-void
    .line 137
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mWidth:I

    .line 5
    iput p2, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mHeight:I

    .line 7
    invoke-virtual {p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->initDrawablePositionParams()V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    iget-object p0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mSmartFrameChangeListener:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView$SmartFrameChangedListener;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    check-cast p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$5;

    .line 19
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$5;->this$0:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;

    .line 21
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->initAnimationParams()V

    .line 23
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 26
    if-eqz p1, :cond_0

    .line 28
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 30
    const/4 p2, 0x1

    .line 32
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->doAnimationToAod(ZZ)V

    .line 33
    :cond_0
    return-void
    .line 36
.end method

.method public setDrawableHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableHeight:I

    .line 2
    return-void
    .line 4
.end method

.method public setDrawableLeft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableLeft:I

    .line 2
    return-void
    .line 4
.end method

.method public setDrawableTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableTop:I

    .line 2
    return-void
    .line 4
.end method

.method public setDrawableTranslateX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->drawableTranslateX:I

    .line 2
    return-void
    .line 4
.end method

.method public setDrawableTranslateY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->drawableTranslateY:I

    .line 2
    return-void
    .line 4
.end method

.method public setDrawableWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mDrawableWidth:I

    .line 2
    return-void
    .line 4
.end method

.method public setFillColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->frameColor:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->frameColor:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
    .line 12
.end method

.method public setShape(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->currentShape:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->shapes:Landroid/util/SparseIntArray;

    .line 11
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 13
    move-result v1

    .line 16
    sget-object v2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    iput p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->currentShape:I

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    return-void
    .line 30
.end method

.method public setShapeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public setSmartFrameChangeListener(Lcom/miui/keyguardtemplate/smartframe/SmartFrameView$SmartFrameChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->mSmartFrameChangeListener:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView$SmartFrameChangedListener;

    .line 2
    return-void
    .line 4
.end method

.method public setStrokeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->strokeDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-void
    .line 4
.end method

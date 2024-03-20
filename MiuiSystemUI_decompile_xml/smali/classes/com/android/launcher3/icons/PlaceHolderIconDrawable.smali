.class public final Lcom/android/launcher3/icons/PlaceHolderIconDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mProgressPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/BitmapInfo;Landroid/content/Context;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 2
    iget v1, p1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 6
    sget-object v0, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;

    .line 9
    sget v0, Lcom/android/launcher3/icons/IconProvider;->CONFIG_ICON_MASK_RES_ID:I

    .line 11
    const/4 v1, 0x0

    .line 13
    const/16 v2, 0x64

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 22
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    int-to-float v2, v2

    .line 28
    const/high16 v3, 0x42c80000    # 100.0f

    .line 29
    cmpl-float v4, v2, v3

    .line 31
    if-eqz v4, :cond_1

    .line 33
    new-instance v4, Landroid/graphics/Matrix;

    .line 35
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 37
    div-float/2addr v2, v3

    .line 40
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 41
    invoke-virtual {v0, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 48
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 50
    const/high16 v4, -0x1000000

    .line 52
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 54
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 57
    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 59
    invoke-direct {v0, v3, v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 65
    new-instance v2, Landroid/graphics/Path;

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    .line 70
    move-result-object v0

    .line 73
    invoke-direct {v2, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 74
    move-object v0, v2

    .line 77
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->mProgressPath:Landroid/graphics/Path;

    .line 78
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 80
    const v0, 0x7f040488    # @attr/loadingIconColor

    .line 82
    filled-new-array {v0}, [I

    .line 85
    move-result-object v0

    .line 88
    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 89
    move-result-object p2

    .line 92
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 93
    move-result v0

    .line 96
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    iget p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    .line 100
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 102
    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    return-void
    .line 109
.end method


# virtual methods
.method public final drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    move-result v0

    .line 5
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 6
    int-to-float v1, v1

    .line 8
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 9
    int-to-float v2, v2

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 15
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    const/high16 v2, 0x42c80000    # 100.0f

    .line 20
    div-float/2addr v1, v2

    .line 22
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 23
    move-result p2

    .line 26
    int-to-float p2, p2

    .line 27
    div-float/2addr p2, v2

    .line 28
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 29
    iget-object p2, p0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->mProgressPath:Landroid/graphics/Path;

    .line 32
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 34
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 39
    return-void
    .line 42
.end method

.class public Lcom/android/settings/colorgameled/LedColorBitMapView;
.super Landroid/view/View;
.source "LedColorBitMapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;
    }
.end annotation


# instance fields
.field private ICallback:Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;

.field private mAreaRect:Landroid/graphics/Rect;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCicleBitmap:Landroid/graphics/Bitmap;

.field private mCicleRadius:I

.field private mCicleRect:Landroid/graphics/RectF;

.field private mCircleBitmapAlpha:I

.field private mCx:F

.field private mCy:F

.field mHeight:F

.field private mLedColorCenterX:F

.field private mLedColorCenterY:F

.field mWidth:F

.field private transparentAnimTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgettransparentAnimTime(Lcom/android/settings/colorgameled/LedColorBitMapView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->transparentAnimTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmCircleBitmapAlpha(Lcom/android/settings/colorgameled/LedColorBitMapView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCircleBitmapAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCircleBitmapAlpha:I

    const-wide/16 v0, 0x1f4

    .line 27
    iput-wide v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->transparentAnimTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/colorgameled/LedColorBitMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCircleBitmapAlpha:I

    const-wide/16 p2, 0x1f4

    .line 27
    iput-wide p2, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->transparentAnimTime:J

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/colorgameled/LedColorBitMapView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getBitmapPixel(FF)I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/colorgameled/LedColorBitMapView;->getUsagePointX(FI)I

    move-result p1

    .line 216
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/colorgameled/LedColorBitMapView;->getUsagePointY(FI)I

    move-result p2

    .line 217
    iget-object p0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    return p0
.end method

.method private getColorPoint(I)Landroid/graphics/Point;
    .locals 11

    .line 170
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 p1, p1, 0xff

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    int-to-float v5, v4

    .line 174
    iget v6, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mLedColorCenterX:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    cmpg-float v6, v5, v6

    if-gez v6, :cond_3

    move v6, v3

    :goto_1
    int-to-float v8, v6

    .line 175
    iget v9, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mLedColorCenterY:F

    mul-float/2addr v9, v7

    cmpg-float v9, v8, v9

    if-gez v9, :cond_2

    .line 176
    invoke-direct {p0, v5, v8}, Lcom/android/settings/colorgameled/LedColorBitMapView;->isContained(FF)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    .line 177
    :cond_0
    invoke-direct {p0, v5, v8}, Lcom/android/settings/colorgameled/LedColorBitMapView;->getBitmapPixel(FF)I

    move-result v8

    .line 178
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v9

    sub-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 179
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v9

    sub-int/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v9, v10, :cond_1

    .line 180
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    sub-int/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v10, :cond_1

    .line 181
    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 182
    iput v6, v0, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getUsagePointX(FI)I
    .locals 1

    int-to-float v0, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 221
    iget p0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mWidth:F

    float-to-int p0, p0

    div-int/2addr p1, p0

    const/4 p0, 0x0

    if-lt p1, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p0

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move p0, p1

    :goto_1
    return p0
.end method

.method private getUsagePointY(FI)I
    .locals 1

    int-to-float v0, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 228
    iget p0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mHeight:F

    float-to-int p0, p0

    div-int/2addr p1, p0

    const/4 p0, 0x0

    if-lt p1, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p0

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move p0, p1

    :goto_1
    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->led_color_preview:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 60
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->color_thumb_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 62
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleBitmap:Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->led_color_preview_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mWidth:F

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->led_color_preview_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mHeight:F

    float-to-int v0, p1

    .line 69
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleRadius:I

    .line 71
    iget v1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mLedColorCenterX:F

    div-float/2addr p1, v2

    .line 72
    iput p1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mLedColorCenterY:F

    int-to-float v0, v0

    .line 73
    iput v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCx:F

    .line 74
    iput p1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCy:F

    .line 75
    new-instance p1, Lcom/android/settings/colorgameled/LedColorBitMapView$1;

    invoke-direct {p1, p0}, Lcom/android/settings/colorgameled/LedColorBitMapView$1;-><init>(Lcom/android/settings/colorgameled/LedColorBitMapView;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private isContained(FF)Z
    .locals 1

    .line 192
    iget v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mLedColorCenterX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleRadius:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleRadius:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 193
    :goto_0
    iget-object p0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mAreaRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private reversePoint(FF)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mAreaRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-lez v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_2

    .line 201
    :cond_1
    iput p1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCx:F

    .line 202
    invoke-direct {p0, p1}, Lcom/android/settings/colorgameled/LedColorBitMapView;->reverseX(F)V

    .line 204
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/colorgameled/LedColorBitMapView;->reverseX(F)V

    return-void
.end method

.method private reverseX(F)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mAreaRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleRadius:I

    add-int v3, v1, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-lez v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    :cond_0
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_1

    add-int/2addr v1, v2

    int-to-float p1, v1

    goto :goto_0

    .line 210
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    :goto_0
    iput p1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCx:F

    :cond_2
    return-void
.end method

.method private savePoint()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->ICallback:Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;

    if-eqz v0, :cond_0

    .line 163
    iget v1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCx:F

    iget v2, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCy:F

    invoke-direct {p0, v1, v2}, Lcom/android/settings/colorgameled/LedColorBitMapView;->getBitmapPixel(FF)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;->onSave(I)V

    :cond_0
    const-string p0, "LedColorBitMapView_save_color_point"

    .line 165
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 166
    invoke-static {p0, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 130
    invoke-direct {p0, v0, v2}, Lcom/android/settings/colorgameled/LedColorBitMapView;->isContained(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    invoke-direct {p0, v0, v2}, Lcom/android/settings/colorgameled/LedColorBitMapView;->reversePoint(FF)V

    goto :goto_0

    .line 133
    :cond_0
    iput v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCx:F

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->ICallback:Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;

    if-eqz v0, :cond_1

    .line 136
    iget v2, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCx:F

    iget v3, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCy:F

    invoke-direct {p0, v2, v3}, Lcom/android/settings/colorgameled/LedColorBitMapView;->getBitmapPixel(FF)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;->onAdjust(I)V

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/colorgameled/LedColorBitMapView;->savePoint()V

    .line 143
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 104
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 106
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmapPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mAreaRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mAreaRect:Landroid/graphics/Rect;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mAreaRect:Landroid/graphics/Rect;

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 111
    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mAreaRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleRect:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleRect:Landroid/graphics/RectF;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmapPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCircleBitmapAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCx:F

    iget v3, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleRadius:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    iget v5, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCy:F

    int-to-float v6, v3

    sub-float v6, v5, v6

    int-to-float v7, v3

    add-float/2addr v2, v7

    int-to-float v3, v3

    add-float/2addr v5, v3

    invoke-virtual {v0, v4, v6, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setCallback(Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->ICallback:Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;

    return-void
.end method

.method public updatePoints()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->ICallback:Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/android/settings/colorgameled/LedColorBitMapView$Callback;->getCurretnColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 152
    iget v1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCx:F

    iget v2, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCy:F

    invoke-direct {p0, v1, v2}, Lcom/android/settings/colorgameled/LedColorBitMapView;->getBitmapPixel(FF)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 153
    invoke-direct {p0, v0}, Lcom/android/settings/colorgameled/LedColorBitMapView;->getColorPoint(I)Landroid/graphics/Point;

    move-result-object v0

    .line 154
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCx:F

    return-void

    .line 157
    :cond_1
    iget v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCicleRadius:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView;->mCx:F

    return-void
.end method

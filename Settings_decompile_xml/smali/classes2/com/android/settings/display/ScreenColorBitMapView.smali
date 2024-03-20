.class Lcom/android/settings/display/ScreenColorBitMapView;
.super Landroid/widget/FrameLayout;
.source "ScreenColorBitMapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ScreenColorBitMapView$Callback;
    }
.end annotation


# static fields
.field private static final COLOR_OFFSET:I

.field private static final COOL_RGB:[I

.field private static LOOP_STEP:I

.field private static final WARM_RGB:[I


# instance fields
.field private ICallback:Lcom/android/settings/display/ScreenColorBitMapView$Callback;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCicleRadius:I

.field private mCircleBitmapAlpha:I

.field private mCoolPoint:Landroid/graphics/Point;

.field private mCx:F

.field private mCy:F

.field private mOffset:I

.field private mPointView:Landroid/widget/ImageView;

.field private mScreenColorCicleX:F

.field private mScreenColorCicleY:F

.field private mScreenColorRadius:F

.field private mWarmPoint:Landroid/graphics/Point;

.field private transparentAnimTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmPointView(Lcom/android/settings/display/ScreenColorBitMapView;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mPointView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettransparentAnimTime(Lcom/android/settings/display/ScreenColorBitMapView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->transparentAnimTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mupdatePointViewLocation(Lcom/android/settings/display/ScreenColorBitMapView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorBitMapView;->updatePointViewLocation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xff

    const/16 v1, 0xd4

    const/16 v2, 0xb8

    .line 67
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sput-object v3, Lcom/android/settings/display/ScreenColorBitMapView;->WARM_RGB:[I

    .line 68
    filled-new-array {v2, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/ScreenColorBitMapView;->COOL_RGB:[I

    const-string/jumbo v0, "warm_cool_color_offset"

    const/4 v1, 0x2

    .line 74
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/display/ScreenColorBitMapView;->COLOR_OFFSET:I

    .line 82
    sput v1, Lcom/android/settings/display/ScreenColorBitMapView;->LOOP_STEP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ScreenColorBitMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ScreenColorBitMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 81
    iput p2, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCircleBitmapAlpha:I

    const-wide/16 p2, 0x1f4

    .line 83
    iput-wide p2, p0, Lcom/android/settings/display/ScreenColorBitMapView;->transparentAnimTime:J

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenColorBitMapView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private computeCoolPoint()Landroid/graphics/Point;
    .locals 12

    .line 201
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 202
    sget-object v1, Lcom/android/settings/display/ScreenColorBitMapView;->COOL_RGB:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    .line 203
    aget v3, v1, v3

    const/4 v4, 0x2

    .line 204
    aget v1, v1, v4

    .line 205
    iget v5, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleX:F

    float-to-int v6, v5

    mul-int/2addr v6, v4

    iget v7, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mOffset:I

    sub-int/2addr v6, v7

    iget v8, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCicleRadius:I

    div-int/lit8 v9, v8, 0x2

    sub-int/2addr v6, v9

    float-to-int v5, v5

    .line 206
    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v5, v9

    .line 207
    iget v9, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    float-to-int v10, v9

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    float-to-int v9, v9

    mul-int/2addr v9, v4

    sub-int/2addr v9, v7

    .line 208
    div-int/2addr v8, v4

    sub-int/2addr v9, v8

    :goto_0
    if-lt v6, v5, :cond_2

    move v4, v9

    :goto_1
    if-lt v4, v10, :cond_1

    int-to-float v7, v6

    int-to-float v8, v4

    .line 211
    invoke-direct {p0, v7, v8}, Lcom/android/settings/display/ScreenColorBitMapView;->getBitmapPixel(FF)I

    move-result v7

    .line 212
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v8

    sub-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sget v11, Lcom/android/settings/display/ScreenColorBitMapView;->COLOR_OFFSET:I

    if-ge v8, v11, :cond_0

    .line 213
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v11, :cond_0

    .line 214
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    sub-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v11, :cond_0

    .line 215
    iput v6, v0, Landroid/graphics/Point;->x:I

    .line 216
    iput v4, v0, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 210
    :cond_0
    sget v7, Lcom/android/settings/display/ScreenColorBitMapView;->LOOP_STEP:I

    sub-int/2addr v4, v7

    goto :goto_1

    .line 209
    :cond_1
    :goto_2
    sget v4, Lcom/android/settings/display/ScreenColorBitMapView;->LOOP_STEP:I

    sub-int/2addr v6, v4

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private computeWarmPoint()Landroid/graphics/Point;
    .locals 13

    .line 176
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 177
    sget-object v1, Lcom/android/settings/display/ScreenColorBitMapView;->WARM_RGB:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    .line 178
    aget v3, v1, v3

    const/4 v4, 0x2

    .line 179
    aget v1, v1, v4

    .line 180
    iget v5, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mOffset:I

    iget v6, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCicleRadius:I

    div-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    .line 181
    iget v8, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleX:F

    div-int/lit8 v9, v5, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 182
    div-int/2addr v6, v4

    add-int/2addr v6, v5

    .line 183
    iget v9, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    div-int/2addr v5, v4

    int-to-float v4, v5

    sub-float/2addr v9, v4

    :goto_0
    int-to-float v4, v7

    cmpg-float v5, v4, v8

    if-gez v5, :cond_2

    move v5, v6

    :goto_1
    int-to-float v10, v5

    cmpg-float v11, v10, v9

    if-gez v11, :cond_1

    .line 186
    invoke-direct {p0, v4, v10}, Lcom/android/settings/display/ScreenColorBitMapView;->getBitmapPixel(FF)I

    move-result v10

    .line 187
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v11

    sub-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sget v12, Lcom/android/settings/display/ScreenColorBitMapView;->COLOR_OFFSET:I

    if-ge v11, v12, :cond_0

    .line 188
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v11

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v12, :cond_0

    .line 189
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    sub-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v12, :cond_0

    .line 190
    iput v7, v0, Landroid/graphics/Point;->x:I

    .line 191
    iput v5, v0, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 185
    :cond_0
    sget v10, Lcom/android/settings/display/ScreenColorBitMapView;->LOOP_STEP:I

    add-int/2addr v5, v10

    goto :goto_1

    .line 184
    :cond_1
    :goto_2
    sget v4, Lcom/android/settings/display/ScreenColorBitMapView;->LOOP_STEP:I

    add-int/2addr v7, v4

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getBitmapPixel(FF)I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ScreenColorBitMapView;->getUsagePoint(FI)I

    move-result p1

    .line 163
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/display/ScreenColorBitMapView;->getUsagePoint(FI)I

    move-result p2

    .line 164
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    return p0
.end method

.method private getColorPoint(I)Landroid/graphics/Point;
    .locals 10

    .line 311
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 315
    iget v3, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mOffset:I

    :goto_0
    int-to-float v4, v3

    iget v5, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleX:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    iget v7, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mOffset:I

    int-to-float v8, v7

    sub-float/2addr v5, v8

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    :goto_1
    int-to-float v5, v7

    .line 316
    iget v8, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    mul-float/2addr v8, v6

    iget v9, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mOffset:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v8, v5, v8

    if-gez v8, :cond_2

    .line 317
    invoke-direct {p0, v4, v5}, Lcom/android/settings/display/ScreenColorBitMapView;->isContained(FF)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    .line 318
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/android/settings/display/ScreenColorBitMapView;->getBitmapPixel(FF)I

    move-result v5

    .line 319
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v8

    sub-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sget v9, Lcom/android/settings/display/ScreenColorBitMapView;->COLOR_OFFSET:I

    if-ge v8, v9, :cond_1

    .line 320
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    sub-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 321
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v9, :cond_1

    .line 322
    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 323
    iput v7, v0, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getDistanceToCircle(FF)F
    .locals 4

    .line 444
    iget v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleX:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    sub-float/2addr p0, p2

    float-to-double p0, p0

    .line 445
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    .line 444
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private getUsagePoint(FI)I
    .locals 1

    .line 168
    iget v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mOffset:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    int-to-float v0, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget p0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mBitmapWidth:I

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
    .locals 6

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->screen_color_bit_map_view:I

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v1, 0x2

    .line 101
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->screen_color_preview:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 103
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->color_bitmap_point_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCicleRadius:I

    .line 107
    sget v2, Lcom/android/settings/R$id;->color_bit_point:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mPointView:Landroid/widget/ImageView;

    .line 108
    new-instance v3, Lcom/android/settings/display/ScreenColorBitMapView$1;

    invoke-direct {v3, p0}, Lcom/android/settings/display/ScreenColorBitMapView$1;-><init>(Lcom/android/settings/display/ScreenColorBitMapView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->screen_color_preview_diameter_new:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    .line 118
    iput v4, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleX:F

    .line 119
    iput v4, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->screen_color_preview_offset_new:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mOffset:I

    mul-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    sub-float v5, v2, v5

    div-float/2addr v5, v3

    const/high16 v3, 0x40400000    # 3.0f

    sub-float/2addr v5, v3

    .line 123
    iput v5, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorRadius:F

    mul-int/2addr v4, v1

    int-to-float v1, v4

    sub-float/2addr v2, v1

    float-to-int v1, v2

    .line 125
    iput v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mBitmapWidth:I

    .line 126
    iput v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mBitmapHeight:I

    const-string v1, "circle_point"

    .line 127
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "last_circle_pointx"

    .line 129
    iget v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleX:F

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    const-string v0, "last_circle_pointy"

    .line 130
    iget v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    .line 132
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCoolPoint:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mWarmPoint:Landroid/graphics/Point;

    .line 133
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mPointView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    new-instance p1, Lcom/android/settings/display/ScreenColorBitMapView$2;

    invoke-direct {p1, p0}, Lcom/android/settings/display/ScreenColorBitMapView$2;-><init>(Lcom/android/settings/display/ScreenColorBitMapView;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private isContained(FF)Z
    .locals 0

    .line 409
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/ScreenColorBitMapView;->getDistanceToCircle(FF)F

    move-result p1

    iget p0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorRadius:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTouchCircleContained(FF)Z
    .locals 3

    .line 413
    iget v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCicleRadius:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 414
    iget v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    sub-float v2, v1, v0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    add-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    iget p0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    sub-float p1, p0, v0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    add-float/2addr p0, v0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reversePoint(FF)V
    .locals 5

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/ScreenColorBitMapView;->getDistanceToCircle(FF)F

    move-result v0

    .line 421
    iget v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 422
    iget v2, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 423
    iget v3, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorRadius:F

    mul-float/2addr v1, v3

    div-float/2addr v1, v0

    mul-float/2addr v2, v3

    div-float/2addr v2, v0

    .line 426
    iget v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleX:F

    sub-float v3, p1, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 427
    iget p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    sub-float v3, p2, p1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    add-float/2addr p1, v2

    .line 428
    iput p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p1

    cmpg-float p2, p2, v4

    if-gez p2, :cond_1

    sub-float/2addr p1, v2

    .line 430
    iput p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    :cond_1
    :goto_0
    add-float/2addr v0, v1

    .line 432
    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    goto :goto_2

    :cond_2
    sub-float/2addr p1, v0

    cmpg-float p1, p1, v4

    if-gez p1, :cond_5

    .line 434
    iget p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    sub-float v3, p2, p1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    add-float/2addr p1, v2

    .line 435
    iput p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    goto :goto_1

    :cond_3
    sub-float/2addr p2, p1

    cmpg-float p2, p2, v4

    if-gez p2, :cond_4

    sub-float/2addr p1, v2

    .line 437
    iput p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    :cond_4
    :goto_1
    sub-float/2addr v0, v1

    .line 439
    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    :cond_5
    :goto_2
    return-void
.end method

.method private savePoint()V
    .locals 3

    .line 398
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "circle_point"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 400
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_circle_pointx"

    .line 401
    iget v2, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_circle_pointy"

    .line 402
    iget p0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 403
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "ScreenColorBitMapView_save_color_point"

    .line 404
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 405
    invoke-static {p0, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updatePointViewLocation()V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mPointView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 392
    iget v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    iget v2, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCicleRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mPointView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    iget p0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCicleRadius:I

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 356
    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/ScreenColorBitMapView;->isTouchCircleContained(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 360
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 361
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 365
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 368
    invoke-direct {p0, v0, v2}, Lcom/android/settings/display/ScreenColorBitMapView;->isContained(FF)Z

    move-result v3

    if-nez v3, :cond_3

    .line 369
    invoke-direct {p0, v0, v2}, Lcom/android/settings/display/ScreenColorBitMapView;->reversePoint(FF)V

    goto :goto_0

    .line 371
    :cond_3
    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    .line 372
    iput v2, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    .line 374
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->ICallback:Lcom/android/settings/display/ScreenColorBitMapView$Callback;

    if-eqz v0, :cond_4

    .line 375
    invoke-interface {v0}, Lcom/android/settings/display/ScreenColorBitMapView$Callback;->onAdjust()V

    .line 378
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    iget v3, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    .line 379
    invoke-direct {p0, v2, v3}, Lcom/android/settings/display/ScreenColorBitMapView;->getBitmapPixel(FF)I

    move-result v2

    const-string/jumbo v3, "screen_color_level"

    .line 378
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 383
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorBitMapView;->savePoint()V

    .line 386
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorBitMapView;->updatePointViewLocation()V

    return v1
.end method

.method public setCallback(Lcom/android/settings/display/ScreenColorBitMapView$Callback;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->ICallback:Lcom/android/settings/display/ScreenColorBitMapView$Callback;

    return-void
.end method

.method public setCircleLocation(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 342
    iget p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleX:F

    iput p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    .line 343
    iget p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    iput p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCoolPoint:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    .line 339
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    goto :goto_0

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mWarmPoint:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    .line 335
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    .line 346
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorBitMapView;->savePoint()V

    .line 348
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorBitMapView;->updatePointViewLocation()V

    return-void
.end method

.method public updateThreePoints()V
    .locals 3

    .line 228
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_level"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 230
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorBitMapView;->computeWarmPoint()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mWarmPoint:Landroid/graphics/Point;

    .line 231
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorBitMapView;->computeCoolPoint()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCoolPoint:Landroid/graphics/Point;

    .line 232
    iget v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    iget v2, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    invoke-direct {p0, v1, v2}, Lcom/android/settings/display/ScreenColorBitMapView;->getBitmapPixel(FF)I

    move-result v1

    if-eq v1, v0, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mWarmPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    .line 235
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCoolPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    .line 238
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 240
    iget v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleX:F

    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    .line 241
    iget v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 244
    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenColorBitMapView;->getColorPoint(I)Landroid/graphics/Point;

    move-result-object v0

    .line 245
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    .line 246
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    goto :goto_0

    .line 248
    :cond_3
    iget v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleX:F

    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCx:F

    .line 249
    iget v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mScreenColorCicleY:F

    iput v0, p0, Lcom/android/settings/display/ScreenColorBitMapView;->mCy:F

    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorBitMapView;->savePoint()V

    :cond_4
    return-void
.end method

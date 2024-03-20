.class public Lcom/android/settings/edgesuppression/SuppressionTipAreaView;
.super Landroid/view/View;
.source "SuppressionTipAreaView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBottomDispalyCurvature:F

.field private mBottomTransparentPaint:Landroid/graphics/Paint;

.field private final mBottomTransparentRect:Landroid/graphics/RectF;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPaintTip:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/RectF;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTipWidth:I

.field private mTopDispalyCurvature:F

.field private mTopTransparentPaint:Landroid/graphics/Paint;

.field private final mTopTransparentRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mRect:Landroid/graphics/RectF;

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopTransparentRect:Landroid/graphics/RectF;

    .line 26
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomTransparentRect:Landroid/graphics/RectF;

    .line 40
    iput p2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTipWidth:I

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mPaintTip:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$color;->restricted_tip_area_color:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mPaintTip:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iput p4, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenHeight:I

    .line 46
    iput p3, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenWidth:I

    .line 47
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->updateFilletCurvature()V

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopTransparentPaint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopTransparentPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomTransparentPaint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object p0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomTransparentPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mRect:Landroid/graphics/RectF;

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopTransparentRect:Landroid/graphics/RectF;

    .line 26
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomTransparentRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mRect:Landroid/graphics/RectF;

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopTransparentRect:Landroid/graphics/RectF;

    .line 26
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomTransparentRect:Landroid/graphics/RectF;

    return-void
.end method

.method private drawBottomRect()V
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopTransparentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTipWidth:I

    int-to-float v2, v1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 117
    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenWidth:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 118
    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenHeight:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->top:F

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 119
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 120
    iget-object v1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomDispalyCurvature:F

    iget-object v3, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTipWidth:I

    int-to-float v3, v2

    iget v5, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenWidth:I

    int-to-float v6, v5

    div-float/2addr v6, v4

    int-to-float v4, v2

    add-float/2addr v6, v4

    sub-int/2addr v5, v2

    int-to-float v4, v5

    iget v5, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenHeight:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    iget v5, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomDispalyCurvature:F

    sub-float/2addr v2, v5

    invoke-direct {v1, v3, v6, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopRect()V
    .locals 8

    .line 128
    iget-object v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomTransparentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTipWidth:I

    int-to-float v2, v1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 129
    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenWidth:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    int-to-float v2, v1

    .line 130
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 131
    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 132
    iget-object v1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopDispalyCurvature:F

    iget-object v4, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTipWidth:I

    int-to-float v4, v2

    int-to-float v5, v2

    iget v6, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopDispalyCurvature:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenWidth:I

    sub-int/2addr v6, v2

    int-to-float v6, v6

    iget v7, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenHeight:I

    int-to-float v7, v7

    div-float/2addr v7, v3

    int-to-float v2, v2

    sub-float/2addr v7, v2

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private updateFilletCurvature()V
    .locals 2

    const-string/jumbo v0, "persist.sys.miui_resolution"

    const-string v1, ""

    .line 103
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x438

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x431b0000    # 155.0f

    .line 105
    iput v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopDispalyCurvature:F

    const/high16 v0, 0x43070000    # 135.0f

    .line 106
    iput v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomDispalyCurvature:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43340000    # 180.0f

    .line 108
    iput v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTopDispalyCurvature:F

    const/high16 v0, 0x43180000    # 152.0f

    .line 109
    iput v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBottomDispalyCurvature:F

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 78
    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenWidth:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 79
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 80
    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenHeight:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 81
    iget-object v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mPaintTip:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->drawTopRect()V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->drawBottomRect()V

    .line 86
    iget-object v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenWidth:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setWidth(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenHeight:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHeight(I)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 69
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 70
    iget p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenWidth:I

    iget p2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenHeight:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBitmap:Landroid/graphics/Bitmap;

    .line 71
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setTipWidth(III)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mTipWidth:I

    .line 94
    iget p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenWidth:I

    if-eq p2, p1, :cond_0

    iget p1, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenHeight:I

    if-eq p3, p1, :cond_0

    .line 95
    iput p2, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenWidth:I

    .line 96
    iput p3, p0, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->mScreenHeight:I

    .line 97
    invoke-direct {p0}, Lcom/android/settings/edgesuppression/SuppressionTipAreaView;->updateFilletCurvature()V

    :cond_0
    return-void
.end method

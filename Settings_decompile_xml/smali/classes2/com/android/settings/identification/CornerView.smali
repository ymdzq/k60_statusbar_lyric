.class public Lcom/android/settings/identification/CornerView;
.super Landroid/widget/RelativeLayout;
.source "CornerView.java"


# instance fields
.field private final maskPaint:Landroid/graphics/Paint;

.field private rect_radius:F

.field private final roundRect:Landroid/graphics/RectF;

.field private final zonePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/identification/CornerView;->roundRect:Landroid/graphics/RectF;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 16
    iput p1, p0, Lcom/android/settings/identification/CornerView;->rect_radius:F

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/identification/CornerView;->maskPaint:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/identification/CornerView;->zonePaint:Landroid/graphics/Paint;

    .line 22
    invoke-direct {p0}, Lcom/android/settings/identification/CornerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/identification/CornerView;->roundRect:Landroid/graphics/RectF;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 16
    iput p1, p0, Lcom/android/settings/identification/CornerView;->rect_radius:F

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/identification/CornerView;->maskPaint:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/identification/CornerView;->zonePaint:Landroid/graphics/Paint;

    .line 27
    invoke-direct {p0}, Lcom/android/settings/identification/CornerView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/android/settings/identification/CornerView;->maskPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object v0, p0, Lcom/android/settings/identification/CornerView;->maskPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 34
    iget-object v0, p0, Lcom/android/settings/identification/CornerView;->zonePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object v0, p0, Lcom/android/settings/identification/CornerView;->zonePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 38
    iget v1, p0, Lcom/android/settings/identification/CornerView;->rect_radius:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/settings/identification/CornerView;->rect_radius:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/android/settings/identification/CornerView;->roundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/identification/CornerView;->zonePaint:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 55
    iget-object v0, p0, Lcom/android/settings/identification/CornerView;->roundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/identification/CornerView;->rect_radius:F

    iget-object v3, p0, Lcom/android/settings/identification/CornerView;->zonePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/identification/CornerView;->roundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/identification/CornerView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 57
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 49
    iget-object p1, p0, Lcom/android/settings/identification/CornerView;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setCorner(F)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/settings/identification/CornerView;->rect_radius:F

    .line 43
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

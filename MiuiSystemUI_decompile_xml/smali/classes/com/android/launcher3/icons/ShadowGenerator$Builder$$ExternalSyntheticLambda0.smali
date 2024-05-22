.class public final synthetic Lcom/android/launcher3/icons/ShadowGenerator$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/icons/ShadowGenerator$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/ShadowGenerator$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    const/4 v1, 0x3

    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 10
    iget v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->color:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget v2, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    .line 18
    iget v3, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 20
    sget-object v4, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;

    .line 22
    const/4 v4, 0x0

    .line 24
    const/16 v5, 0xff

    .line 25
    iget v6, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowAlpha:I

    .line 27
    if-gez v6, :cond_0

    .line 29
    move v6, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-le v6, v5, :cond_1

    .line 33
    move v6, v5

    .line 35
    :cond_1
    :goto_0
    shl-int/lit8 v6, v6, 0x18

    .line 36
    or-int/2addr v6, v4

    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-virtual {v0, v2, v7, v3, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 40
    iget-object v2, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    .line 43
    iget v3, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    .line 45
    invoke-virtual {p1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 47
    iget v3, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    .line 50
    iget v6, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    .line 52
    if-gez v6, :cond_2

    .line 54
    move v6, v4

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-le v6, v5, :cond_3

    .line 58
    move v6, v5

    .line 60
    :cond_3
    :goto_1
    shl-int/lit8 v6, v6, 0x18

    .line 61
    or-int/2addr v4, v6

    .line 63
    invoke-virtual {v0, v3, v7, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 64
    iget v3, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    .line 67
    invoke-virtual {p1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 69
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 72
    move-result v3

    .line 75
    if-ge v3, v5, :cond_4

    .line 76
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 78
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 80
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 88
    const/high16 v3, -0x1000000

    .line 91
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget v3, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    .line 96
    invoke-virtual {p1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 98
    const/4 v3, 0x0

    .line 101
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget p0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    .line 108
    invoke-virtual {p1, v2, p0, p0, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 110
    :cond_4
    return-void
    .line 113
.end method

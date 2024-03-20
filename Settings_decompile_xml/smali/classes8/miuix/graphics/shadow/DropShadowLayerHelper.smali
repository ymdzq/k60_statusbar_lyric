.class public Lmiuix/graphics/shadow/DropShadowLayerHelper;
.super Lmiuix/graphics/shadow/DropShadowHelper;
.source "DropShadowLayerHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/graphics/shadow/DropShadowConfig;Z)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lmiuix/graphics/shadow/DropShadowHelper;-><init>(Landroid/content/Context;Lmiuix/graphics/shadow/DropShadowConfig;Z)V

    return-void
.end method


# virtual methods
.method protected onDensityChanged(FLmiuix/graphics/shadow/DropShadowConfig;)V
    .locals 2

    .line 13
    invoke-super {p0, p1, p2}, Lmiuix/graphics/shadow/DropShadowHelper;->onDensityChanged(FLmiuix/graphics/shadow/DropShadowConfig;)V

    .line 14
    iget-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    iget p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    iget v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    iget v1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    iget p0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowColor:I

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

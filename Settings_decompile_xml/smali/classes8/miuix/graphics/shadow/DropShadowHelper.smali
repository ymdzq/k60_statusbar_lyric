.class public abstract Lmiuix/graphics/shadow/DropShadowHelper;
.super Ljava/lang/Object;
.source "DropShadowHelper.java"


# instance fields
.field protected mBlurRadiusPx:F

.field protected mContext:Landroid/content/Context;

.field protected mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

.field protected mEnableShadow:Z

.field protected mLastDensity:F

.field protected mOffsetXPx:F

.field protected mOffsetYPx:F

.field protected mOriginViewParentClipState:[Z

.field protected mShadowColor:I

.field protected mShadowPaint:Landroid/graphics/Paint;

.field protected mShadowRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/graphics/shadow/DropShadowConfig;Z)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    .line 24
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    .line 25
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    .line 26
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mLastDensity:F

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableShadow:Z

    .line 37
    iput-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 40
    invoke-virtual {p0, p3, p1, p2}, Lmiuix/graphics/shadow/DropShadowHelper;->updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V

    return-void
.end method


# virtual methods
.method public drawShadow(Landroid/graphics/Canvas;F)V
    .locals 1

    .line 50
    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public enableViewShadow(Landroid/view/View;ZI)V
    .locals 4

    .line 61
    iget-boolean v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableShadow:Z

    if-ne v0, p2, :cond_0

    return-void

    .line 64
    :cond_0
    iput-boolean p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mEnableShadow:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 67
    new-array p2, p3, [Z

    iput-object p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    move p2, v0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 71
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 72
    iget-object v2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v3

    aput-boolean v3, v2, p2

    .line 73
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 74
    check-cast p1, Landroid/view/View;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, p3, :cond_2

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 83
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    .line 84
    iget-object v1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    aget-boolean v1, v1, v0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 85
    check-cast p1, Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOriginViewParentClipState:[Z

    :cond_3
    return-void
.end method

.method public getShadowRect()Landroid/graphics/RectF;
    .locals 0

    .line 57
    iget-object p0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;Z)V
    .locals 1

    .line 95
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    .line 96
    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    invoke-virtual {p0, p2, p1, v0}, Lmiuix/graphics/shadow/DropShadowHelper;->updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V

    return-void
.end method

.method protected onDensityChanged(FLmiuix/graphics/shadow/DropShadowConfig;)V
    .locals 1

    .line 109
    iget v0, p2, Lmiuix/graphics/shadow/DropShadowConfig;->offsetXDp:F

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetXPx:F

    .line 110
    iget v0, p2, Lmiuix/graphics/shadow/DropShadowConfig;->offsetYDp:F

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mOffsetYPx:F

    .line 111
    iget p2, p2, Lmiuix/graphics/shadow/DropShadowConfig;->blurRadiusDp:F

    invoke-static {p1, p2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mBlurRadiusPx:F

    return-void
.end method

.method public updateShadowRect(IIII)V
    .locals 0

    .line 46
    iget-object p0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowRect:Landroid/graphics/RectF;

    int-to-float p3, p3

    int-to-float p1, p1

    sub-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2, p3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method protected updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    iget p1, p1, Lmiuix/graphics/shadow/DropShadowConfig;->shadowColor:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    iget p1, p1, Lmiuix/graphics/shadow/DropShadowConfig;->shadowDarkColor:I

    :goto_0
    iput p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowColor:I

    .line 101
    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget p1, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mLastDensity:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 103
    iput p2, p0, Lmiuix/graphics/shadow/DropShadowHelper;->mLastDensity:F

    .line 104
    invoke-virtual {p0, p2, p3}, Lmiuix/graphics/shadow/DropShadowHelper;->onDensityChanged(FLmiuix/graphics/shadow/DropShadowConfig;)V

    :cond_1
    return-void
.end method

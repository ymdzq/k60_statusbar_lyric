.class public final Lmiuix/graphics/shadow/DropShadowLayerHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

.field public mEnableShadow:Z

.field public mLastDensity:F

.field public mOriginViewParentClipState:[Z

.field public mShadowColor:I

.field public final mShadowPaint:Landroid/graphics/Paint;

.field public final mShadowRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/graphics/shadow/DropShadowConfig;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mLastDensity:F

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    .line 8
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 10
    iput-object v0, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mShadowRect:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    .line 15
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 17
    iput-object v0, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mShadowPaint:Landroid/graphics/Paint;

    .line 20
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mEnableShadow:Z

    .line 23
    iput-object p2, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    move-result-object p1

    .line 34
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 35
    invoke-virtual {p0, p3, p1, p2}, Lmiuix/graphics/shadow/DropShadowLayerHelper;->updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V

    .line 37
    return-void
    .line 40
.end method


# virtual methods
.method public final enableViewShadow(Landroid/view/View;Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mEnableShadow:Z

    .line 2
    if-ne v0, p2, :cond_0

    .line 4
    goto :goto_2

    .line 6
    :cond_0
    iput-boolean p2, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mEnableShadow:Z

    .line 7
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p2, :cond_1

    .line 11
    new-array p2, v0, [Z

    .line 13
    iput-object p2, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mOriginViewParentClipState:[Z

    .line 15
    move p2, v1

    .line 17
    :goto_0
    if-ge p2, v0, :cond_3

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    move-result-object p1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    move-object v2, p1

    .line 26
    check-cast v2, Landroid/view/ViewGroup;

    .line 27
    iget-object v3, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mOriginViewParentClipState:[Z

    .line 29
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getClipChildren()Z

    .line 31
    move-result v4

    .line 34
    aput-boolean v4, v3, p2

    .line 35
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 37
    check-cast p1, Landroid/view/View;

    .line 40
    add-int/lit8 p2, p2, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    if-ge v1, v0, :cond_2

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 47
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    move-object p2, p1

    .line 53
    check-cast p2, Landroid/view/ViewGroup;

    .line 54
    iget-object v2, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mOriginViewParentClipState:[Z

    .line 56
    aget-boolean v2, v2, v1

    .line 58
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 60
    check-cast p1, Landroid/view/View;

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_1

    .line 67
    :cond_2
    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mOriginViewParentClipState:[Z

    .line 69
    :cond_3
    :goto_2
    return-void
    .line 71
.end method

.method public final updateShadowValues(ZFLmiuix/graphics/shadow/DropShadowConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mDropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget p1, v0, Lmiuix/graphics/shadow/DropShadowConfig;->shadowColor:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget p1, v0, Lmiuix/graphics/shadow/DropShadowConfig;->shadowDarkColor:I

    .line 9
    :goto_0
    iput p1, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mShadowColor:I

    .line 11
    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mShadowPaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget p1, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mLastDensity:F

    .line 18
    cmpl-float p1, p1, p2

    .line 20
    if-eqz p1, :cond_1

    .line 22
    iput p2, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mLastDensity:F

    .line 24
    iget p1, p3, Lmiuix/graphics/shadow/DropShadowConfig;->offsetXDp:F

    .line 26
    sget v1, Lmiuix/core/util/MiuixUIUtils;->$r8$clinit:I

    .line 28
    mul-float/2addr p1, p2

    .line 30
    const/high16 v1, 0x3f000000    # 0.5f

    .line 31
    add-float/2addr p1, v1

    .line 33
    float-to-int p1, p1

    .line 34
    int-to-float p1, p1

    .line 35
    iget v2, p3, Lmiuix/graphics/shadow/DropShadowConfig;->offsetYDp:F

    .line 36
    mul-float/2addr v2, p2

    .line 38
    add-float/2addr v2, v1

    .line 39
    float-to-int v2, v2

    .line 40
    int-to-float v2, v2

    .line 41
    iget p3, p3, Lmiuix/graphics/shadow/DropShadowConfig;->blurRadiusDp:F

    .line 42
    mul-float/2addr p3, p2

    .line 44
    add-float/2addr p3, v1

    .line 45
    float-to-int p2, p3

    .line 46
    int-to-float p2, p2

    .line 47
    iget p0, p0, Lmiuix/graphics/shadow/DropShadowLayerHelper;->mShadowColor:I

    .line 48
    invoke-virtual {v0, p2, p1, v2, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 50
    :cond_1
    return-void
    .line 53
.end method

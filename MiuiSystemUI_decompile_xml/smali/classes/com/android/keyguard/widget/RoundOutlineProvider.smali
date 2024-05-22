.class public final Lcom/android/keyguard/widget/RoundOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final path:Landroid/graphics/Path;

.field public final radius:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 2
    const/16 v0, 0x8

    .line 5
    new-array v0, v0, [F

    .line 7
    iput-object v0, p0, Lcom/android/keyguard/widget/RoundOutlineProvider;->radius:[F

    .line 9
    new-instance v1, Landroid/graphics/Path;

    .line 11
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/android/keyguard/widget/RoundOutlineProvider;->path:Landroid/graphics/Path;

    .line 16
    const/high16 p0, 0x3f800000    # 1.0f

    .line 18
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([FF)V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/widget/RoundOutlineProvider;->path:Landroid/graphics/Path;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/widget/RoundOutlineProvider;->path:Landroid/graphics/Path;

    .line 10
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v0

    .line 17
    int-to-float v4, v0

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 19
    move-result p1

    .line 22
    int-to-float v5, p1

    .line 23
    iget-object v6, p0, Lcom/android/keyguard/widget/RoundOutlineProvider;->radius:[F

    .line 24
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 26
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/widget/RoundOutlineProvider;->path:Landroid/graphics/Path;

    .line 31
    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 33
    return-void
    .line 36
.end method

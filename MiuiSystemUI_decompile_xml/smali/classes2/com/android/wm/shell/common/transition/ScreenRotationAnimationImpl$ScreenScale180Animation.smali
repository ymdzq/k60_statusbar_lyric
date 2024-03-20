.class public final Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$ScreenScale180Animation;
.super Landroid/view/animation/ScaleAnimation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(FFFF)V
    .locals 9

    .line 1
    const/4 v5, 0x1

    .line 2
    const/high16 v6, 0x3f000000    # 0.5f

    .line 3
    const/4 v7, 0x1

    .line 5
    const/high16 v8, 0x3f000000    # 0.5f

    .line 6
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, p4

    .line 12
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/ScaleAnimation;->getDuration()J

    .line 2
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    cmp-long v0, v0, v2

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/ScaleAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
    .line 18
.end method

.class public final Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;
.super Landroid/view/animation/Animation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mFromRect:Landroid/graphics/Rect;

.field public final mOriginRect:Landroid/graphics/Rect;

.field public final mToRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    .line 17
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 19
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 21
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 23
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 25
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 27
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 29
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 31
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 33
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 35
    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 37
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 39
    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 41
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 43
    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 45
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 47
    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 51
    move-result p1

    .line 54
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 55
    move-result p2

    .line 58
    if-gt p1, p2, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 61
    move-result p1

    .line 64
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 65
    move-result p2

    .line 68
    if-gt p1, p2, :cond_0

    .line 69
    iput-object v1, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    .line 71
    goto :goto_0

    .line 73
    :cond_0
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    .line 74
    :goto_0
    return-void
    .line 76
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    int-to-float v2, v1

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    .line 7
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 9
    sub-int/2addr v4, v1

    .line 11
    int-to-float v1, v4

    .line 12
    mul-float/2addr v1, p1

    .line 13
    add-float/2addr v1, v2

    .line 14
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 15
    int-to-float v4, v2

    .line 17
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 18
    sub-int/2addr v5, v2

    .line 20
    int-to-float v2, v5

    .line 21
    mul-float/2addr v2, p1

    .line 22
    add-float/2addr v2, v4

    .line 23
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 24
    int-to-float v5, v4

    .line 26
    iget v6, v3, Landroid/graphics/Rect;->right:I

    .line 27
    sub-int/2addr v6, v4

    .line 29
    int-to-float v4, v6

    .line 30
    mul-float/2addr v4, p1

    .line 31
    add-float/2addr v4, v5

    .line 32
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 33
    int-to-float v5, v0

    .line 35
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 36
    sub-int/2addr v3, v0

    .line 38
    int-to-float v0, v3

    .line 39
    mul-float/2addr v0, p1

    .line 40
    add-float/2addr v0, v5

    .line 41
    sub-float/2addr v0, v2

    .line 42
    iget-object p1, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 45
    move-result p1

    .line 48
    int-to-float p1, p1

    .line 49
    div-float p1, v0, p1

    .line 50
    sub-float/2addr v4, v1

    .line 52
    iget-object v3, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    .line 53
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 55
    move-result v3

    .line 58
    int-to-float v3, v3

    .line 59
    div-float v3, v4, v3

    .line 60
    cmpl-float v5, v3, p1

    .line 62
    if-lez v5, :cond_0

    .line 64
    iget-object p0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 68
    move-result p0

    .line 71
    div-float/2addr v0, v3

    .line 72
    float-to-int p1, v0

    .line 73
    move v0, p1

    .line 74
    move p1, v3

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    div-float/2addr v4, p1

    .line 77
    float-to-int v0, v4

    .line 78
    iget-object p0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$ScaleWithClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 81
    move-result p0

    .line 84
    move v7, v0

    .line 85
    move v0, p0

    .line 86
    move p0, v7

    .line 87
    :goto_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 88
    move-result-object v3

    .line 91
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 92
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 95
    move-result-object v1

    .line 98
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 99
    const/4 p1, 0x0

    .line 102
    invoke-virtual {p2, p1, p1, p0, v0}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 103
    return-void
    .line 106
.end method

.class public abstract Lcom/android/wm/shell/common/split/DockedDividerUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 4
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 6
    if-lt p1, v0, :cond_0

    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 10
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 12
    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 14
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 16
    if-lt p1, v0, :cond_3

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 20
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    iget p1, p0, Landroid/graphics/Rect;->right:I

    .line 25
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 27
    if-gt p1, v0, :cond_2

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 31
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 33
    :cond_2
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 35
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 37
    if-gt p1, v0, :cond_3

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 43
    :cond_3
    :goto_0
    return-void
    .line 45
.end method

.class public abstract Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final getPrivacyChipBoundingRectForInsets(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    new-instance p3, Landroid/graphics/Rect;

    .line 4
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 6
    sub-int p1, v0, p1

    .line 8
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 10
    add-int/2addr v0, p2

    .line 12
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 13
    invoke-direct {p3, p1, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    new-instance p3, Landroid/graphics/Rect;

    .line 19
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 21
    sub-int p2, v0, p2

    .line 23
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 25
    add-int/2addr v0, p1

    .line 27
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 28
    invoke-direct {p3, p2, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 30
    :goto_0
    return-object p3
    .line 33
.end method

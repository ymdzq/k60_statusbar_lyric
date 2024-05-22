.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mOnLeft:Z

.field public final mVerticalOffsetPercent:F


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 5
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 7
    move-result v1

    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    div-float/2addr v1, v2

    .line 13
    cmpg-float v0, v0, v1

    .line 14
    if-gez v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->mOnLeft:Z

    .line 21
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 23
    iget v0, p2, Landroid/graphics/RectF;->top:F

    .line 25
    sub-float/2addr p1, v0

    .line 27
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 28
    move-result p2

    .line 31
    div-float/2addr p1, p2

    .line 32
    const/high16 p2, 0x3f800000    # 1.0f

    .line 33
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 35
    move-result p1

    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 40
    move-result p1

    .line 43
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$RelativeStackPosition;->mVerticalOffsetPercent:F

    .line 44
    return-void
    .line 46
.end method

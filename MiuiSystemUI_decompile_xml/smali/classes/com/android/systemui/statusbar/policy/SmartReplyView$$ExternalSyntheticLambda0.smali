.class public final synthetic Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    check-cast p2, Landroid/view/View;

    .line 4
    sget p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    move-result p0

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    move-result v0

    .line 15
    sub-int/2addr p0, v0

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 17
    move-result p2

    .line 20
    sub-int/2addr p0, p2

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    move-result p2

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 26
    move-result v0

    .line 29
    sub-int/2addr p2, v0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 31
    move-result p1

    .line 34
    sub-int/2addr p2, p1

    .line 35
    sub-int/2addr p0, p2

    .line 36
    return p0
    .line 37
.end method

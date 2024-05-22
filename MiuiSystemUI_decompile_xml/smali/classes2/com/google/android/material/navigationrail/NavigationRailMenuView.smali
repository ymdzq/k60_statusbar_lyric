.class public Lcom/google/android/material/navigationrail/NavigationRailMenuView;
.super Lcom/google/android/material/navigation/NavigationBarMenuView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public itemMinimumHeight:I

.field public final layoutParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    .line 6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    const/4 v1, -0x2

    .line 10
    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11
    iput-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    const/16 p1, 0x31

    .line 16
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    .line 24
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 26
    if-eqz p0, :cond_0

    .line 28
    array-length v0, p0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-ge v1, v0, :cond_0

    .line 32
    aget-object v2, p0, v1

    .line 34
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    return-void
    .line 42
.end method


# virtual methods
.method public final createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/android/material/navigationrail/NavigationRailItemView;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailItemView;-><init>(Landroid/content/Context;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public getItemMinimumHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getMenuGravity()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    return p0
    .line 6
.end method

.method public final makeSharedHeightSpec(III)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 3
    move-result p3

    .line 6
    div-int/2addr p2, p3

    .line 7
    iget p0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    .line 8
    const/4 p3, -0x1

    .line 10
    if-eq p0, p3, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    move-result p0

    .line 17
    :goto_0
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 18
    move-result p0

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 23
    move-result p0

    .line 26
    return p0
    .line 27
.end method

.method public final measureSharedChildHeights(Landroid/view/View;III)I
    .locals 6

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    .line 2
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    .line 8
    move-result p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result p3

    .line 16
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 17
    move-result p3

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result p4

    .line 24
    move v1, v0

    .line 25
    move v2, v1

    .line 26
    :goto_1
    if-ge v1, p4, :cond_3

    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v3

    .line 32
    if-eq v3, p1, :cond_2

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 35
    move-result v4

    .line 38
    const/16 v5, 0x8

    .line 39
    if-eq v4, v5, :cond_1

    .line 41
    invoke-virtual {v3, p2, p3}, Landroid/view/View;->measure(II)V

    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 46
    move-result v3

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    move v3, v0

    .line 51
    :goto_2
    add-int/2addr v2, v3

    .line 52
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_1

    .line 55
    :cond_3
    return v2
    .line 56
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result p1

    .line 5
    sub-int/2addr p4, p2

    .line 6
    const/4 p2, 0x0

    .line 7
    move p3, p2

    .line 8
    move p5, p3

    .line 9
    :goto_0
    if-ge p3, p1, :cond_1

    .line 10
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 16
    move-result v1

    .line 19
    const/16 v2, 0x8

    .line 20
    if-eq v1, v2, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    move-result v1

    .line 27
    add-int/2addr v1, p5

    .line 28
    invoke-virtual {v0, p2, p5, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 29
    move p5, v1

    .line 32
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    return-void
    .line 36
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-le v1, v2, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getLabelVisibilityMode()I

    .line 22
    move-result v2

    .line 25
    invoke-static {v2, v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isShifting(II)Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getSelectedItemPosition()I

    .line 32
    move-result v2

    .line 35
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->makeSharedHeightSpec(III)I

    .line 42
    move-result v4

    .line 45
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 46
    move-result v5

    .line 49
    const/16 v6, 0x8

    .line 50
    if-eq v5, v6, :cond_0

    .line 52
    invoke-virtual {v2, p1, v4}, Landroid/view/View;->measure(II)V

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 57
    move-result v4

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move v4, v3

    .line 62
    :goto_0
    sub-int/2addr v0, v4

    .line 63
    add-int/lit8 v1, v1, -0x1

    .line 64
    goto :goto_1

    .line 66
    :cond_1
    move v4, v3

    .line 67
    :goto_1
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureSharedChildHeights(Landroid/view/View;III)I

    .line 68
    move-result v0

    .line 71
    add-int/2addr v0, v4

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->measureSharedChildHeights(Landroid/view/View;III)I

    .line 75
    move-result v0

    .line 78
    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 79
    move-result v1

    .line 82
    invoke-static {v1, p1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 83
    move-result p1

    .line 86
    invoke-static {v0, p2, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 87
    move-result p2

    .line 90
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 91
    return-void
    .line 94
.end method

.method public setItemMinimumHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->itemMinimumHeight:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

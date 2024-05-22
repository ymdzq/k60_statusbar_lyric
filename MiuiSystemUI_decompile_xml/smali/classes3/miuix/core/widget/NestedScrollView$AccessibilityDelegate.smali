.class public final Lmiuix/core/widget/NestedScrollView$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    check-cast p1, Lmiuix/core/widget/NestedScrollView;

    .line 5
    const-class p0, Landroid/widget/ScrollView;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p1}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 16
    move-result p0

    .line 19
    if-lez p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 25
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 28
    move-result p0

    .line 31
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 32
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 35
    move-result p0

    .line 38
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 39
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 42
    move-result p0

    .line 45
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 46
    invoke-virtual {p1}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 49
    move-result p0

    .line 52
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 53
    return-void
    .line 56
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    check-cast p1, Lmiuix/core/widget/NestedScrollView;

    .line 5
    const-class p0, Landroid/widget/ScrollView;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    invoke-virtual {p1}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 22
    move-result p0

    .line 25
    if-lez p0, :cond_1

    .line 26
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 29
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 32
    move-result v0

    .line 35
    if-lez v0, :cond_0

    .line 36
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 38
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 40
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 43
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 48
    move-result p1

    .line 51
    if-ge p1, p0, :cond_1

    .line 52
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 54
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 56
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 59
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 61
    :cond_1
    return-void
    .line 64
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 2
    move-result p0

    .line 5
    const/4 p3, 0x1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    return p3

    .line 9
    :cond_0
    check-cast p1, Lmiuix/core/widget/NestedScrollView;

    .line 10
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    .line 12
    move-result p0

    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p0, :cond_1

    .line 17
    return v0

    .line 19
    :cond_1
    const/16 p0, 0x1000

    .line 20
    if-eq p2, p0, :cond_4

    .line 22
    const/16 p0, 0x2000

    .line 24
    if-eq p2, p0, :cond_2

    .line 26
    const p0, 0x1020038    # @android:id/accessibilityActionScrollUp

    .line 28
    if-eq p2, p0, :cond_2

    .line 31
    const p0, 0x102003a    # @android:id/accessibilityActionScrollDown

    .line 33
    if-eq p2, p0, :cond_4

    .line 36
    return v0

    .line 38
    :cond_2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 39
    move-result p0

    .line 42
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 43
    move-result p2

    .line 46
    sub-int/2addr p0, p2

    .line 47
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 48
    move-result p2

    .line 51
    sub-int/2addr p0, p2

    .line 52
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 53
    move-result p2

    .line 56
    sub-int/2addr p2, p0

    .line 57
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 58
    move-result p0

    .line 61
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 62
    move-result p2

    .line 65
    if-eq p0, p2, :cond_3

    .line 66
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 68
    move-result p2

    .line 71
    sub-int/2addr v0, p2

    .line 72
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 73
    move-result p2

    .line 76
    sub-int/2addr p0, p2

    .line 77
    invoke-virtual {p1, v0, p0, p3}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy$2(IIZ)V

    .line 78
    return p3

    .line 81
    :cond_3
    return v0

    .line 82
    :cond_4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 83
    move-result p0

    .line 86
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 87
    move-result p2

    .line 90
    sub-int/2addr p0, p2

    .line 91
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 92
    move-result p2

    .line 95
    sub-int/2addr p0, p2

    .line 96
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 97
    move-result p2

    .line 100
    add-int/2addr p2, p0

    .line 101
    invoke-virtual {p1}, Lmiuix/core/widget/NestedScrollView;->getScrollRange()I

    .line 102
    move-result p0

    .line 105
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    .line 106
    move-result p0

    .line 109
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 110
    move-result p2

    .line 113
    if-eq p0, p2, :cond_5

    .line 114
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollX()I

    .line 116
    move-result p2

    .line 119
    sub-int/2addr v0, p2

    .line 120
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    .line 121
    move-result p2

    .line 124
    sub-int/2addr p0, p2

    .line 125
    invoke-virtual {p1, v0, p0, p3}, Lmiuix/core/widget/NestedScrollView;->smoothScrollBy$2(IIZ)V

    .line 126
    return p3

    .line 129
    :cond_5
    return v0
    .line 130
.end method

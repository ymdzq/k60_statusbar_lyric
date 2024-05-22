.class public final Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 2
    iget p0, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mCollapsedAmount:F

    .line 4
    return p0
    .line 6
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->setCollapsedAmount(F)V

    .line 4
    return-void
    .line 7
.end method

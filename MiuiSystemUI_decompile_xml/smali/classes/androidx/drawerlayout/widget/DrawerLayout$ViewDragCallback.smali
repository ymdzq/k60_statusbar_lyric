.class public final Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAbsGravity:I

.field public mDragger:Landroidx/customview/widget/ViewDragHelper;

.field public final mPeekRunnable:Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;

.field public final synthetic this$0:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 4
    new-instance p1, Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;

    .line 7
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 10
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;

    .line 13
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final clampViewPositionHorizontal(Landroid/view/View;I)I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(ILandroid/view/View;)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 11
    move-result p0

    .line 14
    neg-int p0, p0

    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 17
    move-result p1

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 21
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 26
    move-result p0

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 30
    move-result p1

    .line 33
    sub-int p1, p0, p1

    .line 34
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    .line 36
    move-result p0

    .line 39
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 40
    move-result p0

    .line 43
    return p0
.end method

.method public final clampViewPositionVertical(Landroid/view/View;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    .line 7
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 13
    move-result p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public final onEdgeDragStarted(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p1, v0

    .line 3
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    const/4 p1, 0x3

    .line 8
    invoke-virtual {v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x5

    .line 14
    invoke-virtual {v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    .line 21
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 27
    invoke-virtual {p0, p2, p1}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(ILandroid/view/View;)V

    .line 29
    :cond_1
    return-void
    .line 32
.end method

.method public final onEdgeTouched(I)V
    .locals 2

    .line 1
    const-wide/16 v0, 0xa0

    .line 2
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 4
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Landroidx/drawerlayout/widget/DrawerLayout$$ExternalSyntheticLambda0;

    .line 6
    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    return-void
    .line 11
.end method

.method public final onViewCaptured(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 6
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 9
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 11
    const/4 p2, 0x3

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    const/4 p2, 0x5

    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 17
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 25
    :cond_1
    return-void
    .line 28
.end method

.method public final onViewDragStateChanged(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 2
    iget-object v0, v0, Landroidx/customview/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 4
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 6
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 8
    iget v1, v1, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    .line 10
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 12
    iget v2, v2, Landroidx/customview/widget/ViewDragHelper;->mDragState:I

    .line 14
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eq v1, v4, :cond_2

    .line 18
    if-ne v2, v4, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v5, 0x2

    .line 23
    if-eq v1, v5, :cond_3

    .line 24
    if-ne v2, v5, :cond_1

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    move v5, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    move v5, v4

    .line 31
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_9

    .line 33
    if-nez p1, :cond_9

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object p1

    .line 40
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 41
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 43
    const/4 v2, 0x0

    .line 45
    cmpl-float v2, p1, v2

    .line 46
    const/16 v6, 0x20

    .line 48
    if-nez v2, :cond_6

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    move-result-object p1

    .line 55
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 56
    iget v2, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 58
    and-int/2addr v2, v4

    .line 60
    if-ne v2, v4, :cond_9

    .line 61
    iput v3, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 63
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 65
    if-eqz p1, :cond_5

    .line 67
    check-cast p1, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result p1

    .line 74
    sub-int/2addr p1, v4

    .line 75
    if-gez p1, :cond_4

    .line 76
    goto :goto_2

    .line 78
    :cond_4
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 79
    check-cast p0, Ljava/util/ArrayList;

    .line 81
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 86
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 87
    throw v1

    .line 90
    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 91
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildAccessibilityAction(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->updateBackInvokedCallbackState()V

    .line 97
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    .line 100
    move-result p1

    .line 103
    if-eqz p1, :cond_9

    .line 104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 106
    move-result-object p1

    .line 109
    if-eqz p1, :cond_9

    .line 110
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 112
    goto :goto_4

    .line 115
    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 116
    cmpl-float p1, p1, v2

    .line 118
    if-nez p1, :cond_9

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 122
    move-result-object p1

    .line 125
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 126
    iget v2, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 128
    and-int/2addr v2, v4

    .line 130
    if-nez v2, :cond_9

    .line 131
    iput v4, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    .line 133
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 135
    if-eqz p1, :cond_8

    .line 137
    check-cast p1, Ljava/util/ArrayList;

    .line 139
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 141
    move-result p1

    .line 144
    sub-int/2addr p1, v4

    .line 145
    if-gez p1, :cond_7

    .line 146
    goto :goto_3

    .line 148
    :cond_7
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 149
    check-cast p0, Ljava/util/ArrayList;

    .line 151
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    move-result-object p0

    .line 156
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 157
    throw v1

    .line 160
    :cond_8
    :goto_3
    invoke-virtual {p0, v0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 161
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildAccessibilityAction(Landroid/view/View;)V

    .line 164
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->updateBackInvokedCallbackState()V

    .line 167
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    .line 170
    move-result p1

    .line 173
    if-eqz p1, :cond_9

    .line 174
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 176
    :cond_9
    :goto_4
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    .line 179
    if-eq v5, p1, :cond_b

    .line 181
    iput v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    .line 183
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 185
    if-eqz p1, :cond_b

    .line 187
    check-cast p1, Ljava/util/ArrayList;

    .line 189
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 191
    move-result p1

    .line 194
    sub-int/2addr p1, v4

    .line 195
    if-gez p1, :cond_a

    .line 196
    goto :goto_5

    .line 198
    :cond_a
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 199
    check-cast p0, Ljava/util/ArrayList;

    .line 201
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    move-result-object p0

    .line 206
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 207
    throw v1

    .line 210
    :cond_b
    :goto_5
    return-void
    .line 211
.end method

.method public final onViewPositionChanged(Landroid/view/View;II)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    move-result p3

    .line 5
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 6
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p0, v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(ILandroid/view/View;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    add-int/2addr p2, p3

    .line 15
    int-to-float p2, p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 18
    move-result v0

    .line 21
    sub-int/2addr v0, p2

    .line 22
    int-to-float p2, v0

    .line 23
    :goto_0
    int-to-float p3, p3

    .line 24
    div-float/2addr p2, p3

    .line 25
    invoke-virtual {p0, p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(FLandroid/view/View;)V

    .line 26
    const/4 p3, 0x0

    .line 29
    cmpl-float p2, p2, p3

    .line 30
    if-nez p2, :cond_1

    .line 32
    const/4 p2, 0x4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 p2, 0x0

    .line 36
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 40
    return-void
    .line 43
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .locals 6

    .line 1
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 11
    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 15
    move-result v1

    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-virtual {p3, v2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(ILandroid/view/View;)Z

    .line 20
    move-result v2

    .line 23
    const/high16 v3, 0x3f000000    # 0.5f

    .line 24
    const/4 v4, 0x0

    .line 26
    if-eqz v2, :cond_2

    .line 27
    cmpl-float p2, p2, v4

    .line 29
    if-gtz p2, :cond_1

    .line 31
    if-nez p2, :cond_0

    .line 33
    cmpl-float p2, v0, v3

    .line 35
    if-lez p2, :cond_0

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    neg-int p2, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    .line 44
    move-result v2

    .line 47
    cmpg-float v5, p2, v4

    .line 48
    if-ltz v5, :cond_3

    .line 50
    cmpl-float p2, p2, v4

    .line 52
    if-nez p2, :cond_4

    .line 54
    cmpl-float p2, v0, v3

    .line 56
    if-lez p2, :cond_4

    .line 58
    :cond_3
    sub-int/2addr v2, v1

    .line 60
    :cond_4
    move p2, v2

    .line 61
    :goto_1
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 64
    move-result p1

    .line 67
    invoke-virtual {p0, p2, p1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 68
    invoke-virtual {p3}, Landroid/view/ViewGroup;->invalidate()V

    .line 71
    return-void
    .line 74
.end method

.method public final tryCaptureView(ILandroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 13
    invoke-virtual {p1, p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(ILandroid/view/View;)Z

    .line 15
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    .line 21
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
    .line 30
.end method

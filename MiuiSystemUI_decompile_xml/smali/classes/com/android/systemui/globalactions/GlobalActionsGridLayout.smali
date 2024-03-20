.class public Lcom/android/systemui/globalactions/GlobalActionsGridLayout;
.super Lcom/android/systemui/globalactions/GlobalActionsLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final addToListView(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    iget p2, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mReverseSublists:Z

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mSwapRowsAndColumns:Z

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/systemui/globalactions/ListGridLayout;->getParentView(IZZ)Landroid/view/ViewGroup;

    .line 14
    move-result-object p2

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mReverseItems:Z

    .line 18
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 30
    iget p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 35
    iput p1, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    .line 37
    :cond_1
    return-void
    .line 39
.end method

.method public getAnimationDistance()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/globalactions/ListGridLayout;->getRowCount()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p0

    .line 17
    const v1, 0x7f0703a0    # @dimen/global_actions_grid_item_height '64.0dp'

    .line 18
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 21
    move-result p0

    .line 24
    int-to-float v0, v0

    .line 25
    mul-float/2addr v0, p0

    .line 26
    const/high16 p0, 0x40000000    # 2.0f

    .line 27
    div-float/2addr v0, p0

    .line 29
    return v0
    .line 30
.end method

.method public getAnimationOffsetX()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getAnimationDistance()F

    .line 14
    move-result p0

    .line 17
    neg-float p0, p0

    .line 18
    return p0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getAnimationDistance()F

    .line 20
    move-result p0

    .line 23
    return p0
.end method

.method public getAnimationOffsetY()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getAnimationDistance()F

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public bridge synthetic getListView()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    move-result-object p0

    return-object p0
.end method

.method public getListView()Lcom/android/systemui/globalactions/ListGridLayout;
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/ListGridLayout;

    return-object p0
.end method

.method public final onUpdateList()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->setupListView()V

    .line 2
    invoke-super {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->onUpdateList()V

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->updateSeparatedItemSize()V

    .line 8
    return-void
    .line 11
.end method

.method public final removeAllItems()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    .line 6
    move-result-object p0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    :cond_0
    if-eqz p0, :cond_3

    .line 15
    const/4 v0, 0x0

    .line 17
    move v1, v0

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 19
    move-result v2

    .line 22
    if-ge v1, v2, :cond_2

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/ListGridLayout;->getSublist(I)Landroid/view/ViewGroup;

    .line 25
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 31
    const/16 v3, 0x8

    .line 34
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    iput v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    .line 42
    :cond_3
    return-void
    .line 44
.end method

.method public final removeAllListViews()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 10
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/ListGridLayout;->getSublist(I)Landroid/view/ViewGroup;

    .line 16
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    const/16 v3, 0x8

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    iput v0, p0, Lcom/android/systemui/globalactions/ListGridLayout;->mCurrentCount:I

    .line 33
    :cond_2
    return-void
    .line 35
.end method

.method public setupListView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->getListView()Lcom/android/systemui/globalactions/ListGridLayout;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    .line 6
    check-cast v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->countItems(Z)I

    .line 11
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/ListGridLayout;->setExpectedCount(I)V

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->shouldReverseSublists()Z

    .line 18
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/ListGridLayout;->setReverseSublists(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->shouldReverseListItems()Z

    .line 25
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/ListGridLayout;->setReverseItems(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsGridLayout;->shouldSwapRowsAndColumns()Z

    .line 32
    move-result p0

    .line 35
    invoke-virtual {v0, p0}, Lcom/android/systemui/globalactions/ListGridLayout;->setSwapRowsAndColumns(Z)V

    .line 36
    return-void
    .line 39
.end method

.method public final shouldReverseListItems()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    const/4 v2, 0x3

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v1

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentLayoutDirection()I

    .line 16
    move-result p0

    .line 19
    if-ne p0, v1, :cond_2

    .line 20
    xor-int/lit8 v0, v0, 0x1

    .line 22
    :cond_2
    return v0
.end method

.method public shouldReverseSublists()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x3

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
    .line 12
.end method

.method public shouldSwapRowsAndColumns()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    .line 2
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x1

    .line 10
    return p0
    .line 11
.end method

.method public updateSeparatedItemSize()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result p0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne p0, v1, :cond_1

    .line 27
    const/4 p0, -0x1

    .line 29
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, -0x2

    .line 35
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    :goto_0
    return-void
    .line 40
.end method

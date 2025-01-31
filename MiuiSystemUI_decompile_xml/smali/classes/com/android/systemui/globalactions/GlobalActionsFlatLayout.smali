.class public Lcom/android/systemui/globalactions/GlobalActionsFlatLayout;
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

.method private getOverflowButton()Landroid/view/View;
    .locals 1

    .line 1
    const v0, 0x7f0a03ab    # @id/global_actions_overflow_button

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    return-object p0
    .line 9
.end method


# virtual methods
.method public final addToListView(Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->addToListView(Landroid/view/View;Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsFlatLayout;->getOverflowButton()Landroid/view/View;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    invoke-super {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->addToListView(Landroid/view/View;Z)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public getAnimationDistance()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsFlatLayout;->getGridItemSize()F

    .line 2
    move-result p0

    .line 5
    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    div-float/2addr p0, v0

    .line 8
    return p0
    .line 9
.end method

.method public getAnimationOffsetX()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsFlatLayout;->getAnimationDistance()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getAnimationOffsetY()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getBackgroundDrawable(I)Lcom/android/systemui/HardwareBgDrawable;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getGridItemSize()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0703a0    # @dimen/global_actions_grid_item_height '64.0dp'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    .line 5
    move-result-object p0

    .line 8
    const/4 p1, 0x0

    .line 9
    move p2, p1

    .line 10
    move p3, p2

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result p4

    .line 15
    const/4 p5, 0x1

    .line 16
    if-ge p2, p4, :cond_3

    .line 17
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object p4

    .line 22
    instance-of v0, p4, Lcom/android/systemui/globalactions/GlobalActionsItem;

    .line 23
    if-eqz v0, :cond_2

    .line 25
    check-cast p4, Lcom/android/systemui/globalactions/GlobalActionsItem;

    .line 27
    if-nez p3, :cond_1

    .line 29
    invoke-virtual {p4}, Lcom/android/systemui/globalactions/GlobalActionsItem;->isTruncated()Z

    .line 31
    move-result p3

    .line 34
    if-eqz p3, :cond_0

    .line 35
    goto :goto_1

    .line 37
    :cond_0
    move p3, p1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    move p3, p5

    .line 40
    :cond_2
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    if-eqz p3, :cond_5

    .line 44
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    move-result p2

    .line 49
    if-ge p1, p2, :cond_5

    .line 50
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object p2

    .line 55
    instance-of p3, p2, Lcom/android/systemui/globalactions/GlobalActionsItem;

    .line 56
    if-eqz p3, :cond_4

    .line 58
    check-cast p2, Lcom/android/systemui/globalactions/GlobalActionsItem;

    .line 60
    invoke-virtual {p2, p5}, Lcom/android/systemui/globalactions/GlobalActionsItem;->setMarquee(Z)V

    .line 62
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 65
    goto :goto_3

    .line 67
    :cond_5
    return-void
    .line 68
.end method

.method public final removeAllListViews()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsFlatLayout;->getOverflowButton()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    invoke-super {p0}, Lcom/android/systemui/MultiListLayout;->removeAllListViews()V

    .line 6
    if-eqz v0, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-super {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->addToListView(Landroid/view/View;Z)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public shouldReverseListItems()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentLayoutDirection()I

    .line 10
    move-result p0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p0, v2, :cond_2

    .line 15
    if-ne v0, v2, :cond_1

    .line 17
    move v1, v2

    .line 19
    :cond_1
    return v1

    .line 20
    :cond_2
    const/4 p0, 0x3

    .line 21
    if-ne v0, p0, :cond_3

    .line 22
    move v1, v2

    .line 24
    :cond_3
    return v1
    .line 25
.end method

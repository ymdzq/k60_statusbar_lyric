.class public Landroidx/leanback/widget/NonOverlappingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDeferFocusableViewAvailableInLayout:Z

.field public mFocusableViewAvailableFixEnabled:Z

.field public final mSortedAvailableViews:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/NonOverlappingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/NonOverlappingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mFocusableViewAvailableFixEnabled:Z

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    move-object v0, p1

    .line 6
    :goto_0
    const/4 v1, -0x1

    .line 7
    if-eq v0, p0, :cond_1

    .line 8
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object v2

    .line 15
    if-ne v2, p0, :cond_0

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    .line 18
    move-result v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/View;

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    move v0, v1

    .line 30
    :goto_1
    if-eq v0, v1, :cond_3

    .line 31
    iget-object p0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_2

    .line 44
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->focusableViewAvailable(Landroid/view/View;)V

    .line 45
    :cond_3
    :goto_2
    return-void
    .line 48
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mFocusableViewAvailableFixEnabled:Z

    .line 3
    const/4 v2, 0x1

    .line 5
    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 8
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    .line 14
    move-result v1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v0

    .line 22
    :goto_0
    iput-boolean v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 23
    if-eqz v1, :cond_2

    .line 25
    :goto_1
    iget-object v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 33
    move-result v3

    .line 36
    if-le v1, v3, :cond_1

    .line 37
    iget-object v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v3

    .line 44
    sub-int/2addr v3, v2

    .line 45
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    :goto_2
    iget-object v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result v1

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 56
    move-result v2

    .line 59
    if-ge v1, v2, :cond_2

    .line 60
    iget-object v1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_2

    .line 72
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 73
    iget-boolean p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 76
    if-eqz p1, :cond_4

    .line 78
    move p1, v0

    .line 80
    :goto_3
    iget-object p2, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 83
    move-result p2

    .line 86
    if-ge p1, p2, :cond_4

    .line 87
    move p2, v0

    .line 89
    :goto_4
    iget-object p3, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object p3

    .line 95
    check-cast p3, Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 98
    move-result p3

    .line 101
    if-ge p2, p3, :cond_3

    .line 102
    iget-object p3, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object p3

    .line 109
    check-cast p3, Ljava/util/ArrayList;

    .line 110
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object p3

    .line 115
    check-cast p3, Landroid/view/View;

    .line 116
    invoke-super {p0, p3}, Landroid/widget/LinearLayout;->focusableViewAvailable(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    add-int/lit8 p2, p2, 0x1

    .line 121
    goto :goto_4

    .line 123
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 124
    goto :goto_3

    .line 126
    :cond_4
    iget-boolean p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 127
    if-eqz p1, :cond_5

    .line 129
    iput-boolean v0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 131
    :goto_5
    iget-object p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 135
    move-result p1

    .line 138
    if-ge v0, p1, :cond_5

    .line 139
    iget-object p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object p1

    .line 146
    check-cast p1, Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 152
    goto :goto_5

    .line 154
    :cond_5
    return-void

    .line 155
    :catchall_0
    move-exception p1

    .line 156
    iget-boolean p2, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 157
    if-eqz p2, :cond_6

    .line 159
    iput-boolean v0, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mDeferFocusableViewAvailableInLayout:Z

    .line 161
    :goto_6
    iget-object p2, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 165
    move-result p2

    .line 168
    if-ge v0, p2, :cond_6

    .line 169
    iget-object p2, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mSortedAvailableViews:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    move-result-object p2

    .line 176
    check-cast p2, Ljava/util/ArrayList;

    .line 177
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 182
    goto :goto_6

    .line 184
    :cond_6
    throw p1
    .line 185
.end method

.method public setFocusableViewAvailableFixEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/NonOverlappingLinearLayout;->mFocusableViewAvailableFixEnabled:Z

    .line 2
    return-void
    .line 4
.end method

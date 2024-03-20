.class public Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView;
.super Lmiuix/miuixbasewidget/widget/FilterSortView2;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mContentHeight:I

.field public mTextStyleMap:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getDefaultTabTextStyle()I
    .locals 0

    .line 1
    const p0, 0x7f040041    # @attr/actionBarTabTextSecondaryStyle

    .line 2
    return p0
    .line 5
.end method

.method public getTabContainerHeight()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
    .line 3
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView;->mContentHeight:I

    .line 2
    const/4 v1, -0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    const/high16 p2, 0x40000000    # 2.0f

    .line 7
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 9
    move-result p2

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 13
    return-void
    .line 16
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setBadgeVisibility(IZ)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabCount()I

    .line 2
    move-result v0

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 9
    move-result-object p0

    .line 12
    instance-of p1, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;

    .line 13
    if-eqz p1, :cond_11

    .line 15
    check-cast p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;

    .line 17
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;->mBadgeNeeded:Z

    .line 19
    if-eqz p2, :cond_10

    .line 21
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 23
    if-eqz p1, :cond_11

    .line 25
    iget p2, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    .line 27
    const/4 v0, 0x3

    .line 29
    const/4 v1, 0x2

    .line 30
    const-string v2, "BadgeDrawable"

    .line 31
    if-ltz p2, :cond_1

    .line 33
    if-gt p2, v0, :cond_1

    .line 35
    iput p2, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const-string p2, "set invalid gravity value."

    .line 40
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput v1, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    .line 45
    :goto_0
    const/4 p2, 0x0

    .line 47
    iget-object v3, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    if-nez v3, :cond_2

    .line 50
    const-string v0, "can not find badge drawable resource."

    .line 52
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    .line 57
    goto/16 :goto_7

    .line 58
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    .line 60
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 62
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 69
    move-result v5

    .line 72
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 77
    move-result v6

    .line 80
    invoke-virtual {p0, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 84
    move-result v7

    .line 87
    const/4 v8, 0x1

    .line 88
    if-ne v7, v8, :cond_3

    .line 89
    move v7, v8

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    move v7, p2

    .line 93
    :goto_1
    iget v9, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    .line 94
    if-eqz v9, :cond_9

    .line 96
    if-eq v9, v8, :cond_4

    .line 98
    if-eq v9, v1, :cond_9

    .line 100
    if-eq v9, v0, :cond_4

    .line 102
    const-string v0, "invalid gravity value."

    .line 104
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    move v0, p2

    .line 109
    move v1, v0

    .line 110
    move v5, v1

    .line 111
    move v6, v5

    .line 112
    goto :goto_6

    .line 113
    :cond_4
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 114
    sub-int/2addr v1, v6

    .line 116
    add-int/2addr v6, v1

    .line 117
    if-nez v7, :cond_5

    .line 118
    if-eq v9, v8, :cond_7

    .line 120
    :cond_5
    if-eqz v7, :cond_6

    .line 122
    if-ne v9, v0, :cond_6

    .line 124
    goto :goto_2

    .line 126
    :cond_6
    move v8, p2

    .line 127
    :cond_7
    :goto_2
    if-eqz v8, :cond_8

    .line 128
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 130
    goto :goto_5

    .line 132
    :cond_8
    iget v0, v4, Landroid/graphics/Rect;->right:I

    .line 133
    sub-int/2addr v0, v5

    .line 135
    goto :goto_5

    .line 136
    :cond_9
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 137
    add-int/2addr v6, v0

    .line 139
    if-nez v7, :cond_a

    .line 140
    if-eqz v9, :cond_c

    .line 142
    :cond_a
    if-eqz v7, :cond_b

    .line 144
    if-ne v9, v1, :cond_b

    .line 146
    goto :goto_3

    .line 148
    :cond_b
    move v8, p2

    .line 149
    :cond_c
    :goto_3
    if-eqz v8, :cond_d

    .line 150
    iget v1, v4, Landroid/graphics/Rect;->left:I

    .line 152
    goto :goto_4

    .line 154
    :cond_d
    iget v1, v4, Landroid/graphics/Rect;->right:I

    .line 155
    sub-int/2addr v1, v5

    .line 157
    :goto_4
    move v10, v1

    .line 158
    move v1, v0

    .line 159
    move v0, v10

    .line 160
    :goto_5
    add-int/2addr v5, v0

    .line 161
    :goto_6
    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 162
    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 164
    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 166
    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 168
    move-object v0, v4

    .line 170
    :goto_7
    if-nez v0, :cond_e

    .line 171
    const-string p0, "attach failed."

    .line 173
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    goto :goto_8

    .line 178
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 179
    move-result-object v1

    .line 182
    check-cast v1, Landroid/view/ViewGroup;

    .line 183
    if-eqz v1, :cond_f

    .line 185
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 187
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 190
    :cond_f
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 196
    move-result-object p2

    .line 199
    invoke-virtual {p2, v3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iput-object p0, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    .line 203
    goto :goto_8

    .line 205
    :cond_10
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 206
    if-eqz p0, :cond_11

    .line 208
    iget-object p0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    .line 210
    if-eqz p0, :cond_11

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 214
    move-result-object p0

    .line 217
    invoke-virtual {p0}, Landroid/view/ViewOverlay;->clear()V

    .line 218
    :cond_11
    :goto_8
    return-void
    .line 221
.end method

.method public setTabBadgeDisappearOnClick(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabCount()I

    .line 2
    move-result p2

    .line 5
    if-lt p1, p2, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 9
    move-result-object p0

    .line 12
    instance-of p1, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    check-cast p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;

    .line 17
    sget p1, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;->$r8$clinit:I

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    :cond_1
    return-void
    .line 24
.end method

.method public setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    if-le p1, v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 11
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getTextView()Landroid/widget/TextView;

    .line 17
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 23
    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 26
    :cond_1
    return-void
    .line 29
.end method

.method public setTabSelected(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setFilteredTab(I)V

    .line 2
    return-void
    .line 5
.end method

.method public setTextAppearance(II)V
    .locals 1

    .line 1
    if-ltz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabCount()I

    .line 4
    move-result v0

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->getTabViewAt(I)Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 11
    move-result-object p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getTextView()Landroid/widget/TextView;

    .line 17
    move-result-object p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView;->mTextStyleMap:Ljava/util/WeakHashMap;

    .line 23
    if-nez v0, :cond_1

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    .line 27
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 29
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView;->mTextStyleMap:Ljava/util/WeakHashMap;

    .line 32
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView;->mTextStyleMap:Ljava/util/WeakHashMap;

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 47
    :cond_2
    :goto_0
    return-void
    .line 50
.end method

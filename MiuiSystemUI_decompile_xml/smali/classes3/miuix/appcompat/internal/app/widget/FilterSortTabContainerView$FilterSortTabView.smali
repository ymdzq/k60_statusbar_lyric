.class public Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;
.super Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

.field public mBadgeNeeded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;->mBadgeNeeded:Z

    .line 5
    new-instance p2, Lmiuix/appcompat/widget/BadgeDrawable;

    invoke-direct {p2, p1}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    return-void
.end method


# virtual methods
.method public getTab()Landroidx/appcompat/app/ActionBar$Tab;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getTabLayoutResource()I
    .locals 0

    .line 1
    const p0, 0x7f0d01e0    # @layout/miuix_appcompat_action_bar_secondary_tab_view 'res/layout/miuix_appcompat_action_bar_secondary_tab_view.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getTextView()Landroid/widget/TextView;

    .line 5
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getIconView()Landroid/widget/ImageView;

    .line 12
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    throw v0

    .line 19
    :cond_1
    throw v0
    .line 20
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;->mBadgeNeeded:Z

    .line 5
    if-eqz p1, :cond_f

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 9
    if-eqz p1, :cond_10

    .line 11
    iget v0, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    .line 13
    const/4 v1, 0x3

    .line 15
    const/4 v2, 0x2

    .line 16
    const-string v3, "BadgeDrawable"

    .line 17
    if-ltz v0, :cond_0

    .line 19
    if-gt v0, v1, :cond_0

    .line 21
    iput v0, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "set invalid gravity value."

    .line 26
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput v2, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    .line 31
    :goto_0
    const/4 v0, 0x0

    .line 33
    iget-object v4, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    if-nez v4, :cond_1

    .line 36
    const-string v1, "can not find badge drawable resource."

    .line 38
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v1, 0x0

    .line 43
    goto/16 :goto_7

    .line 44
    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    .line 46
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 48
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 51
    move-result-object v6

    .line 54
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 55
    move-result v6

    .line 58
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object v7

    .line 62
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 63
    move-result v7

    .line 66
    invoke-virtual {p0, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 70
    move-result v8

    .line 73
    const/4 v9, 0x1

    .line 74
    if-ne v8, v9, :cond_2

    .line 75
    move v8, v9

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v8, v0

    .line 79
    :goto_1
    iget v10, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mGravity:I

    .line 80
    if-eqz v10, :cond_8

    .line 82
    if-eq v10, v9, :cond_3

    .line 84
    if-eq v10, v2, :cond_8

    .line 86
    if-eq v10, v1, :cond_3

    .line 88
    const-string v1, "invalid gravity value."

    .line 90
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    move v1, v0

    .line 95
    move v2, v1

    .line 96
    move v6, v2

    .line 97
    move v7, v6

    .line 98
    goto :goto_6

    .line 99
    :cond_3
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 100
    sub-int/2addr v2, v7

    .line 102
    add-int/2addr v7, v2

    .line 103
    if-nez v8, :cond_4

    .line 104
    if-eq v10, v9, :cond_6

    .line 106
    :cond_4
    if-eqz v8, :cond_5

    .line 108
    if-ne v10, v1, :cond_5

    .line 110
    goto :goto_2

    .line 112
    :cond_5
    move v9, v0

    .line 113
    :cond_6
    :goto_2
    if-eqz v9, :cond_7

    .line 114
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 116
    goto :goto_5

    .line 118
    :cond_7
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 119
    sub-int/2addr v1, v6

    .line 121
    goto :goto_5

    .line 122
    :cond_8
    iget v1, v5, Landroid/graphics/Rect;->top:I

    .line 123
    add-int/2addr v7, v1

    .line 125
    if-nez v8, :cond_9

    .line 126
    if-eqz v10, :cond_b

    .line 128
    :cond_9
    if-eqz v8, :cond_a

    .line 130
    if-ne v10, v2, :cond_a

    .line 132
    goto :goto_3

    .line 134
    :cond_a
    move v9, v0

    .line 135
    :cond_b
    :goto_3
    if-eqz v9, :cond_c

    .line 136
    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 138
    goto :goto_4

    .line 140
    :cond_c
    iget v2, v5, Landroid/graphics/Rect;->right:I

    .line 141
    sub-int/2addr v2, v6

    .line 143
    :goto_4
    move v11, v2

    .line 144
    move v2, v1

    .line 145
    move v1, v11

    .line 146
    :goto_5
    add-int/2addr v6, v1

    .line 147
    :goto_6
    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 148
    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 150
    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 152
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 154
    move-object v1, v5

    .line 156
    :goto_7
    if-nez v1, :cond_d

    .line 157
    const-string p0, "attach failed."

    .line 159
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    goto :goto_8

    .line 164
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 165
    move-result-object v2

    .line 168
    check-cast v2, Landroid/view/ViewGroup;

    .line 169
    if-eqz v2, :cond_e

    .line 171
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 173
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 176
    :cond_e
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 182
    move-result-object v0

    .line 185
    invoke-virtual {v0, v4}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iput-object p0, p1, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    .line 189
    goto :goto_8

    .line 191
    :cond_f
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView$FilterSortTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    .line 192
    if-eqz p0, :cond_10

    .line 194
    iget-object p0, p0, Lmiuix/appcompat/widget/BadgeDrawable;->mAnchor:Landroid/view/View;

    .line 196
    if-eqz p0, :cond_10

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 200
    move-result-object p0

    .line 203
    invoke-virtual {p0}, Landroid/view/ViewOverlay;->clear()V

    .line 204
    :cond_10
    :goto_8
    return-void
    .line 207
.end method

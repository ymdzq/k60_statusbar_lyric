.class public final Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public final items:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

.field public updateSuspended:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
    .line 3
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 8
    instance-of p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_0
    instance-of p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    .line 16
    if-eqz p1, :cond_1

    .line 18
    const/4 p0, 0x3

    .line 20
    return p0

    .line 21
    :cond_1
    instance-of p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 22
    if-eqz p1, :cond_3

    .line 24
    check-cast p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 26
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->menuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 28
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 40
    const-string p1, "Unknown item type."

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
    .line 47
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    iget-object v4, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 14
    if-eqz v0, :cond_5

    .line 16
    if-eq v0, v3, :cond_2

    .line 18
    const/4 v2, 0x2

    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    const/4 v1, 0x3

    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    goto/16 :goto_2

    .line 26
    :cond_0
    new-instance v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;

    .line 28
    invoke-direct {v0, p0, p2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;-><init>(Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;IZ)V

    .line 30
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 33
    goto/16 :goto_2

    .line 36
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 41
    check-cast p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 42
    iget p2, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->dividerInsetStart:I

    .line 44
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingTop:I

    .line 46
    iget v1, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->dividerInsetEnd:I

    .line 48
    iget p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingBottom:I

    .line 50
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    goto/16 :goto_2

    .line 55
    :cond_2
    check-cast p1, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 63
    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->menuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 65
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget v0, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->subheaderTextAppearance:I

    .line 72
    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 76
    :cond_3
    iget v0, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->subheaderInsetStart:I

    .line 79
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    .line 81
    move-result v1

    .line 84
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 85
    move-result v5

    .line 88
    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 89
    iget-object v0, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->subheaderColor:Landroid/content/res/ColorStateList;

    .line 92
    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 96
    :cond_4
    new-instance v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;

    .line 99
    invoke-direct {v0, p0, p2, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;-><init>(Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;IZ)V

    .line 101
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 104
    goto/16 :goto_2

    .line 107
    :cond_5
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 109
    iget-object v0, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    .line 111
    iput-object v0, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->iconTintList:Landroid/content/res/ColorStateList;

    .line 113
    if-eqz v0, :cond_6

    .line 115
    goto :goto_0

    .line 117
    :cond_6
    move v3, v2

    .line 118
    :goto_0
    iput-boolean v3, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->hasIconTintList:Z

    .line 119
    iget-object v0, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 121
    if-eqz v0, :cond_7

    .line 123
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 125
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_7
    iget v0, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearance:I

    .line 132
    if-eqz v0, :cond_8

    .line 134
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 136
    :cond_8
    iget-object v0, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    .line 139
    if-eqz v0, :cond_9

    .line 141
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 143
    :cond_9
    iget-object v0, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    .line 146
    if-eqz v0, :cond_a

    .line 148
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 150
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 154
    move-result-object v0

    .line 157
    goto :goto_1

    .line 158
    :cond_a
    const/4 v0, 0x0

    .line 159
    :goto_1
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 160
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v0, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemForeground:Landroid/graphics/drawable/RippleDrawable;

    .line 165
    if-eqz v0, :cond_b

    .line 167
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 169
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 173
    move-result-object v0

    .line 176
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_b
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    move-result-object v0

    .line 183
    check-cast v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 184
    iget-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 186
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 188
    iget v1, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    .line 191
    iget v3, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemVerticalPadding:I

    .line 193
    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 195
    iget v1, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconPadding:I

    .line 198
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 200
    iget-boolean v1, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->hasCustomItemIconSize:Z

    .line 203
    if-eqz v1, :cond_c

    .line 205
    iget v1, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconSize:I

    .line 207
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    .line 209
    :cond_c
    iget v1, v4, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemMaxLines:I

    .line 212
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setMaxLines(I)V

    .line 214
    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->menuItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 217
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 219
    new-instance v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;

    .line 222
    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;-><init>(Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;IZ)V

    .line 224
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 227
    :goto_2
    return-void
    .line 230
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 2
    if-eqz p1, :cond_3

    .line 4
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p1, v1, :cond_2

    .line 8
    if-eq p1, v0, :cond_1

    .line 10
    const/4 p2, 0x3

    .line 12
    if-eq p1, p2, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance p1, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;

    .line 17
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 19
    invoke-direct {p1, p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;

    .line 25
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 27
    invoke-direct {p1, v1, p0, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(ILandroid/view/LayoutInflater;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_2
    new-instance p1, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;

    .line 33
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 35
    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(ILandroid/view/LayoutInflater;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 37
    goto :goto_0

    .line 40
    :cond_3
    new-instance p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;

    .line 41
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 43
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter;->onClickListener:Lcom/google/android/material/internal/NavigationMenuPresenter$1;

    .line 45
    invoke-direct {p1, v0, p2, p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/internal/NavigationMenuPresenter$1;)V

    .line 47
    :goto_0
    move-object p0, p1

    .line 50
    :goto_1
    return-object p0
    .line 51
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    .line 2
    instance-of p0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;

    .line 4
    if-eqz p0, :cond_1

    .line 6
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    check-cast p0, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 10
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->actionArea:Landroid/widget/FrameLayout;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->textView:Landroid/widget/CheckedTextView;

    .line 19
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method public final prepareMenuItems()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 10
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    new-instance v3, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    .line 17
    invoke-direct {v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>()V

    .line 19
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v3, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 25
    iget-object v4, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 27
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 29
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v4

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, -0x1

    .line 38
    move v7, v5

    .line 39
    move v8, v7

    .line 40
    move v9, v8

    .line 41
    :goto_0
    if-ge v7, v4, :cond_f

    .line 42
    iget-object v10, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 44
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 46
    move-result-object v10

    .line 49
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v10

    .line 53
    check-cast v10, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 54
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 56
    move-result v11

    .line 59
    if-eqz v11, :cond_1

    .line 60
    invoke-virtual {v0, v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 62
    :cond_1
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 65
    move-result v11

    .line 68
    if-eqz v11, :cond_2

    .line 69
    invoke-virtual {v10, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 71
    :cond_2
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 74
    move-result v11

    .line 77
    if-eqz v11, :cond_a

    .line 78
    iget-object v11, v10, Landroidx/appcompat/view/menu/MenuItemImpl;->mSubMenu:Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 80
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 82
    move-result v12

    .line 85
    if-eqz v12, :cond_9

    .line 86
    if-eqz v7, :cond_3

    .line 88
    new-instance v12, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 90
    iget v13, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    .line 92
    invoke-direct {v12, v13, v5}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    .line 94
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3
    new-instance v12, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 100
    invoke-direct {v12, v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 102
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 108
    move-result v12

    .line 111
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 112
    move-result v13

    .line 115
    move v14, v5

    .line 116
    move v15, v14

    .line 117
    :goto_1
    if-ge v14, v13, :cond_8

    .line 118
    invoke-virtual {v11, v14}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 120
    move-result-object v16

    .line 123
    move-object/from16 v1, v16

    .line 124
    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 126
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    .line 128
    move-result v16

    .line 131
    if-eqz v16, :cond_7

    .line 132
    if-nez v15, :cond_4

    .line 134
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 136
    move-result-object v16

    .line 139
    if-eqz v16, :cond_4

    .line 140
    const/4 v15, 0x1

    .line 142
    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 143
    move-result v16

    .line 146
    if-eqz v16, :cond_5

    .line 147
    invoke-virtual {v1, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 149
    :cond_5
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 152
    move-result v16

    .line 155
    if-eqz v16, :cond_6

    .line 156
    invoke-virtual {v0, v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 158
    :cond_6
    new-instance v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 161
    invoke-direct {v5, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 163
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 169
    const/4 v1, 0x1

    .line 171
    const/4 v5, 0x0

    .line 172
    goto :goto_1

    .line 173
    :cond_8
    if-eqz v15, :cond_9

    .line 174
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 176
    move-result v1

    .line 179
    :goto_2
    if-ge v12, v1, :cond_9

    .line 180
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    move-result-object v5

    .line 185
    check-cast v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 186
    const/4 v10, 0x1

    .line 188
    iput-boolean v10, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 189
    add-int/lit8 v12, v12, 0x1

    .line 191
    goto :goto_2

    .line 193
    :cond_9
    const/4 v11, 0x1

    .line 194
    goto :goto_6

    .line 195
    :cond_a
    iget v1, v10, Landroidx/appcompat/view/menu/MenuItemImpl;->mGroup:I

    .line 196
    if-eq v1, v6, :cond_d

    .line 198
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 200
    move-result v9

    .line 203
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 204
    move-result-object v5

    .line 207
    if-eqz v5, :cond_b

    .line 208
    const/4 v8, 0x1

    .line 210
    goto :goto_3

    .line 211
    :cond_b
    const/4 v8, 0x0

    .line 212
    :goto_3
    if-eqz v7, :cond_c

    .line 213
    add-int/lit8 v9, v9, 0x1

    .line 215
    new-instance v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 217
    iget v6, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    .line 219
    invoke-direct {v5, v6, v6}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    .line 221
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_c
    const/4 v11, 0x1

    .line 227
    goto :goto_5

    .line 228
    :cond_d
    if-nez v8, :cond_c

    .line 229
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 231
    move-result-object v5

    .line 234
    if-eqz v5, :cond_c

    .line 235
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 237
    move-result v5

    .line 240
    move v6, v9

    .line 241
    :goto_4
    if-ge v6, v5, :cond_e

    .line 242
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    move-result-object v8

    .line 247
    check-cast v8, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 248
    const/4 v11, 0x1

    .line 250
    iput-boolean v11, v8, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 251
    add-int/lit8 v6, v6, 0x1

    .line 253
    goto :goto_4

    .line 255
    :cond_e
    const/4 v11, 0x1

    .line 256
    move v8, v11

    .line 257
    :goto_5
    new-instance v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 258
    invoke-direct {v5, v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 260
    iput-boolean v8, v5, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 263
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    move v6, v1

    .line 268
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 269
    move v1, v11

    .line 271
    const/4 v5, 0x0

    .line 272
    goto/16 :goto_0

    .line 273
    :cond_f
    move v1, v5

    .line 275
    iput-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 276
    return-void
    .line 278
.end method

.method public final setCheckedItem(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2
    if-eq v0, p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 18
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 21
    const/4 p0, 0x1

    .line 23
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 24
    :cond_2
    :goto_0
    return-void
    .line 27
.end method

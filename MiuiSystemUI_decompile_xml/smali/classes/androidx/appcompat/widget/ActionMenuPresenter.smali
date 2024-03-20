.class public final Landroidx/appcompat/widget/ActionMenuPresenter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# instance fields
.field public final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field public mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

.field public mActionItemWidthLimit:I

.field public mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public mContext:Landroid/content/Context;

.field public mExpandedActionViewsExclusive:Z

.field public mId:I

.field public final mItemLayoutRes:I

.field public mMaxItems:I

.field public mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public final mMenuLayoutRes:I

.field public mMenuView:Landroidx/appcompat/view/menu/MenuView;

.field public mOpenSubMenuId:I

.field public mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

.field public mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

.field public mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field public mPendingOverflowIconSet:Z

.field public mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field public final mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

.field public mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field public mReserveOverflow:Z

.field public mReserveOverflowSet:Z

.field public final mSystemContext:Landroid/content/Context;

.field public final mSystemInflater:Landroid/view/LayoutInflater;

.field public mWidthLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 11
    const p1, 0x7f0d0003    # @layout/abc_action_menu_layout 'res/layout/abc_action_menu_layout.xml'

    .line 13
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuLayoutRes:I

    .line 16
    const p1, 0x7f0d0002    # @layout/abc_action_menu_item_layout 'res/layout/abc_action_menu_item_layout.xml'

    .line 18
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mItemLayoutRes:I

    .line 21
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 23
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 25
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 28
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 30
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 32
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 35
    return-void
    .line 37
.end method


# virtual methods
.method public final bridge synthetic collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final bridge synthetic expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final flagActionItems()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v2

    .line 19
    move v4, v3

    .line 20
    :goto_0
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    .line 21
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 23
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 25
    move-result v7

    .line 28
    iget-object v8, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 29
    check-cast v8, Landroid/view/ViewGroup;

    .line 31
    move v9, v3

    .line 33
    move v10, v9

    .line 34
    move v11, v10

    .line 35
    move v12, v11

    .line 36
    :goto_1
    const/4 v13, 0x1

    .line 37
    if-ge v9, v4, :cond_5

    .line 38
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v14

    .line 43
    check-cast v14, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 44
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    .line 46
    move-result v15

    .line 49
    if-eqz v15, :cond_1

    .line 50
    add-int/lit8 v11, v11, 0x1

    .line 52
    goto :goto_3

    .line 54
    :cond_1
    iget v15, v14, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 55
    and-int/2addr v15, v13

    .line 57
    if-ne v15, v13, :cond_2

    .line 58
    move v15, v13

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v15, v3

    .line 62
    :goto_2
    if-eqz v15, :cond_3

    .line 63
    add-int/lit8 v12, v12, 0x1

    .line 65
    goto :goto_3

    .line 67
    :cond_3
    move v10, v13

    .line 68
    :goto_3
    iget-boolean v13, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 69
    if-eqz v13, :cond_4

    .line 71
    iget-boolean v13, v14, Landroidx/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 73
    if-eqz v13, :cond_4

    .line 75
    move v5, v3

    .line 77
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 78
    goto :goto_1

    .line 80
    :cond_5
    iget-boolean v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 81
    if-eqz v9, :cond_7

    .line 83
    if-nez v10, :cond_6

    .line 85
    add-int/2addr v12, v11

    .line 87
    if-le v12, v5, :cond_7

    .line 88
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 90
    :cond_7
    sub-int/2addr v5, v11

    .line 92
    iget-object v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 93
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    .line 95
    move v10, v3

    .line 98
    move v11, v10

    .line 99
    :goto_4
    if-ge v10, v4, :cond_17

    .line 100
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v12

    .line 105
    check-cast v12, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 106
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresActionButton()Z

    .line 108
    move-result v14

    .line 111
    if-eqz v14, :cond_a

    .line 112
    invoke-virtual {v0, v12, v2, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 114
    move-result-object v14

    .line 117
    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    .line 118
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 121
    move-result v14

    .line 124
    sub-int/2addr v6, v14

    .line 125
    if-nez v11, :cond_8

    .line 126
    move v11, v14

    .line 128
    :cond_8
    iget v14, v12, Landroidx/appcompat/view/menu/MenuItemImpl;->mGroup:I

    .line 129
    if-eqz v14, :cond_9

    .line 131
    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 133
    :cond_9
    invoke-virtual {v12, v13}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 136
    move v2, v3

    .line 139
    goto/16 :goto_a

    .line 140
    :cond_a
    iget v14, v12, Landroidx/appcompat/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 142
    and-int/2addr v14, v13

    .line 144
    if-ne v14, v13, :cond_b

    .line 145
    move v14, v13

    .line 147
    goto :goto_5

    .line 148
    :cond_b
    move v14, v3

    .line 149
    :goto_5
    if-eqz v14, :cond_16

    .line 150
    iget v14, v12, Landroidx/appcompat/view/menu/MenuItemImpl;->mGroup:I

    .line 152
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 154
    move-result v15

    .line 157
    if-gtz v5, :cond_c

    .line 158
    if-eqz v15, :cond_d

    .line 160
    :cond_c
    if-lez v6, :cond_d

    .line 162
    move/from16 v16, v13

    .line 164
    goto :goto_6

    .line 166
    :cond_d
    move/from16 v16, v3

    .line 167
    :goto_6
    if-eqz v16, :cond_10

    .line 169
    invoke-virtual {v0, v12, v2, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 171
    move-result-object v3

    .line 174
    invoke-virtual {v3, v7, v7}, Landroid/view/View;->measure(II)V

    .line 175
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 178
    move-result v3

    .line 181
    sub-int/2addr v6, v3

    .line 182
    if-nez v11, :cond_e

    .line 183
    move v11, v3

    .line 185
    :cond_e
    add-int v3, v6, v11

    .line 186
    if-lez v3, :cond_f

    .line 188
    move v3, v13

    .line 190
    goto :goto_7

    .line 191
    :cond_f
    const/4 v3, 0x0

    .line 192
    :goto_7
    and-int v16, v16, v3

    .line 193
    :cond_10
    move/from16 v3, v16

    .line 195
    if-eqz v3, :cond_11

    .line 197
    if-eqz v14, :cond_11

    .line 199
    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 201
    goto :goto_9

    .line 204
    :cond_11
    if-eqz v15, :cond_14

    .line 205
    const/4 v15, 0x0

    .line 207
    invoke-virtual {v9, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 208
    const/4 v15, 0x0

    .line 211
    :goto_8
    if-ge v15, v10, :cond_14

    .line 212
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    move-result-object v16

    .line 217
    move-object/from16 v2, v16

    .line 218
    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 220
    iget v13, v2, Landroidx/appcompat/view/menu/MenuItemImpl;->mGroup:I

    .line 222
    if-ne v13, v14, :cond_13

    .line 224
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    .line 226
    move-result v13

    .line 229
    if-eqz v13, :cond_12

    .line 230
    add-int/lit8 v5, v5, 0x1

    .line 232
    :cond_12
    const/4 v13, 0x0

    .line 234
    invoke-virtual {v2, v13}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 235
    :cond_13
    add-int/lit8 v15, v15, 0x1

    .line 238
    const/4 v2, 0x0

    .line 240
    const/4 v13, 0x1

    .line 241
    goto :goto_8

    .line 242
    :cond_14
    :goto_9
    if-eqz v3, :cond_15

    .line 243
    add-int/lit8 v5, v5, -0x1

    .line 245
    :cond_15
    invoke-virtual {v12, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 247
    const/4 v2, 0x0

    .line 250
    goto :goto_a

    .line 251
    :cond_16
    move v2, v3

    .line 252
    invoke-virtual {v12, v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 253
    :goto_a
    add-int/lit8 v10, v10, 0x1

    .line 256
    move v3, v2

    .line 258
    const/4 v2, 0x0

    .line 259
    const/4 v13, 0x1

    .line 260
    goto/16 :goto_4

    .line 261
    :cond_17
    move v3, v13

    .line 263
    return v3
    .line 264
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mId:I

    .line 2
    return p0
    .line 4
.end method

.method public final getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    .line 9
    move-result v2

    .line 12
    if-eqz v2, :cond_3

    .line 13
    :cond_0
    instance-of v0, p2, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    check-cast p2, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    iget-object p2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 22
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mItemLayoutRes:I

    .line 24
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    move-result-object p2

    .line 29
    check-cast p2, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 30
    :goto_0
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 32
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 35
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 37
    move-object v2, p2

    .line 39
    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 40
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;)V

    .line 42
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 45
    if-nez v0, :cond_2

    .line 47
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 49
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 51
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 54
    :cond_2
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPopupCallback:Landroidx/appcompat/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 56
    invoke-virtual {v2, p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 58
    move-object v0, p2

    .line 61
    check-cast v0, Landroid/view/View;

    .line 62
    :cond_3
    iget-boolean p0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 64
    if-eqz p0, :cond_4

    .line 66
    const/16 v1, 0x8

    .line 68
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    move-result-object p0

    .line 78
    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 79
    move-result p1

    .line 82
    if-nez p1, :cond_5

    .line 83
    invoke-static {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    :cond_5
    return-object v0
    .line 92
.end method

.method public final hideOverflowMenu()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 7
    if-eqz v2, :cond_0

    .line 9
    check-cast v2, Landroid/view/View;

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 17
    return v1

    .line 19
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 20
    if-eqz p0, :cond_2

    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    .line 30
    invoke-interface {p0}, Landroidx/appcompat/view/menu/ShowableListMenu;->dismiss()V

    .line 32
    :cond_1
    return v1

    .line 35
    :cond_2
    const/4 p0, 0x0

    .line 36
    return p0
    .line 37
.end method

.method public final initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p2

    .line 12
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 13
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 28
    const/4 v1, 0x2

    .line 30
    div-int/2addr v0, v1

    .line 31
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 38
    move-result-object p1

    .line 41
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 42
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 44
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 46
    const/16 v3, 0x258

    .line 48
    if-gt p1, v3, :cond_6

    .line 50
    if-gt v0, v3, :cond_6

    .line 52
    const/16 p1, 0x2d0

    .line 54
    const/16 v3, 0x3c0

    .line 56
    if-le v0, v3, :cond_1

    .line 58
    if-gt v2, p1, :cond_6

    .line 60
    :cond_1
    if-le v0, p1, :cond_2

    .line 62
    if-le v2, v3, :cond_2

    .line 64
    goto :goto_1

    .line 66
    :cond_2
    const/16 p1, 0x1f4

    .line 67
    if-ge v0, p1, :cond_5

    .line 69
    const/16 p1, 0x1e0

    .line 71
    const/16 v3, 0x280

    .line 73
    if-le v0, v3, :cond_3

    .line 75
    if-gt v2, p1, :cond_5

    .line 77
    :cond_3
    if-le v0, p1, :cond_4

    .line 79
    if-le v2, v3, :cond_4

    .line 81
    goto :goto_0

    .line 83
    :cond_4
    const/16 p1, 0x168

    .line 84
    if-lt v0, p1, :cond_7

    .line 86
    const/4 v1, 0x3

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    :goto_0
    const/4 v1, 0x4

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    :goto_1
    const/4 v1, 0x5

    .line 92
    :cond_7
    :goto_2
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMaxItems:I

    .line 93
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 95
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 97
    const/4 v1, 0x0

    .line 99
    if-eqz v0, :cond_a

    .line 100
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 102
    if-nez v0, :cond_9

    .line 104
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 106
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 108
    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .line 110
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 113
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 115
    const/4 v3, 0x0

    .line 117
    if-eqz v2, :cond_8

    .line 118
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 125
    iput-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 127
    :cond_8
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 129
    move-result v0

    .line 132
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 133
    invoke-virtual {v1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 135
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 138
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 140
    move-result v0

    .line 143
    sub-int/2addr p1, v0

    .line 144
    goto :goto_3

    .line 145
    :cond_a
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 146
    :goto_3
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 148
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 150
    move-result-object p0

    .line 153
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 154
    return-void
    .line 156
.end method

.method public final isOverflowMenuShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    .line 15
    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->dismiss()V

    .line 17
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 20
    if-eqz p0, :cond_1

    .line 22
    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 24
    :cond_1
    return-void
    .line 27
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    .line 7
    iget p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 9
    if-lez p1, :cond_1

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 13
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 15
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 25
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    .line 27
    :cond_1
    return-void
    .line 30
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    .line 2
    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 4
    iget p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 7
    iput p0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 9
    return-object v0
    .line 11
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

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
    move-object v0, p1

    .line 10
    :goto_0
    iget-object v2, v0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 11
    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 13
    if-eq v2, v3, :cond_1

    .line 15
    move-object v0, v2

    .line 17
    check-cast v0, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, v0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 21
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 23
    check-cast v2, Landroid/view/ViewGroup;

    .line 25
    if-nez v2, :cond_2

    .line 27
    goto :goto_2

    .line 29
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    move-result v3

    .line 33
    move v4, v1

    .line 34
    :goto_1
    if-ge v4, v3, :cond_4

    .line 35
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    move-result-object v5

    .line 40
    instance-of v6, v5, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 41
    if-eqz v6, :cond_3

    .line 43
    move-object v6, v5

    .line 45
    check-cast v6, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 46
    invoke-interface {v6}, Landroidx/appcompat/view/menu/MenuView$ItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 48
    move-result-object v6

    .line 51
    if-ne v6, v0, :cond_3

    .line 52
    goto :goto_3

    .line 54
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 55
    goto :goto_1

    .line 57
    :cond_4
    :goto_2
    const/4 v5, 0x0

    .line 58
    :goto_3
    if-nez v5, :cond_5

    .line 59
    return v1

    .line 61
    :cond_5
    iget-object v0, p1, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 62
    iget v0, v0, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    .line 64
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 66
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    .line 68
    move-result v0

    .line 71
    move v2, v1

    .line 72
    :goto_4
    const/4 v3, 0x1

    .line 73
    if-ge v2, v0, :cond_7

    .line 74
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 76
    move-result-object v4

    .line 79
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    .line 80
    move-result v6

    .line 83
    if-eqz v6, :cond_6

    .line 84
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object v4

    .line 89
    if-eqz v4, :cond_6

    .line 90
    move v0, v3

    .line 92
    goto :goto_5

    .line 93
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 94
    goto :goto_4

    .line 96
    :cond_7
    move v0, v1

    .line 97
    :goto_5
    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 98
    iget-object v4, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {v2, p0, v4, p1, v5}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/SubMenuBuilder;Landroid/view/View;)V

    .line 102
    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 105
    iput-boolean v0, v2, Landroidx/appcompat/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 107
    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    .line 109
    if-eqz v2, :cond_8

    .line 111
    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 113
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 116
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 118
    move-result v2

    .line 121
    if-eqz v2, :cond_9

    .line 122
    :goto_6
    move v1, v3

    .line 124
    goto :goto_7

    .line 125
    :cond_9
    iget-object v2, v0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 126
    if-nez v2, :cond_a

    .line 128
    goto :goto_7

    .line 130
    :cond_a
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 131
    goto :goto_6

    .line 134
    :goto_7
    if-eqz v1, :cond_c

    .line 135
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 137
    if-eqz p0, :cond_b

    .line 139
    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    .line 141
    :cond_b
    return v3

    .line 144
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 145
    const-string p1, "MenuPopupHelper cannot be used without an anchor"

    .line 147
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    throw p0
    .line 152
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2
    return-void
    .line 4
.end method

.method public final showOverflowMenu()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 20
    if-nez v1, :cond_0

    .line 22
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 24
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 35
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 37
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 39
    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 41
    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;)V

    .line 43
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 46
    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;)V

    .line 48
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 51
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 53
    check-cast p0, Landroid/view/View;

    .line 55
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_0
    const/4 p0, 0x0

    .line 62
    return p0
    .line 63
.end method

.method public final updateMenuView(Z)V
    .locals 11

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    goto/16 :goto_4

    .line 11
    :cond_0
    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 13
    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 17
    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 20
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 22
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v4

    .line 29
    move v5, v1

    .line 30
    move v6, v5

    .line 31
    :goto_0
    if-ge v5, v4, :cond_7

    .line 32
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v7

    .line 37
    check-cast v7, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 38
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    .line 40
    move-result v8

    .line 43
    if-eqz v8, :cond_5

    .line 44
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object v8

    .line 49
    instance-of v9, v8, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 50
    if-eqz v9, :cond_1

    .line 52
    move-object v9, v8

    .line 54
    check-cast v9, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 55
    invoke-interface {v9}, Landroidx/appcompat/view/menu/MenuView$ItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 57
    move-result-object v9

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v9, v0

    .line 62
    :goto_1
    invoke-virtual {p0, v7, v8, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->getItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    move-result-object v10

    .line 66
    if-eq v7, v9, :cond_2

    .line 67
    invoke-virtual {v10, v1}, Landroid/view/View;->setPressed(Z)V

    .line 69
    invoke-virtual {v10}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 72
    :cond_2
    if-eq v10, v8, :cond_4

    .line 75
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 77
    move-result-object v7

    .line 80
    check-cast v7, Landroid/view/ViewGroup;

    .line 81
    if-eqz v7, :cond_3

    .line 83
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 85
    :cond_3
    iget-object v7, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 88
    check-cast v7, Landroid/view/ViewGroup;

    .line 90
    invoke-virtual {v7, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 92
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 95
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 97
    goto :goto_0

    .line 99
    :cond_6
    move v6, v1

    .line 100
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 101
    move-result v3

    .line 104
    if-ge v6, v3, :cond_9

    .line 105
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 107
    move-result-object v3

    .line 110
    iget-object v4, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 111
    if-ne v3, v4, :cond_8

    .line 113
    move v3, v1

    .line 115
    goto :goto_3

    .line 116
    :cond_8
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 117
    move v3, v2

    .line 120
    :goto_3
    if-nez v3, :cond_7

    .line 121
    add-int/lit8 v6, v6, 0x1

    .line 123
    goto :goto_2

    .line 125
    :cond_9
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 126
    check-cast p1, Landroid/view/View;

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 130
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 133
    if-eqz p1, :cond_b

    .line 135
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 137
    iget-object p1, p1, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 142
    move-result v3

    .line 145
    move v4, v1

    .line 146
    :goto_5
    if-ge v4, v3, :cond_b

    .line 147
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v5

    .line 152
    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 153
    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mActionProvider:Landroidx/core/view/ActionProvider;

    .line 155
    if-eqz v5, :cond_a

    .line 157
    iput-object p0, v5, Landroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 159
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 161
    goto :goto_5

    .line 163
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 164
    if-eqz p1, :cond_c

    .line 166
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 168
    iget-object v0, p1, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 171
    :cond_c
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 173
    if-eqz p1, :cond_e

    .line 175
    if-eqz v0, :cond_e

    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 179
    move-result p1

    .line 182
    if-ne p1, v2, :cond_d

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    move-result-object p1

    .line 188
    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 189
    iget-boolean p1, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 191
    xor-int/lit8 v1, p1, 0x1

    .line 193
    goto :goto_6

    .line 195
    :cond_d
    if-lez p1, :cond_e

    .line 196
    move v1, v2

    .line 198
    :cond_e
    :goto_6
    if-eqz v1, :cond_11

    .line 199
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 201
    if-nez p1, :cond_f

    .line 203
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 205
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 207
    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .line 209
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 212
    :cond_f
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 214
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    .line 216
    move-result-object p1

    .line 219
    check-cast p1, Landroid/view/ViewGroup;

    .line 220
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 222
    if-eq p1, v0, :cond_12

    .line 224
    if-eqz p1, :cond_10

    .line 226
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    :cond_10
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 233
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 235
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 242
    invoke-direct {v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>()V

    .line 244
    const/16 v3, 0x10

    .line 247
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 249
    iput-boolean v2, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 251
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    goto :goto_7

    .line 256
    :cond_11
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 257
    if-eqz p1, :cond_12

    .line 259
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    .line 261
    move-result-object p1

    .line 264
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 265
    if-ne p1, v0, :cond_12

    .line 267
    check-cast v0, Landroid/view/ViewGroup;

    .line 269
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 271
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 273
    :cond_12
    :goto_7
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 276
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 278
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 280
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 282
    return-void
    .line 285
.end method

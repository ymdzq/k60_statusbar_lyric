.class public final Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# instance fields
.field public mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 2
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 4
    instance-of v2, v1, Landroid/view/CollapsibleActionView;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    check-cast v1, Landroid/view/CollapsibleActionView;

    .line 10
    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 12
    :cond_0
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 26
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 28
    const/4 v3, 0x2

    .line 30
    and-int/2addr v2, v3

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v2, :cond_1

    .line 33
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 35
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 37
    :cond_1
    iget v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 40
    and-int/lit8 v2, v2, 0x8

    .line 42
    const/4 v5, 0x1

    .line 44
    if-eqz v2, :cond_3

    .line 45
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 47
    if-nez v2, :cond_2

    .line 49
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->initTitle()V

    .line 51
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0, v5}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 55
    :cond_3
    :goto_0
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 58
    if-eqz v2, :cond_4

    .line 60
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 62
    if-ne v6, v3, :cond_4

    .line 64
    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 66
    :cond_4
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 69
    if-eqz v2, :cond_5

    .line 71
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 73
    if-ne v6, v3, :cond_5

    .line 75
    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 77
    :cond_5
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView;

    .line 80
    if-eqz v2, :cond_6

    .line 82
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 84
    if-ne v6, v3, :cond_6

    .line 86
    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 88
    :cond_6
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView;

    .line 91
    if-eqz v2, :cond_7

    .line 93
    iget v6, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mNavigationMode:I

    .line 95
    if-ne v6, v3, :cond_7

    .line 97
    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 99
    :cond_7
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 102
    if-eqz v2, :cond_8

    .line 104
    iget v3, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mDisplayOptions:I

    .line 106
    and-int/lit8 v3, v3, 0x10

    .line 108
    if-eqz v3, :cond_8

    .line 110
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_8
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 115
    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 120
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 122
    iput-boolean v4, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 125
    iget-object p0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 127
    invoke-virtual {p0, v4}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 129
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    .line 132
    return v5
    .line 135
.end method

.method public final expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 6
    iput-object v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 8
    iget-object v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 10
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    iget-object v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    move-result-object v0

    .line 20
    iget v3, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeResId:I

    .line 21
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 27
    iput-object v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 29
    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    iget-object v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 36
    iget-object v3, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionViewUpListener:Lmiuix/appcompat/internal/app/widget/ActionBarView$6;

    .line 38
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :cond_0
    iget-object v0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 43
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 49
    move-result-object v3

    .line 52
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 57
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 64
    iget-object p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    move-result-object p0

    .line 71
    if-eq p0, v1, :cond_1

    .line 72
    iget-object p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 74
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_1
    iget-object p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 79
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 81
    move-result-object p0

    .line 84
    if-eq p0, v1, :cond_2

    .line 85
    iget-object p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 87
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_2
    iget-object p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mHomeLayout:Lmiuix/appcompat/internal/app/widget/ActionBarView$HomeView;

    .line 92
    const/16 v0, 0x8

    .line 94
    if-eqz p0, :cond_3

    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 98
    :cond_3
    iget-object p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTitle:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 101
    if-eqz p0, :cond_4

    .line 103
    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setTitleVisibility(Z)V

    .line 105
    :cond_4
    iget-object p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 108
    if-eqz p0, :cond_5

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 112
    :cond_5
    iget-object p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTabs:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    .line 115
    if-eqz p0, :cond_6

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 119
    :cond_6
    iget-object p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryCollapseTabs:Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView;

    .line 122
    if-eqz p0, :cond_7

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 126
    :cond_7
    iget-object p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mSecondaryExpandTabs:Lmiuix/appcompat/internal/app/widget/FilterSortTabContainerView;

    .line 129
    if-eqz p0, :cond_8

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 133
    :cond_8
    iget-object p0, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 136
    if-eqz p0, :cond_9

    .line 138
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 143
    const/4 p0, 0x1

    .line 146
    iput-boolean p0, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 147
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 149
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 151
    iget-object p1, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 154
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    .line 156
    if-eqz v0, :cond_a

    .line 158
    check-cast p1, Landroid/view/CollapsibleActionView;

    .line 160
    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 162
    :cond_a
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->updateBackInvokedCallbackState()V

    .line 165
    return p0
    .line 168
.end method

.method public final flagActionItems()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 10
    :cond_0
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 13
    return-void
    .line 15
.end method

.method public final onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final updateMenuView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 11
    move-result v0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_1

    .line 16
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 18
    invoke-virtual {v3, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 20
    move-result-object v3

    .line 23
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 24
    if-ne v3, v4, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 35
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 37
    :cond_2
    return-void
    .line 40
.end method

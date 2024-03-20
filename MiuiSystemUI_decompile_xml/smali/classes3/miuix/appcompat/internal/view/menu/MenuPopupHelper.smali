.class public Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# instance fields
.field public mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field public final mAnchorView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public mForceShowIcon:Z

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mMenuItemLayout:I

.field public final mOverflowOnly:Z

.field public mPopup:Lmiuix/internal/widget/ListPopup;

.field public mPopupHorizontalOffset:I

.field public mPopupVerticalOffset:I

.field public mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const v0, 0x7f0d020e    # @layout/miuix_appcompat_popup_menu_item_layout 'res/layout/miuix_appcompat_popup_menu_item_layout.xml'

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    .line 8
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    .line 11
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 19
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 21
    iput-boolean p4, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 23
    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 25
    invoke-virtual {p2, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p2

    .line 33
    const p3, 0x7f070b08    # @dimen/miuix_appcompat_menu_popup_vertical_offset '0.0dp'

    .line 34
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result p2

    .line 40
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object p1

    .line 46
    const p2, 0x7f070b06    # @dimen/miuix_appcompat_menu_popup_horizontal_offset '0.0dp'

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    move-result p1

    .line 53
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    .line 54
    return-void
    .line 56
.end method


# virtual methods
.method public final collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public dismiss(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->isShowing()Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 8
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
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
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final isShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

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

.method public final onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 8
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 11
    if-eqz p0, :cond_1

    .line 13
    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 15
    :cond_1
    return-void
    .line 18
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 3
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    .line 7
    return-void
    .line 10
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 6
    move-result-object p0

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p0, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 11
    return-void
    .line 14
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    const/16 p1, 0x52

    .line 10
    if-ne p2, p1, :cond_0

    .line 12
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 14
    return v0

    .line 17
    :cond_0
    return p3
    .line 18
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
    .locals 7

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 9
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 11
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 13
    invoke-direct {v0, v2, p1, v3, v1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 15
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 18
    iput-object v2, v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 20
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->size()I

    .line 22
    move-result v2

    .line 25
    move v3, v1

    .line 26
    :goto_0
    const/4 v4, 0x1

    .line 27
    if-ge v3, v2, :cond_1

    .line 28
    invoke-virtual {p1, v3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    .line 30
    move-result-object v5

    .line 33
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    .line 34
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 40
    move-result-object v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    move v1, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    iput-boolean v1, v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 51
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->tryShow()Z

    .line 53
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 56
    if-eqz p0, :cond_2

    .line 58
    invoke-interface {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    .line 60
    :cond_2
    return v4

    .line 63
    :cond_3
    return v1
    .line 64
.end method

.method public final tryShow()Z
    .locals 3

    .line 1
    new-instance v0, Lmiuix/internal/widget/ListPopup;

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 9
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 16
    const v2, 0x7f070b07    # @dimen/miuix_appcompat_menu_popup_max_height '577.77dp'

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 20
    move-result v1

    .line 23
    iput v1, v0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    .line 24
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 26
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, v0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    .line 29
    iput-object p0, v0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 31
    iput-object p0, v0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 33
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 35
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 37
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 39
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 42
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 44
    invoke-virtual {v1, v0}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 49
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    .line 51
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    .line 53
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 56
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    .line 58
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setVerticalOffset(I)V

    .line 60
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 63
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 65
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 70
    iget-object v0, v0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    .line 72
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 74
    const/4 p0, 0x1

    .line 77
    return p0
    .line 78
.end method

.method public final updateMenuView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAdapter:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 14
    const v1, 0x7f070b08    # @dimen/miuix_appcompat_menu_popup_vertical_offset '0.0dp'

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result v0

    .line 21
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v0

    .line 29
    const v1, 0x7f070b06    # @dimen/miuix_appcompat_menu_popup_horizontal_offset '0.0dp'

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v0

    .line 36
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    .line 37
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->isShowing()Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 45
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupHorizontalOffset:I

    .line 47
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 52
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    .line 54
    invoke-virtual {v0, v1}, Lmiuix/internal/widget/ListPopup;->setVerticalOffset(I)V

    .line 56
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPopup:Lmiuix/internal/widget/ListPopup;

    .line 59
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 61
    invoke-virtual {v0, p0}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;)V

    .line 63
    :cond_1
    return-void
    .line 66
.end method

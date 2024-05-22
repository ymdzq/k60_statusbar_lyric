.class public final Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field public mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

.field public mContext:Landroid/content/Context;

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mItemLayoutRes:I

.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public final mMenuLayout:I

.field public mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 5
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuLayout:I

    .line 7
    return-void
    .line 9
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
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 8
    if-nez v0, :cond_0

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    move-result-object p1

    .line 15
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 16
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 18
    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 22
    :cond_1
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 25
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 27
    if-eqz p0, :cond_2

    .line 29
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 31
    :cond_2
    return-void
    .line 34
.end method

.method public final onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 4
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

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

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    const-string v0, "miuix:menu:list"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 6
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 18
    if-eqz p0, :cond_1

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 22
    :cond_1
    const-string p0, "miuix:menu:list"

    .line 25
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 27
    return-object v0
    .line 30
.end method

.method public final onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 10
    invoke-direct {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 12
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 16
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 19
    if-eqz p0, :cond_1

    .line 21
    invoke-interface {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    .line 23
    :cond_1
    const/4 p0, 0x1

    .line 26
    return p0
    .line 27
.end method

.method public final updateMenuView()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

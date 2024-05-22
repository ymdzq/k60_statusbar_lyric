.class public final Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;


# instance fields
.field public mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final dismiss(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 4
    instance-of v0, p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 10
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 12
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->hideOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final isShowing()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 4
    instance-of v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    check-cast p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 11
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 13
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 15
    if-eq p0, v0, :cond_0

    .line 17
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 19
    if-ne p0, v0, :cond_1

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 23
    :cond_1
    return v1
    .line 24
.end method

.method public final tryShow()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 4
    instance-of v1, v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 10
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 12
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->showOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z

    .line 14
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
    .line 20
.end method

.method public final update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 2
    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 4
    instance-of v2, v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 6
    if-eqz v2, :cond_4

    .line 8
    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 10
    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 14
    iget-object v2, p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v2

    .line 22
    if-lez v2, :cond_3

    .line 23
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 25
    if-nez v2, :cond_0

    .line 27
    new-instance v2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 29
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mContext:Landroid/content/Context;

    .line 31
    iget v4, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListLayoutRes:I

    .line 33
    iget v5, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mListItemLayoutRes:I

    .line 35
    invoke-direct {v2, v4, v5}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;-><init>(II)V

    .line 37
    iput-object v3, v2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 42
    move-result-object v3

    .line 45
    iput-object v3, v2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 48
    :cond_0
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 50
    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 52
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$ListOverflowMenu;->mListMenuPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 55
    iget-object p1, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/MenuView;

    .line 57
    check-cast p1, Landroid/view/ViewGroup;

    .line 59
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 61
    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 65
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)V

    .line 67
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 70
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 72
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 74
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 80
    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuLayout:I

    .line 86
    const/4 v3, 0x0

    .line 88
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    move-result-object p1

    .line 92
    check-cast p1, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 93
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 95
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 102
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    .line 107
    goto :goto_0

    .line 109
    :cond_3
    const/4 p0, 0x0

    .line 110
    :goto_0
    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setOverflowMenuView(Landroid/view/View;)V

    .line 111
    :cond_4
    return-void
    .line 114
.end method

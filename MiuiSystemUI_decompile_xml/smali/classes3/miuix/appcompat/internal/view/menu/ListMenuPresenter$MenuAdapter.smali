.class public final Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mExpandedIndex:I

.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final findExpandedIndex()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 2
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 10
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_1

    .line 20
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 25
    check-cast v4, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 26
    if-ne v4, v1, :cond_0

    .line 28
    iput v3, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 30
    return-void

    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 37
    return-void
    .line 39
.end method

.method public final getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 2
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 6
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    add-int/lit8 v0, v0, 0x0

    .line 20
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 22
    if-gez p0, :cond_0

    .line 24
    return v0

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    return v0
    .line 29
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .locals 2

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 4
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, 0x0

    .line 7
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz p0, :cond_0

    if-lt p1, p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
    .line 3
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 4
    iget-object v0, p2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 6
    iget p2, p2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 14
    invoke-static {p2}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    .line 15
    :cond_0
    move-object p3, p2

    .line 18
    check-cast p3, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 19
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 21
    move-result-object p0

    .line 24
    invoke-interface {p3, p0}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 25
    return-object p2
    .line 28
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 2
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    return-void
    .line 8
.end method
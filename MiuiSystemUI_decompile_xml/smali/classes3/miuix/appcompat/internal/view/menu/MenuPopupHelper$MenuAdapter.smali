.class public final Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mExpandedIndex:I

.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 8
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 10
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final findExpandedIndex()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 2
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

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
    iput v3, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

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
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 37
    return-void
    .line 39
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 2
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 10
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 16
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    .line 18
    move-result-object v0

    .line 21
    :goto_0
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 22
    if-gez p0, :cond_1

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result p0

    .line 34
    add-int/lit8 p0, p0, -0x1

    .line 35
    return p0
    .line 37
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .locals 1

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 3
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 6
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 8
    :goto_0
    iget p0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz p0, :cond_1

    if-lt p1, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 9
    :cond_1
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
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 4
    iget-object v0, p2, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 6
    iget p2, p2, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

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
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    .line 18
    move-result p3

    .line 21
    invoke-static {p2, p1, p3}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    .line 22
    move-object p3, p2

    .line 25
    check-cast p3, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;

    .line 26
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;

    .line 28
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 30
    if-eqz v0, :cond_1

    .line 32
    move-object v0, p2

    .line 34
    check-cast v0, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;

    .line 35
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 41
    move-result-object p0

    .line 44
    invoke-interface {p3, p0}, Lmiuix/appcompat/internal/view/menu/MenuView$ItemView;->initialize(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 45
    return-object p2
    .line 48
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 2
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    return-void
    .line 8
.end method

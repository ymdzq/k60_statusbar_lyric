.class public final Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lmiuix/appcompat/internal/view/menu/MenuView;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final filterLeftoverView(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getWindowAnimations()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final hasBackgroundView()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final initialize(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 2
    return-void
    .line 4
.end method

.method public final invokeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 2
    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 6
    return-void
    .line 9
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    move-result-object p1

    .line 5
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 10
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;->invokeItem(ILmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z

    .line 13
    return-void
    .line 16
.end method

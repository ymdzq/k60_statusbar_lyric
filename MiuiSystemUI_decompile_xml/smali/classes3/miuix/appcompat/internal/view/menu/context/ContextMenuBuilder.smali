.class public final Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;
.super Lmiuix/appcompat/internal/view/menu/MenuBuilder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ContextMenu;


# instance fields
.field public mHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->mHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    iget-object v1, v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 10
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v1}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 15
    iput-object v2, v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 18
    :cond_0
    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;->mHelper:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    .line 20
    :cond_1
    return-void
    .line 22
.end method

.method public final setHeaderIcon(I)Landroid/view/ContextMenu;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)V

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/ContextMenu;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)V

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)V

    .line 2
    return-object p0
    .line 5
.end method

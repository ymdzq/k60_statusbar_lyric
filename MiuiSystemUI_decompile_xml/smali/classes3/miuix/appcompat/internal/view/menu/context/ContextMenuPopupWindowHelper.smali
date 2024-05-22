.class public final Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public mAnchor:Landroid/view/View;

.field public mAnchorParent:Landroid/view/ViewGroup;

.field public mContextMenuPopupWindow:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

.field public final mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public final mPoint:[F

.field public mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPoint:[F

    .line 8
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 9
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 12
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->clearAll()V

    .line 14
    return-void
    .line 17
.end method

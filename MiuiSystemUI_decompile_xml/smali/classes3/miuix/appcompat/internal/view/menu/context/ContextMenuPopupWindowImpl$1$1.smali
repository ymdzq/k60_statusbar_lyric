.class public final Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic this$1:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

.field public final synthetic val$subMenu:Landroid/view/SubMenu;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;Landroid/view/SubMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    .line 2
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onDismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    .line 2
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 4
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->val$subMenu:Landroid/view/SubMenu;

    .line 9
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;

    .line 11
    iget-object v2, v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuAdapter;->buildMenuItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    .line 15
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 18
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1$1;->this$1:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    .line 21
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$1;->this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 23
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    .line 25
    iget v1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mX:F

    .line 27
    iget v2, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mY:F

    .line 29
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    .line 31
    move-result v3

    .line 34
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 35
    const/4 v3, -0x2

    .line 38
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 39
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    .line 42
    const/16 v4, 0x8

    .line 44
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->showWithAnchor(Landroid/view/View;FF)V

    .line 49
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 54
    return-void
    .line 57
.end method

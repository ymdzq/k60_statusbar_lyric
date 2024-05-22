.class public final Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$2;->this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$2;->this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 2
    iget-object v0, p1, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 9
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl$2;->this$0:Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowImpl;

    .line 12
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    .line 14
    return-void
    .line 17
.end method

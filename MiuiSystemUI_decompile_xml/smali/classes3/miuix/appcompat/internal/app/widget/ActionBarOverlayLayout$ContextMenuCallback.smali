.class public final Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field public mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x6

    .line 6
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 7
    if-eq v0, p1, :cond_0

    .line 9
    iget-object v0, v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 15
    move-result-object v3

    .line 18
    invoke-interface {v0, v1, v3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 19
    :cond_0
    if-eqz p2, :cond_5

    .line 22
    iget-object p2, v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    .line 24
    if-eqz p2, :cond_1

    .line 26
    invoke-interface {p2, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 28
    :cond_1
    iget-object p1, v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 31
    const/4 p2, 0x0

    .line 33
    if-eqz p1, :cond_3

    .line 34
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 36
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 40
    :cond_2
    iput-object p2, v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->mContextMenu:Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;

    .line 43
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 45
    if-eqz p1, :cond_5

    .line 47
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 49
    if-eqz p1, :cond_4

    .line 51
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 53
    :cond_4
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 56
    :cond_5
    return-void
    .line 58
.end method

.method public final onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setCallback(Lmiuix/appcompat/internal/view/menu/MenuBuilder$Callback;)V

    .line 6
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 9
    invoke-direct {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 11
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContextMenuCallback;->mSubMenuHelper:Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    .line 14
    const/4 p0, 0x0

    .line 16
    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 17
    const/4 p0, 0x1

    .line 20
    return p0
    .line 21
.end method

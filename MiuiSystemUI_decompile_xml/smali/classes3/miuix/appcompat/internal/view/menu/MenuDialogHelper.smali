.class public Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field public mDialog:Lmiuix/appcompat/app/AlertDialog;

.field public final mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field public mPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

.field public mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 6
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 10
    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)V

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 15
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 17
    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 19
    move-result-object p0

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p0, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 24
    return-void
    .line 27
.end method

.method public final onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    if-ne p1, v0, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 12
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 15
    if-eqz p0, :cond_2

    .line 17
    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 19
    :cond_2
    return-void
    .line 22
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, p0, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    .line 7
    return-void
    .line 10
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x52

    .line 2
    if-eq p2, v0, :cond_0

    .line 4
    const/4 v0, 0x4

    .line 6
    if-ne p2, v0, :cond_2

    .line 7
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 22
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 24
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 30
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 36
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 42
    return v1

    .line 45
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 46
    move-result v0

    .line 49
    if-ne v0, v1, :cond_2

    .line 50
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 52
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 58
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 60
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 66
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 72
    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    .line 78
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 84
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 86
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 89
    return v1

    .line 92
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 93
    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p2, p3, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 96
    move-result p0

    .line 99
    return p0
    .line 100
.end method

.method public final onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final show(Landroid/os/IBinder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 2
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 4
    iget-object v2, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 6
    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 11
    iget-object v3, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 13
    const v4, 0x7f0d01ff    # @layout/miuix_appcompat_expanded_menu_layout 'res/layout/miuix_appcompat_expanded_menu_layout.xml'

    .line 15
    const v5, 0x7f0d0207    # @layout/miuix_appcompat_list_menu_item_layout 'res/layout/miuix_appcompat_list_menu_item_layout.xml'

    .line 18
    invoke-direct {v2, v4, v5}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;-><init>(II)V

    .line 21
    iput-object v3, v2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 26
    move-result-object v3

    .line 29
    iput-object v3, v2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 32
    iput-object p0, v2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 34
    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 36
    invoke-virtual {v3, v2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    .line 38
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mPresenter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;

    .line 41
    iget-object v3, v2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 43
    if-nez v3, :cond_0

    .line 45
    new-instance v3, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 47
    invoke-direct {v3, v2}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)V

    .line 49
    iput-object v3, v2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 52
    :cond_0
    iget-object v2, v2, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 54
    invoke-virtual {v1, v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setAdapter(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    iget-object v2, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 59
    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)V

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    iget-object v2, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, v0, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    invoke-virtual {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 77
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 80
    move-result-object v0

    .line 83
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 84
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 86
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 89
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 91
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 95
    move-result-object v0

    .line 98
    const/16 v1, 0x3eb

    .line 99
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 101
    if-eqz p1, :cond_2

    .line 103
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 105
    :cond_2
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 107
    const/high16 v1, 0x20000

    .line 109
    or-int/2addr p1, v1

    .line 111
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 112
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 114
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 116
    return-void
    .line 119
.end method

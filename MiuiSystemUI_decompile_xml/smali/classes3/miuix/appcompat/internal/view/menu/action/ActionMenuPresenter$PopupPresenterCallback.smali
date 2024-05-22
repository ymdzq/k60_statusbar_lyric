.class public final Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 1
    instance-of p0, p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 6
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->closeInternal(Z)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    check-cast p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;

    .line 6
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;->mItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 8
    iget p1, p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->mId:I

    .line 10
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 12
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 14
    return v0
    .line 16
.end method

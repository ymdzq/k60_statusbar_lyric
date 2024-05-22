.class public final synthetic Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getRootMenu()Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 16
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 21
    move-result p1

    .line 24
    const/4 v0, 0x1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    .line 32
    :goto_0
    return v0
    .line 35
.end method

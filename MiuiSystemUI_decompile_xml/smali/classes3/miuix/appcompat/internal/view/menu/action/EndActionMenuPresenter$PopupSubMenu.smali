.class public final Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;
.super Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p2, p3, p4, v0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 5
    iget-object p1, p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mPopupPresenterCallback:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$PopupPresenterCallback;

    .line 8
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    .line 10
    const p1, 0x7f0d020b    # @layout/miuix_appcompat_overflow_popup_menu_item_layout 'res/layout/miuix_appcompat_overflow_popup_menu_item_layout.xml'

    .line 12
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final dismiss(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 5
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onDismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter$PopupSubMenu;->this$0:Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;

    .line 5
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    .line 9
    return-void
    .line 12
.end method

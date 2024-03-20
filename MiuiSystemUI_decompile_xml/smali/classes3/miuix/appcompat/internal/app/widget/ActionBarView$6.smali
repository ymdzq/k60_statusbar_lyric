.class public final Lmiuix/appcompat/internal/app/widget/ActionBarView$6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 11
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitleNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 13
    invoke-interface {p1, v1, p0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 15
    return-void

    .line 18
    :pswitch_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 21
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    .line 23
    invoke-interface {p1, v1, p0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 25
    return-void

    .line 28
    :pswitch_2
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 29
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 31
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 33
    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 37
    :cond_0
    return-void

    .line 40
    :goto_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 41
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    .line 43
    if-eqz p0, :cond_1

    .line 45
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 47
    :cond_1
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 52
.end method

.class public final Landroidx/appcompat/widget/ActivityChooserView$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->isShowingPopup()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 28
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ListPopupWindow;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 34
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView$2;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    .line 37
    iget-object p0, p0, Landroidx/appcompat/widget/ActivityChooserView;->mProvider:Landroidx/core/view/ActionProvider;

    .line 39
    if-eqz p0, :cond_1

    .line 41
    iget-object p0, p0, Landroidx/core/view/ActionProvider;->mSubUiVisibilityListener:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 43
    if-eqz p0, :cond_1

    .line 45
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 47
    if-eqz v0, :cond_1

    .line 49
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 51
    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    .line 53
    :cond_1
    :goto_0
    return-void
    .line 56
.end method

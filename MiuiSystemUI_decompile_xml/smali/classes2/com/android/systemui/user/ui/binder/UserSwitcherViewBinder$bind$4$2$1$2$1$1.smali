.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $addButton:Landroid/view/View;

.field public final synthetic $popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

.field public final synthetic $view:Landroid/view/ViewGroup;

.field public final synthetic $viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$view:Landroid/view/ViewGroup;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$addButton:Landroid/view/View;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$view:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$addButton:Landroid/view/View;

    .line 10
    iget-object v3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    .line 12
    new-instance v4, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1$1;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 16
    invoke-direct {v4, p0}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2$1$1$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V

    .line 18
    new-instance p0, Lcom/android/systemui/user/UserSwitcherPopupMenu;

    .line 21
    invoke-direct {p0, v1}, Lcom/android/systemui/user/UserSwitcherPopupMenu;-><init>(Landroid/content/Context;)V

    .line 23
    const v1, 0x800005

    .line 26
    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 29
    invoke-virtual {p0, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0, v3}, Lcom/android/systemui/user/UserSwitcherPopupMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    new-instance v1, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$createAndShowPopupMenu$1$1;

    .line 38
    invoke-direct {v1, v4}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$createAndShowPopupMenu$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 40
    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/user/UserSwitcherPopupMenu;->show()V

    .line 46
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 49
    return-void
    .line 51
.end method

.class public abstract Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static bind(Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Landroid/view/LayoutInflater;Lcom/android/systemui/classifier/FalsingCollector;Lkotlin/jvm/functions/Function0;)V
    .locals 13

    .line 1
    move-object v11, p0

    .line 2
    move-object v1, p1

    .line 3
    const v0, 0x7f0a0a4a    # @id/user_switcher_grid_container

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    move-object v8, v0

    .line 11
    check-cast v8, Lcom/android/systemui/user/UserSwitcherRootView;

    .line 12
    const v0, 0x7f0a0372    # @id/flow

    .line 14
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    move-object v7, v0

    .line 21
    check-cast v7, Landroidx/constraintlayout/helper/widget/Flow;

    .line 22
    const v0, 0x7f0a0097    # @id/add

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 27
    move-result-object v4

    .line 30
    const v0, 0x7f0a01bd    # @id/cancel

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 37
    new-instance v6, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    .line 38
    move-object v9, p2

    .line 40
    invoke-direct {v6, p2}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;-><init>(Landroid/view/LayoutInflater;)V

    .line 41
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 44
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 46
    new-instance v3, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$1;

    .line 49
    move-object/from16 v5, p3

    .line 51
    invoke-direct {v3, v5}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$1;-><init>(Lcom/android/systemui/classifier/FalsingCollector;)V

    .line 53
    invoke-virtual {v8, v3}, Lcom/android/systemui/user/UserSwitcherRootView;->setTouchHandler(Lcom/android/systemui/Gefingerpoken;)V

    .line 56
    new-instance v3, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;

    .line 59
    const/4 v5, 0x0

    .line 61
    invoke-direct {v3, v5, p1}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;-><init>(ILjava/lang/Object;)V

    .line 62
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v3, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;

    .line 68
    const/4 v5, 0x1

    .line 70
    invoke-direct {v3, v5, p1}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$2;-><init>(ILjava/lang/Object;)V

    .line 71
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v12, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;

    .line 77
    const/4 v10, 0x0

    .line 79
    move-object v0, v12

    .line 80
    move-object/from16 v3, p4

    .line 81
    move-object v5, p0

    .line 83
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Landroidx/constraintlayout/helper/widget/Flow;Lcom/android/systemui/user/UserSwitcherRootView;Landroid/view/LayoutInflater;Lkotlin/coroutines/Continuation;)V

    .line 84
    invoke-static {p0, v12}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 87
    return-void
    .line 90
.end method

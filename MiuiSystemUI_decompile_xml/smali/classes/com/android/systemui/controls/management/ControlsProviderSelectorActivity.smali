.class public Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;
.super Landroidx/activity/ComponentActivity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

.field public final backExecutor:Ljava/util/concurrent/Executor;

.field public backShouldExit:Z

.field public final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field public dialog:Landroid/app/Dialog;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public final mOnBackInvokedCallback:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$mOnBackInvokedCallback$1;

.field public final panelConfirmationDialogFactory:Lcom/android/systemui/controls/management/PanelConfirmationDialogFactory;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;Lcom/android/systemui/controls/management/PanelConfirmationDialogFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->panelConfirmationDialogFactory:Lcom/android/systemui/controls/management/PanelConfirmationDialogFactory;

    .line 17
    new-instance p1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$userTrackerCallback$1;

    .line 19
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$userTrackerCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 24
    new-instance p1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$mOnBackInvokedCallback$1;

    .line 26
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$mOnBackInvokedCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->mOnBackInvokedCallback:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$mOnBackInvokedCallback$1;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public animateExitAndFinish$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()V
    .locals 2

    .line 1
    const v0, 0x7f0a0249    # @id/controls_management_root

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    new-instance v1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$animateExitAndFinish$1;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$animateExitAndFinish$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    .line 13
    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 20
    return-void
    .line 23
.end method

.method public final onBackPressed()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->backShouldExit:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8
    new-instance v1, Landroid/content/ComponentName;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 16
    const-class v3, Lcom/android/systemui/controls/ui/ControlsActivity;

    .line 17
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 22
    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Landroid/util/Pair;

    .line 26
    invoke-static {p0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->animateExitAndFinish$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()V

    .line 39
    return-void
    .line 42
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0d007e    # @layout/controls_management 'res/layout/controls_management.xml'

    .line 5
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 8
    const p1, 0x7f0a0249    # @id/controls_management_root

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    move-result-object v1

    .line 27
    new-instance v2, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;

    .line 28
    const/4 v3, 0x1

    .line 30
    invoke-direct {v2, v1, p1, v0, v3}, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;-><init>(Landroid/content/Intent;Landroid/view/ViewGroup;Landroid/view/Window;Z)V

    .line 31
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 34
    invoke-virtual {p1, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 36
    const p1, 0x7f0a08f8    # @id/stub

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 45
    check-cast p1, Landroid/view/ViewStub;

    .line 46
    const v0, 0x7f0d007f    # @layout/controls_management_apps 'res/layout/controls_management_apps.xml'

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 54
    const p1, 0x7f0a04fe    # @id/list

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 63
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 70
    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 73
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    const p1, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 82
    move-result-object p1

    .line 85
    check-cast p1, Landroid/widget/TextView;

    .line 86
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object v0

    .line 91
    const v1, 0x7f130329    # @string/controls_providers_title 'Choose app to add controls'

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 95
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const p1, 0x7f0a06d5    # @id/other_apps

    .line 102
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 105
    move-result-object p1

    .line 108
    check-cast p1, Landroid/widget/Button;

    .line 109
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    const/high16 v1, 0x1040000    # @android:string/cancel

    .line 115
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 117
    new-instance v1, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onCreate$3$1;

    .line 120
    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onCreate$3$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    .line 122
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const p1, 0x7f0a02eb    # @id/done

    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 131
    move-result-object p1

    .line 134
    const/16 v1, 0x8

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 140
    move-result-object p1

    .line 143
    const-string v1, "back_should_exit"

    .line 144
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 146
    move-result p1

    .line 149
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->backShouldExit:Z

    .line 150
    return-void
    .line 152
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 8
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 11
    return-void
    .line 14
.end method

.method public final onStart()V
    .locals 13

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 9
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    move-object v0, v1

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 23
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    if-nez v0, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v0

    .line 31
    :goto_0
    new-instance v0, Lcom/android/systemui/controls/management/AppAdapter;

    .line 32
    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    .line 34
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    .line 36
    iget-object v5, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 38
    iget-object v6, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 40
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 42
    move-result-object v7

    .line 45
    new-instance v8, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$1;

    .line 46
    invoke-direct {v8, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$1;-><init>(Ljava/lang/Object;)V

    .line 48
    new-instance v9, Lcom/android/systemui/controls/management/FavoritesRenderer;

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v2

    .line 56
    new-instance v10, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$2;

    .line 57
    iget-object v11, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    .line 59
    invoke-direct {v10, v11}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$2;-><init>(Lcom/android/systemui/controls/controller/ControlsController;)V

    .line 61
    invoke-direct {v9, v2, v10}, Lcom/android/systemui/controls/management/FavoritesRenderer;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 67
    move-result-object v10

    .line 70
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    .line 71
    check-cast v2, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;

    .line 73
    invoke-virtual {v2}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->instantiateSharedPrefs()Landroid/content/SharedPreferences;

    .line 75
    move-result-object v2

    .line 78
    sget-object v11, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 79
    const-string v12, "authorized_panels"

    .line 81
    invoke-interface {v2, v12, v11}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 83
    move-result-object v11

    .line 86
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    move-object v2, v0

    .line 90
    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/controls/management/AppAdapter;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/LifecycleRegistry;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/FavoritesRenderer;Landroid/content/res/Resources;Ljava/util/Set;)V

    .line 91
    new-instance v2, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$3$1;

    .line 94
    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$onStart$3$1;-><init>(Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;)V

    .line 96
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 99
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 105
    move-result-object v0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->mOnBackInvokedCallback:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$mOnBackInvokedCallback$1;

    .line 109
    const/4 v1, 0x0

    .line 111
    invoke-interface {v0, v1, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 112
    return-void
    .line 115
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->mOnBackInvokedCallback:Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity$mOnBackInvokedCallback$1;

    .line 18
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;->dialog:Landroid/app/Dialog;

    .line 23
    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 27
    :cond_0
    return-void
    .line 30
.end method

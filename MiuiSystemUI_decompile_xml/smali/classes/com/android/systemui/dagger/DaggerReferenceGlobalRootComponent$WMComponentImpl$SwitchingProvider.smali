.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public final wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 7
    iput p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->id:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->id:I

    .line 2
    div-int/lit8 v0, v0, 0x64

    .line 4
    if-eqz v0, :cond_1

    .line 6
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->get1()Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 16
    iget p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->id:I

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 20
    throw v0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->get0()Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    return-object p0
    .line 28
.end method

.method public final get0()Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->id:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->id:I

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesMiuiFreeformModeTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideWindowDecorViewModelProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-static {v1, v2, v3, v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskTransitionObserverFactory;->provideFreeformTaskTransitionObserver(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;

    move-result-object v0

    return-object v0

    .line 4
    :pswitch_1
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/transition/Transitions;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideWindowDecorViewModelProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskTransitionHandlerFactory;->provideFreeformTaskTransitionHandler(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    move-result-object v0

    return-object v0

    .line 5
    :pswitch_2
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideMiuiDesktopModeTaskRepositoryFactory;->provideMiuiDesktopModeTaskRepository()Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    move-result-object v0

    return-object v0

    .line 6
    :pswitch_3
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideMiuiDesktopModeTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidesMiuiDesktopModeTaskRepositoryFactory;->providesMiuiDesktopModeTaskRepository(Ljava/util/Optional;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 7
    :pswitch_4
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideMiuiFreeformModeTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidesMiuiFreeformModeTaskRepositoryFactory;->providesMiuiFreeformModeTaskRepository(Ljava/util/Optional;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 8
    :pswitch_5
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDesktopTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesMiuiFreeformModeTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesMiuiDesktopModeTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideWindowDecorViewModelProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformTaskListenerFactory;->provideFreeformTaskListener(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)Lcom/android/wm/shell/freeform/FreeformTaskListener;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_6
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideFreeformTaskListenerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideFreeformTaskTransitionHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideFreeformTaskTransitionObserverProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;

    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFreeformComponentsFactory;->provideFreeformComponents(Lcom/android/wm/shell/freeform/FreeformTaskListener;Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;)Lcom/android/wm/shell/freeform/FreeformComponents;

    move-result-object v0

    return-object v0

    .line 10
    :pswitch_7
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideFreeformComponentsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformComponents;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    invoke-static {v1}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFreeformComponentsFactory;->provideFreeformComponents(Ljava/util/Optional;)V

    return-object v1

    .line 11
    :pswitch_8
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideMiuiMultiWinCallbacksFactory;->provideMiuiMultiWinCallbacks()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    move-result-object v0

    return-object v0

    .line 12
    :pswitch_9
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransientObserverFactory;->provideTransientObserver()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_a
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullScreenTaskRepositoryFactory;->provideFullScreenTaskRepository()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    move-result-object v0

    return-object v0

    .line 14
    :pswitch_b
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideMiuiFreeformModeTaskRepositoryFactory;->provideMiuiFreeformModeTaskRepository(Landroid/content/Context;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    move-result-object v0

    return-object v0

    .line 15
    :pswitch_c
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideHideDisplayCutoutControllerFactory;->provideHideDisplayCutoutController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 16
    :pswitch_d
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSoScSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideHideDisplayCutoutControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-static {v1, v2, v3, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideWindowDecorRectControllerFactory;->provideWindowDecorRectController(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Ljava/util/Optional;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_e
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideActivityManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideMiuiMultiWinSwitchUtilsFactory;->provideMiuiMultiWinSwitchUtils(Landroid/app/ActivityManager;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

    move-result-object v0

    return-object v0

    .line 18
    :pswitch_f
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellAnimationExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideMiuiTipsControllerFactory;->provideMiuiTipsController(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_10
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideExitDesktopTaskTransitionHandlerFactory;->provideExitDesktopTaskTransitionHandler(Lcom/android/wm/shell/transition/Transitions;Landroid/content/Context;)Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    move-result-object v0

    return-object v0

    .line 20
    :pswitch_11
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideEnterDesktopModeTaskTransitionHandlerFactory;->provideEnterDesktopModeTaskTransitionHandler(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_12
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSyncTransactionQueueProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRootTaskDisplayAreaOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideEnterDesktopModeTaskTransitionHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideExitDesktopTaskTransitionHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDesktopModeTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v13}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopTasksControllerFactory;->provideDesktopTasksController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    move-result-object v0

    return-object v0

    .line 22
    :pswitch_13
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDesktopTasksControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 23
    sget-boolean v1, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 26
    :goto_0
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    .line 27
    :pswitch_14
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRootTaskDisplayAreaOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDesktopModeTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v10}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopModeControllerFactory;->provideDesktopModeController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/desktopmode/DesktopModeController;

    move-result-object v0

    return-object v0

    .line 28
    :pswitch_15
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDesktopModeControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 29
    sget-boolean v1, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    if-eqz v1, :cond_1

    .line 30
    new-instance v1, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_1

    .line 31
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 32
    :goto_1
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    .line 33
    :pswitch_16
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainChoreographerFactory;->provideShellMainChoreographer(Lcom/android/wm/shell/common/ShellExecutor;)Landroid/view/Choreographer;

    move-result-object v0

    return-object v0

    .line 34
    :pswitch_17
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainChoreographerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/Choreographer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSyncTransactionQueueProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDesktopModeControllerProvider2(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesDesktopTasksControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRootTaskDisplayAreaOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSoScSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideIconProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/launcher3/icons/IconProvider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransactionPoolProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/wm/shell/common/TransactionPool;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovidePackageManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/content/pm/PackageManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideMiuiTipsControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideMiuiMultiWinSwitchUtilsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideIWindowManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Landroid/view/IWindowManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideWindowDecorRectControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideMiuiFreeformModeTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayImeControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideFullScreenTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRecentTasksControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransientObserverProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideMiuiMultiWinCallbacksProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSharedBackgroundExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetproviderTaskStackListenerImplProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-static/range {v2 .. v32}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideWindowDecorViewModelFactory;->provideWindowDecorViewModel(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/pm/PackageManager;Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Landroid/view/IWindowManager;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;Ljava/util/Optional;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/TaskStackListenerImpl;)Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_18
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSyncTransactionQueueProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v5}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRecentTasksControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Optional;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v6}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideWindowDecorViewModelProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v7}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideWindowDecorRectControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v7

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideFullScreenTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    invoke-static/range {v1 .. v8}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->provideFullscreenTaskListener(Ljava/util/Optional;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;)Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    move-result-object v0

    return-object v0

    .line 36
    :pswitch_19
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideOneHandedControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const-string/jumbo v1, "ro.support_one_handed_mode"

    .line 37
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 38
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 39
    :goto_2
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    .line 40
    :pswitch_1a
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDevicePostureControllerFactory;->provideDevicePostureController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DevicePostureController;

    move-result-object v0

    return-object v0

    .line 41
    :pswitch_1b
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDevicePostureControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/DevicePostureController;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTabletopModeControllerFactory;->provideTabletopModeController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DevicePostureController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/TabletopModeController;

    move-result-object v0

    return-object v0

    .line 42
    :pswitch_1c
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipBoundsStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesPipPhoneMenuControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipSnapAlgorithmProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTransitionControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideFloatingContentCoordinatorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/common/FloatingContentCoordinator;

    invoke-static/range {v2 .. v8}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipMotionHelperFactory;->providePipMotionHelper(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/common/FloatingContentCoordinator;)Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    move-result-object v0

    return-object v0

    .line 43
    :pswitch_1d
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipParamsChangedForwarderFactory;->providePipParamsChangedForwarder()Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    move-result-object v0

    return-object v0

    .line 44
    :pswitch_1e
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipAnimationControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesPipBoundsAlgorithmProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipBoundsStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetpipDisplayLayoutStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTransitionStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/pip/PipTransitionState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesPipPhoneMenuControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipSurfaceTransactionHelperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSoScSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    invoke-static/range {v2 .. v14}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->providePipTransitionController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;Ljava/util/Optional;)Lcom/android/wm/shell/pip/PipTransition;

    move-result-object v0

    return-object v0

    .line 45
    :pswitch_1f
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionStateFactory;->providePipTransitionState()Lcom/android/wm/shell/pip/PipTransitionState;

    move-result-object v0

    return-object v0

    .line 46
    :pswitch_20
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSyncTransactionQueueProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTransitionStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/pip/PipTransitionState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipBoundsStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetpipDisplayLayoutStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesPipBoundsAlgorithmProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesPipPhoneMenuControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipAnimationControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipSurfaceTransactionHelperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTransitionControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipParamsChangedForwarderProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSoScSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipUiEventLoggerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/wm/shell/pip/PipUiEventLogger;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v18}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTaskOrganizerFactory;->providePipTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-result-object v0

    return-object v0

    .line 47
    :pswitch_21
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePhonePipKeepClearAlgorithmFactory;->providePhonePipKeepClearAlgorithm(Landroid/content/Context;)Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;

    move-result-object v0

    return-object v0

    .line 48
    :pswitch_22
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory;->providePipSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    move-result-object v0

    return-object v0

    .line 49
    :pswitch_23
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipBoundsStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipSnapAlgorithmProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePhonePipKeepClearAlgorithmProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipSizeSpecHelperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipBoundsAlgorithmFactory;->providesPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-result-object v0

    return-object v0

    .line 50
    :pswitch_24
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideUiEventLoggerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovidePackageManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipUiEventLoggerFactory;->providePipUiEventLogger(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)Lcom/android/wm/shell/pip/PipUiEventLogger;

    move-result-object v0

    return-object v0

    .line 51
    :pswitch_25
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideIWindowManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideSystemWindowsFactory;->provideSystemWindows(Lcom/android/wm/shell/common/DisplayController;Landroid/view/IWindowManager;)Lcom/android/wm/shell/common/SystemWindows;

    move-result-object v0

    return-object v0

    .line 52
    :pswitch_26
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipMediaControllerFactory;->providePipMediaController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/wm/shell/pip/PipMediaController;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_27
    new-instance v1, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 54
    :pswitch_28
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetpipDisplayLayoutStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSizeSpecHelperFactory;->providePipSizeSpecHelper(Landroid/content/Context;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    move-result-object v0

    return-object v0

    .line 55
    :pswitch_29
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipSizeSpecHelperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetpipDisplayLayoutStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipBoundsStateFactory;->providePipBoundsState(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)Lcom/android/wm/shell/pip/PipBoundsState;

    move-result-object v0

    return-object v0

    .line 56
    :pswitch_2a
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipBoundsStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipMediaControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/pip/PipMediaController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSystemWindowsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/common/SystemWindows;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSoScSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipUiEventLoggerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/pip/PipUiEventLogger;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Handler;

    invoke-static/range {v2 .. v10}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipPhoneMenuControllerFactory;->providesPipPhoneMenuController(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/common/SystemWindows;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    move-result-object v0

    return-object v0

    .line 57
    :pswitch_2b
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesPipPhoneMenuControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesPipBoundsAlgorithmProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipBoundsStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipSizeSpecHelperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipMotionHelperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideFloatingContentCoordinatorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/common/FloatingContentCoordinator;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipUiEventLoggerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/pip/PipUiEventLogger;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v12}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->providePipTouchHandler(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object v0

    return-object v0

    .line 58
    :pswitch_2c
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTouchHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAppOpsListenerFactory;->providePipAppOpsListener(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/PipAppOpsListener;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_2d
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;->providePipSurfaceTransactionHelper(Landroid/content/Context;)Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-result-object v0

    return-object v0

    .line 60
    :pswitch_2e
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipSurfaceTransactionHelperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAnimationControllerFactory;->providePipAnimationController(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)Lcom/android/wm/shell/pip/PipAnimationController;

    move-result-object v0

    return-object v0

    .line 61
    :pswitch_2f
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipAnimationControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipAppOpsListenerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/pip/PipAppOpsListener;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesPipBoundsAlgorithmProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePhonePipKeepClearAlgorithmProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipBoundsStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipSizeSpecHelperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetpipDisplayLayoutStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipMotionHelperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipMediaControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/wm/shell/pip/PipMediaController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesPipPhoneMenuControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTransitionStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/wm/shell/pip/PipTransitionState;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTouchHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTransitionControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideWindowManagerShellWrapperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/wm/shell/WindowManagerShellWrapper;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetproviderTaskStackListenerImplProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipParamsChangedForwarderProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayInsetsControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTabletopModeControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/wm/shell/common/TabletopModeController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesOneHandedControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v27}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipFactory;->providePip(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/phone/PhonePipKeepClearAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 62
    :pswitch_30
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSyncTransactionQueueProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRootTaskDisplayAreaOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayImeControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayInsetsControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDragAndDropControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransactionPoolProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/wm/shell/common/TransactionPool;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideIconProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/launcher3/icons/IconProvider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRecentTasksControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSharedBackgroundExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v18}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideSoScSplitScreenControllerFactory;->provideSoScSplitScreenController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    move-result-object v0

    return-object v0

    .line 63
    :pswitch_31
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewTransitionsFactory;->provideTaskViewTransitions(Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/taskview/TaskViewTransitions;

    move-result-object v0

    return-object v0

    .line 64
    :pswitch_32
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "wmshell.background"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    .line 67
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    .line 68
    :pswitch_33
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSharedBackgroundHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSharedBackgroundExecutorFactory;->provideSharedBackgroundExecutor(Landroid/os/Handler;)Lcom/android/wm/shell/common/HandlerExecutor;

    move-result-object v0

    return-object v0

    .line 69
    :pswitch_34
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideRootDisplayAreaOrganizerFactory;->provideRootDisplayAreaOrganizer(Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    move-result-object v0

    return-object v0

    .line 70
    :pswitch_35
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayLayoutFactory;->provideDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_36
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideWindowManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/WindowManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayLayoutProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetproviderTaskStackListenerImplProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideUiEventLoggerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/internal/logging/UiEventLogger;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideInteractionJankMonitorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRootDisplayAreaOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    invoke-static/range {v2 .. v14}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->provideOneHandedController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Landroid/view/WindowManager;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/RootDisplayAreaOrganizer;)Lcom/android/wm/shell/onehanded/OneHandedController;

    move-result-object v0

    return-object v0

    .line 72
    :pswitch_37
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideWindowManagerShellWrapperFactory;->provideWindowManagerShellWrapper(Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/WindowManagerShellWrapper;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_38
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;->provideFloatingContentCoordinator()Lcom/android/wm/shell/common/FloatingContentCoordinator;

    move-result-object v0

    return-object v0

    .line 74
    :pswitch_39
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideWindowManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubblePositionerFactory;->provideBubblePositioner(Landroid/content/Context;Landroid/view/WindowManager;)Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_3a
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideUiEventLoggerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/UiEventLogger;

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleLoggerFactory;->provideBubbleLogger(Lcom/android/internal/logging/UiEventLogger;)Lcom/android/wm/shell/bubbles/BubbleLogger;

    move-result-object v0

    return-object v0

    .line 76
    :pswitch_3b
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideBubbleLoggerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleLogger;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideBubblePositionerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v1, v2, v3, v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleDataFactory;->provideBubbleData(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/bubbles/BubbleData;

    move-result-object v0

    return-object v0

    .line 77
    :pswitch_3c
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideBubbleDataProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideFloatingContentCoordinatorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/common/FloatingContentCoordinator;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideIStatusBarServiceProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideWindowManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/view/WindowManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideWindowManagerShellWrapperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/WindowManagerShellWrapper;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideUserManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/UserManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideLauncherAppsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/content/pm/LauncherApps;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetproviderTaskStackListenerImplProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideBubbleLoggerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/wm/shell/bubbles/BubbleLogger;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideBubblePositionerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideOneHandedControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v18

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDragAndDropControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSharedBackgroundExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTaskViewTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/android/wm/shell/taskview/TaskViewTransitions;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSyncTransactionQueueProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideIWindowManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/view/IWindowManager;

    invoke-static/range {v2 .. v25}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->provideBubbleController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/os/UserManager;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/IWindowManager;)Lcom/android/wm/shell/bubbles/BubbleController;

    move-result-object v0

    return-object v0

    .line 78
    :pswitch_3d
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideMiuiInfiniteModeTaskRepositoryFactory;->provideMiuiInfiniteModeTaskRepository()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_3e
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideMiuiInfiniteModeTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->isMiuiInfiniteRadioFeatureEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 81
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 82
    :goto_3
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    .line 83
    :pswitch_3f
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideShellProgressProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$mfullscreenUnfoldTaskAnimator(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;

    move-result-object v3

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellSplitTaskUnfoldAnimatorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransactionPoolProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/common/TransactionPool;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/sysui/ShellInit;

    invoke-static/range {v2 .. v8}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldTransitionHandlerFactory;->provideUnfoldTransitionHandler(Ljava/util/Optional;Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellInit;)Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    move-result-object v0

    return-object v0

    .line 84
    :pswitch_40
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideUnfoldTransitionHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_41
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideShellProgressProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetdynamicOverrideOptionalOfUnfoldTransitionHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;->provideUnfoldTransitionHandler(Ldagger/Lazy;Ljava/util/Optional;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 86
    :pswitch_42
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideDesktopModeTaskRepositoryFactory;->provideDesktopModeTaskRepository()Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    move-result-object v0

    return-object v0

    .line 87
    :pswitch_43
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDesktopModeTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    new-instance v1, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_4

    .line 90
    :cond_4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 91
    :goto_4
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    .line 92
    :pswitch_44
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProviderTaskStackListenerImplFactory;->providerTaskStackListenerImpl(Landroid/os/Handler;)Lcom/android/wm/shell/common/TaskStackListenerImpl;

    move-result-object v0

    return-object v0

    .line 93
    :pswitch_45
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetproviderTaskStackListenerImplProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideActivityTaskManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/app/ActivityTaskManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDesktopTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideRecentTasksControllerFactory;->provideRecentTasksController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/app/ActivityTaskManager;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 94
    :pswitch_46
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSyncTransactionQueueProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRootTaskDisplayAreaOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayImeControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayInsetsControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDragAndDropControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransactionPoolProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/wm/shell/common/TransactionPool;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideIconProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/launcher3/icons/IconProvider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRecentTasksControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v17}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideSplitScreenControllerFactory;->provideSplitScreenController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v0

    return-object v0

    .line 95
    :pswitch_47
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    .line 97
    :cond_5
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .line 98
    :goto_5
    invoke-static {v1}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v1

    .line 99
    :pswitch_48
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldBackgroundControllerFactory;->provideUnfoldBackgroundController(Landroid/content/Context;)Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_49
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideUnfoldBackgroundControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayInsetsControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideSplitTaskUnfoldAnimatorBaseFactory;->provideSplitTaskUnfoldAnimatorBase(Landroid/content/Context;Lcom/android/wm/shell/unfold/UnfoldBackgroundController;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/ShellExecutor;Ldagger/Lazy;Lcom/android/wm/shell/common/DisplayInsetsController;)Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    move-result-object v0

    return-object v0

    .line 101
    :pswitch_4a
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideShellProgressProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransactionPoolProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/common/TransactionPool;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSplitTaskUnfoldAnimatorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$mfullscreenUnfoldTaskAnimator(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;

    move-result-object v5

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideUnfoldTransitionHandlerProvider2(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v8}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldAnimationControllerFactory;->provideUnfoldAnimationController(Ljava/util/Optional;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;Ldagger/Lazy;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    move-result-object v0

    return-object v0

    .line 102
    :pswitch_4b
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideUnfoldAnimationControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_4c
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetdynamicOverrideOptionalOfUnfoldAnimationControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideShellProgressProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldControllerFactory;->provideUnfoldController(Ldagger/Lazy;Ljava/util/Optional;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_4d
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetcompatUIConfigurationProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;-><init>(Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    return-object v1

    .line 105
    :pswitch_4e
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v1

    .line 106
    :pswitch_4f
    new-instance v1, Lcom/android/wm/shell/common/DockStateReader;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/DockStateReader;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 107
    :pswitch_50
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideRootTaskDisplayAreaOrganizerFactory;->provideRootTaskDisplayAreaOrganizer(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-result-object v0

    return-object v0

    .line 108
    :pswitch_51
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;->provideShellAnimationExecutor()Lcom/android/wm/shell/common/HandlerExecutor;

    move-result-object v0

    return-object v0

    .line 109
    :pswitch_52
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransactionPoolProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/common/TransactionPool;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellAnimationExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRootTaskDisplayAreaOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-static/range {v2 .. v12}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransitionsFactory;->provideTransitions(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object v0

    return-object v0

    .line 110
    :pswitch_53
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransactionPoolProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/TransactionPool;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideSyncTransactionQueueFactory;->provideSyncTransactionQueue(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_54
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayInsetsControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayImeControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSyncTransactionQueueProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v10

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetdockStateReaderProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/common/DockStateReader;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetcompatUIConfigurationProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetcompatUIShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    invoke-static/range {v2 .. v13}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->provideCompatUIController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ldagger/Lazy;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;)Lcom/android/wm/shell/compatui/CompatUIController;

    move-result-object v0

    return-object v0

    .line 112
    :pswitch_55
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideCompatUIControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/compatui/CompatUIController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideUnfoldControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesMiuiInfiniteModeTaskRepositoryProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRecentTasksControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/Optional;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->provideShellTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object v0

    return-object v0

    .line 113
    :pswitch_56
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIconProviderFactory;->provideIconProvider(Landroid/content/Context;)Lcom/android/launcher3/icons/IconProvider;

    move-result-object v0

    return-object v0

    .line 114
    :pswitch_57
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellCommandHandlerFactory;->provideShellCommandHandler()Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-result-object v0

    return-object v0

    .line 115
    :pswitch_58
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v1, v2, v3, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellControllerFactory;->provideShellController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/sysui/ShellController;

    move-result-object v0

    return-object v0

    .line 116
    :pswitch_59
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellCommandHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideUiEventLoggerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/logging/UiEventLogger;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideIconProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/icons/IconProvider;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDragAndDropControllerFactory;->provideDragAndDropController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 117
    :pswitch_5a
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory;->provideTransactionPool()Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v0

    return-object v0

    .line 118
    :pswitch_5b
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideIWindowManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowManager;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/DisplayController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v1, v2, v3, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayInsetsControllerFactory;->provideDisplayInsetsController(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DisplayInsetsController;

    move-result-object v0

    return-object v0

    .line 119
    :pswitch_5c
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideIWindowManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/IWindowManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayInsetsControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransactionPoolProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/wm/shell/common/TransactionPool;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 120
    new-instance v0, Lcom/android/wm/shell/common/DisplayImeController;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/common/DisplayImeController;-><init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TransactionPool;)V

    return-object v0

    .line 121
    :pswitch_5d
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideMainHandlerFactory;->provideMainHandler$1()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSysUIMainExecutorFactory;->provideSysUIMainExecutor(Landroid/os/Handler;)Lcom/android/wm/shell/common/HandlerExecutor;

    move-result-object v0

    return-object v0

    .line 122
    :pswitch_5e
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetsetShellMainThread(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideMainHandlerFactory;->provideMainHandler$1()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;->provideShellMainHandler(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 123
    :pswitch_5f
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSysUIMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f05002f    # @bool/config_enableShellMainThread 'true'

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 125
    new-instance v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-direct {v0, v2}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 126
    :cond_6
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    .line 127
    :pswitch_60
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 128
    invoke-static {}, Lcom/android/systemui/wmshell/MiuiWMShellStub;->init()V

    .line 129
    new-instance v0, Lcom/android/wm/shell/sysui/ShellInit;

    invoke-direct {v0}, Lcom/android/wm/shell/sysui/ShellInit;-><init>()V

    return-object v0

    .line 130
    :pswitch_61
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->-$$Nest$fgetprovideIWindowManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowManager;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellInitProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v1, v2, v3, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayControllerFactory;->provideDisplayController(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    return-object v0

    .line 131
    :pswitch_62
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayImeControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDisplayInsetsControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideDragAndDropControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellTaskOrganizerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideBubbleControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideSoScSplitScreenControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidePipTouchHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideFullscreenTaskListenerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideUnfoldControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideUnfoldTransitionHandlerProvider2(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideFreeformComponentsProvider2(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideMiuiFreeformControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideMiuiInfinityModeControllerProvider2(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideMiuiDesktopModeControllerProvider2(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRecentTasksControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideRecentsTransitionHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovidesOneHandedControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideHideDisplayCutoutControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideActivityEmbeddingControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideTransitionsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideStartingWindowControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideProtoLogControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/ProtoLogController;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideIndependentShellComponentsToCreateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideIndependentShellComponentsToCreateFactory;->provideIndependentShellComponentsToCreate()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 132
    :pswitch_63
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideIndependentShellComponentsToCreateProvider2(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->-$$Nest$fgetprovideShellControllerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/sysui/ShellController;

    invoke-static {v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellSysuiCallbacksFactory;->provideShellSysuiCallbacks(Lcom/android/wm/shell/sysui/ShellController;)Lcom/android/wm/shell/sysui/ShellInterface;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get1()Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->id:I

    .line 4
    const/4 v2, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    new-instance v1, Ljava/lang/AssertionError;

    .line 10
    iget v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->id:I

    .line 12
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 14
    throw v1

    .line 17
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiFreeformControllerProvider:Ljavax/inject/Provider;

    .line 20
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/Optional;

    .line 26
    const/4 v1, 0x6

    .line 28
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 29
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 34
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideWindowDecorRectControllerProvider:Ljavax/inject/Provider;

    .line 36
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 42
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->asWindowDecorRectDispatcher()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher;

    .line 44
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 48
    move-result-object v0

    .line 51
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 52
    return-object v0

    .line 55
    :pswitch_2
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 56
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideDesktopModeControllerProvider2:Ljavax/inject/Provider;

    .line 58
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 63
    check-cast v1, Ljava/util/Optional;

    .line 64
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 66
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->providesDesktopTasksControllerProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 73
    check-cast v0, Ljava/util/Optional;

    .line 74
    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDesktopModeFactory;->provideDesktopMode(Ljava/util/Optional;Ljava/util/Optional;)Ljava/util/Optional;

    .line 76
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :pswitch_3
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 81
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 83
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 88
    check-cast v0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 89
    new-instance v1, Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 91
    invoke-direct {v1, v0}, Lcom/android/wm/shell/back/BackAnimationBackground;-><init>(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    .line 93
    return-object v1

    .line 96
    :pswitch_4
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 97
    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 99
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 101
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 103
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 105
    move-result-object v1

    .line 108
    move-object v7, v1

    .line 109
    check-cast v7, Lcom/android/wm/shell/sysui/ShellInit;

    .line 110
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 112
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 114
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 116
    move-result-object v1

    .line 119
    move-object v6, v1

    .line 120
    check-cast v6, Lcom/android/wm/shell/sysui/ShellController;

    .line 121
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 123
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 125
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 130
    move-object v5, v1

    .line 131
    check-cast v5, Lcom/android/wm/shell/common/ShellExecutor;

    .line 132
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 134
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSharedBackgroundHandlerProvider:Ljavax/inject/Provider;

    .line 136
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 138
    move-result-object v1

    .line 141
    move-object v3, v1

    .line 142
    check-cast v3, Landroid/os/Handler;

    .line 143
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 145
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideBackAnimationBackgroundProvider:Ljavax/inject/Provider;

    .line 147
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 149
    move-result-object v0

    .line 152
    move-object v4, v0

    .line 153
    check-cast v4, Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 154
    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationControllerFactory;->provideBackAnimationController(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellInit;)Ljava/util/Optional;

    .line 156
    move-result-object v0

    .line 159
    return-object v0

    .line 160
    :pswitch_5
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 161
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideBackAnimationControllerProvider:Ljavax/inject/Provider;

    .line 163
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 165
    move-result-object v0

    .line 168
    check-cast v0, Ljava/util/Optional;

    .line 169
    const/16 v1, 0xa

    .line 171
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 173
    move-result-object v0

    .line 176
    return-object v0

    .line 177
    :pswitch_6
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 178
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 180
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 182
    move-result-object v0

    .line 185
    check-cast v0, Ljava/util/Optional;

    .line 186
    const/4 v1, 0x2

    .line 188
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 189
    move-result-object v0

    .line 192
    return-object v0

    .line 193
    :pswitch_7
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 194
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 196
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 198
    move-result-object v1

    .line 201
    check-cast v1, Lcom/android/wm/shell/common/ShellExecutor;

    .line 202
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 204
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideRootDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 206
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 208
    move-result-object v0

    .line 211
    check-cast v0, Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    .line 212
    new-instance v2, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;

    .line 214
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/RootDisplayAreaOrganizer;)V

    .line 216
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 219
    move-result-object v0

    .line 222
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 223
    return-object v0

    .line 226
    :pswitch_8
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 227
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideStartingWindowControllerProvider:Ljavax/inject/Provider;

    .line 229
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 231
    move-result-object v0

    .line 234
    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 235
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mImpl:Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    .line 237
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 239
    move-result-object v0

    .line 242
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 243
    return-object v0

    .line 246
    :pswitch_9
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 247
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideKeyguardTransitionHandlerProvider:Ljavax/inject/Provider;

    .line 249
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 251
    move-result-object v0

    .line 254
    check-cast v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    new-instance v1, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;

    .line 260
    invoke-direct {v1, v0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V

    .line 262
    return-object v1

    .line 265
    :pswitch_a
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 266
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 268
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 270
    move-result-object v0

    .line 273
    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    .line 274
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    .line 276
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 278
    return-object v0

    .line 281
    :pswitch_b
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 282
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 284
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 286
    move-result-object v1

    .line 289
    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 290
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 292
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 294
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 296
    move-result-object v2

    .line 299
    check-cast v2, Lcom/android/wm/shell/common/ShellExecutor;

    .line 300
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 302
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 304
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 306
    move-result-object v3

    .line 309
    check-cast v3, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 310
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 312
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTaskViewTransitionsProvider:Ljavax/inject/Provider;

    .line 314
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 316
    move-result-object v0

    .line 319
    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 320
    new-instance v4, Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    .line 322
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/taskview/TaskViewFactoryController;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/taskview/TaskViewTransitions;)V

    .line 324
    return-object v4

    .line 327
    :pswitch_c
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 328
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTaskViewFactoryControllerProvider:Ljavax/inject/Provider;

    .line 330
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 332
    move-result-object v0

    .line 335
    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    .line 336
    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;->mImpl:Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;

    .line 338
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 340
    move-result-object v0

    .line 343
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 344
    return-object v0

    .line 347
    :pswitch_d
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 348
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideBubbleControllerProvider:Ljavax/inject/Provider;

    .line 350
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 352
    move-result-object v0

    .line 355
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 356
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 358
    move-result-object v0

    .line 361
    const/4 v1, 0x5

    .line 362
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 363
    move-result-object v0

    .line 366
    return-object v0

    .line 367
    :pswitch_e
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 368
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSoScSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 370
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 372
    move-result-object v0

    .line 375
    check-cast v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 376
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 378
    move-result-object v0

    .line 381
    const/16 v1, 0x9

    .line 382
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 384
    move-result-object v0

    .line 387
    return-object v0

    .line 388
    :pswitch_f
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 389
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 391
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 393
    move-result-object v0

    .line 396
    check-cast v0, Ljava/util/Optional;

    .line 397
    const/4 v1, 0x3

    .line 399
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 400
    move-result-object v0

    .line 403
    return-object v0

    .line 404
    :pswitch_10
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 405
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->providesOneHandedControllerProvider:Ljavax/inject/Provider;

    .line 407
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 409
    move-result-object v0

    .line 412
    check-cast v0, Ljava/util/Optional;

    .line 413
    const/16 v1, 0xb

    .line 415
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 417
    move-result-object v0

    .line 420
    return-object v0

    .line 421
    :pswitch_11
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 422
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 424
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 426
    move-result-object v1

    .line 429
    move-object v4, v1

    .line 430
    check-cast v4, Lcom/android/wm/shell/sysui/ShellInit;

    .line 431
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 433
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSoScSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 435
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 437
    move-result-object v1

    .line 440
    check-cast v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 441
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 443
    move-result-object v7

    .line 446
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 447
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->providePipTouchHandlerProvider:Ljavax/inject/Provider;

    .line 449
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 451
    move-result-object v1

    .line 454
    check-cast v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 455
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 457
    move-result-object v8

    .line 460
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 461
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiFreeformControllerProvider:Ljavax/inject/Provider;

    .line 463
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 465
    move-result-object v1

    .line 468
    move-object v11, v1

    .line 469
    check-cast v11, Ljava/util/Optional;

    .line 470
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 472
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideRecentsTransitionHandlerProvider:Ljavax/inject/Provider;

    .line 474
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 476
    move-result-object v1

    .line 479
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 480
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 482
    move-result-object v9

    .line 485
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 486
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideKeyguardTransitionHandlerProvider:Ljavax/inject/Provider;

    .line 488
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 490
    move-result-object v1

    .line 493
    move-object v3, v1

    .line 494
    check-cast v3, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 495
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 497
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideUnfoldTransitionHandlerProvider2:Ljavax/inject/Provider;

    .line 499
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 501
    move-result-object v1

    .line 504
    move-object v10, v1

    .line 505
    check-cast v10, Ljava/util/Optional;

    .line 506
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 508
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 510
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 512
    move-result-object v1

    .line 515
    move-object v6, v1

    .line 516
    check-cast v6, Lcom/android/wm/shell/transition/Transitions;

    .line 517
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 519
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideDefaultMixedHandlerProvider:Ljavax/inject/Provider;

    .line 521
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 523
    move-result-object v0

    .line 526
    move-object v5, v0

    .line 527
    check-cast v5, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 528
    new-instance v0, Lcom/android/wm/shell/transition/SoScMixedHandler;

    .line 530
    move-object v2, v0

    .line 532
    invoke-direct/range {v2 .. v11}, Lcom/android/wm/shell/transition/SoScMixedHandler;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V

    .line 533
    return-object v0

    .line 536
    :pswitch_12
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 537
    iget-object v3, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 539
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 541
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 543
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 545
    move-result-object v1

    .line 548
    move-object v4, v1

    .line 549
    check-cast v4, Lcom/android/wm/shell/sysui/ShellInit;

    .line 550
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 552
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 554
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 556
    move-result-object v1

    .line 559
    move-object v5, v1

    .line 560
    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    .line 561
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 563
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 565
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 567
    move-result-object v1

    .line 570
    move-object v6, v1

    .line 571
    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    .line 572
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 574
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 576
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 578
    move-result-object v1

    .line 581
    move-object v7, v1

    .line 582
    check-cast v7, Lcom/android/internal/logging/UiEventLogger;

    .line 583
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 585
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 587
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 589
    move-result-object v1

    .line 592
    move-object v8, v1

    .line 593
    check-cast v8, Lcom/android/wm/shell/common/ShellExecutor;

    .line 594
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 596
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 598
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 600
    move-result-object v1

    .line 603
    move-object v9, v1

    .line 604
    check-cast v9, Lcom/android/wm/shell/transition/Transitions;

    .line 605
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 607
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 609
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 611
    move-result-object v1

    .line 614
    move-object v10, v1

    .line 615
    check-cast v10, Lcom/android/wm/shell/common/TransactionPool;

    .line 616
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 618
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 620
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 622
    move-result-object v1

    .line 625
    move-object v11, v1

    .line 626
    check-cast v11, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 627
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 629
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiTipsControllerProvider:Ljavax/inject/Provider;

    .line 631
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 633
    move-result-object v1

    .line 636
    move-object v12, v1

    .line 637
    check-cast v12, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 638
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 640
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiFreeformModeTaskRepositoryProvider:Ljavax/inject/Provider;

    .line 642
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 644
    move-result-object v1

    .line 647
    move-object v13, v1

    .line 648
    check-cast v13, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 649
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 651
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSoScSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 653
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 655
    move-result-object v1

    .line 658
    move-object v14, v1

    .line 659
    check-cast v14, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 660
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 662
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiMultiWinCallbacksProvider:Ljavax/inject/Provider;

    .line 664
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 666
    move-result-object v0

    .line 669
    move-object v15, v0

    .line 670
    check-cast v15, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    .line 671
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;

    .line 673
    move-object v2, v0

    .line 675
    invoke-direct/range {v2 .. v15}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;)V

    .line 676
    return-object v0

    .line 679
    :pswitch_13
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 680
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 682
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 684
    move-result-object v1

    .line 687
    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    .line 688
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 690
    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 692
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 694
    move-result-object v2

    .line 697
    check-cast v2, Lcom/android/wm/shell/transition/Transitions;

    .line 698
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 700
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 702
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 704
    move-result-object v3

    .line 707
    check-cast v3, Landroid/os/Handler;

    .line 708
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 710
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 712
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 714
    move-result-object v0

    .line 717
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 718
    new-instance v3, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 720
    invoke-direct {v3, v1, v2, v0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 722
    return-object v3

    .line 725
    :pswitch_14
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 726
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 728
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 730
    move-result-object v1

    .line 733
    move-object v4, v1

    .line 734
    check-cast v4, Lcom/android/wm/shell/sysui/ShellInit;

    .line 735
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 737
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 739
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 741
    move-result-object v1

    .line 744
    move-object v6, v1

    .line 745
    check-cast v6, Ljava/util/Optional;

    .line 746
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 748
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->providePipTouchHandlerProvider:Ljavax/inject/Provider;

    .line 750
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 752
    move-result-object v1

    .line 755
    check-cast v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 756
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 758
    move-result-object v7

    .line 761
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 762
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiFreeformControllerProvider:Ljavax/inject/Provider;

    .line 764
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 766
    move-result-object v1

    .line 769
    move-object v10, v1

    .line 770
    check-cast v10, Ljava/util/Optional;

    .line 771
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 773
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideRecentsTransitionHandlerProvider:Ljavax/inject/Provider;

    .line 775
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 777
    move-result-object v1

    .line 780
    check-cast v1, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 781
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 783
    move-result-object v8

    .line 786
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 787
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideKeyguardTransitionHandlerProvider:Ljavax/inject/Provider;

    .line 789
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 791
    move-result-object v1

    .line 794
    move-object v3, v1

    .line 795
    check-cast v3, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 796
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 798
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideUnfoldTransitionHandlerProvider2:Ljavax/inject/Provider;

    .line 800
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 802
    move-result-object v1

    .line 805
    move-object v9, v1

    .line 806
    check-cast v9, Ljava/util/Optional;

    .line 807
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 809
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 811
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 813
    move-result-object v0

    .line 816
    move-object v5, v0

    .line 817
    check-cast v5, Lcom/android/wm/shell/transition/Transitions;

    .line 818
    new-instance v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 820
    move-object v2, v0

    .line 822
    invoke-direct/range {v2 .. v10}, Lcom/android/wm/shell/transition/DefaultMixedHandler;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V

    .line 823
    return-object v0

    .line 826
    :pswitch_15
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 827
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideDefaultMixedHandlerProvider:Ljavax/inject/Provider;

    .line 829
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 831
    move-result-object v1

    .line 834
    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 835
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 837
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiDragAndDropControllerProvider:Ljavax/inject/Provider;

    .line 839
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 841
    move-result-object v1

    .line 844
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragAndDropController;

    .line 845
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 847
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSoScMixedHandlerProvider:Ljavax/inject/Provider;

    .line 849
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 851
    move-result-object v1

    .line 854
    check-cast v1, Lcom/android/wm/shell/transition/SoScMixedHandler;

    .line 855
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 857
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideDesktopModeControllerProvider2:Ljavax/inject/Provider;

    .line 859
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 861
    move-result-object v0

    .line 864
    check-cast v0, Ljava/util/Optional;

    .line 865
    new-instance v0, Ljava/lang/Object;

    .line 867
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 869
    return-object v0

    .line 872
    :pswitch_16
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 873
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 875
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 877
    move-result-object v1

    .line 880
    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    .line 881
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 883
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 885
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 887
    move-result-object v0

    .line 890
    check-cast v0, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 891
    new-instance v2, Lcom/android/wm/shell/ProtoLogController;

    .line 893
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/ProtoLogController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V

    .line 895
    return-object v2

    .line 898
    :pswitch_17
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 899
    move-result-object v0

    .line 902
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 903
    move-result v1

    .line 906
    if-eqz v1, :cond_0

    .line 907
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 909
    move-result-object v0

    .line 912
    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 913
    goto :goto_0

    .line 915
    :cond_0
    new-instance v0, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;

    .line 916
    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;-><init>()V

    .line 918
    :goto_0
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 921
    return-object v0

    .line 924
    :pswitch_18
    new-instance v0, Landroid/os/HandlerThread;

    .line 925
    const-string/jumbo v1, "wmshell.splashscreen"

    .line 927
    const/16 v2, -0xa

    .line 930
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 932
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 935
    new-instance v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 938
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 940
    move-result-object v0

    .line 943
    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 944
    return-object v1

    .line 947
    :pswitch_19
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 948
    iget-object v3, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 950
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 952
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 954
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 956
    move-result-object v1

    .line 959
    move-object v4, v1

    .line 960
    check-cast v4, Lcom/android/wm/shell/sysui/ShellInit;

    .line 961
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 963
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 965
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 967
    move-result-object v1

    .line 970
    move-object v5, v1

    .line 971
    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    .line 972
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 974
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 976
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 978
    move-result-object v1

    .line 981
    move-object v6, v1

    .line 982
    check-cast v6, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 983
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 985
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSplashScreenExecutorProvider:Ljavax/inject/Provider;

    .line 987
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 989
    move-result-object v1

    .line 992
    move-object v7, v1

    .line 993
    check-cast v7, Lcom/android/wm/shell/common/ShellExecutor;

    .line 994
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 996
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideStartingWindowTypeAlgorithmProvider:Ljavax/inject/Provider;

    .line 998
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1000
    move-result-object v1

    .line 1003
    move-object v8, v1

    .line 1004
    check-cast v8, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 1005
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1007
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    .line 1009
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1011
    move-result-object v1

    .line 1014
    move-object v9, v1

    .line 1015
    check-cast v9, Lcom/android/launcher3/icons/IconProvider;

    .line 1016
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1018
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 1020
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1022
    move-result-object v0

    .line 1025
    move-object v10, v0

    .line 1026
    check-cast v10, Lcom/android/wm/shell/common/TransactionPool;

    .line 1027
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 1029
    move-object v2, v0

    .line 1031
    invoke-direct/range {v2 .. v10}, Lcom/android/wm/shell/startingsurface/StartingWindowController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;)V

    .line 1032
    return-object v0

    .line 1035
    :pswitch_1a
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1036
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1038
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1040
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1044
    move-result-object v3

    .line 1047
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 1048
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1050
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 1052
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1054
    move-result-object v0

    .line 1057
    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    .line 1058
    sget-boolean v4, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 1060
    if-eqz v4, :cond_1

    .line 1062
    new-instance v2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    .line 1064
    invoke-direct {v2, v1, v3, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)V

    .line 1066
    :cond_1
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1069
    move-result-object v0

    .line 1072
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1073
    return-object v0

    .line 1076
    :pswitch_1b
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1077
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1079
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1081
    move-result-object v1

    .line 1084
    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    .line 1085
    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1087
    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 1089
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1091
    move-result-object v3

    .line 1094
    check-cast v3, Lcom/android/wm/shell/transition/Transitions;

    .line 1095
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1097
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 1099
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1101
    move-result-object v0

    .line 1104
    check-cast v0, Ljava/util/Optional;

    .line 1105
    new-instance v4, Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 1107
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    move-result-object v0

    .line 1112
    check-cast v0, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 1113
    invoke-direct {v4, v1, v3, v0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 1115
    return-object v4

    .line 1118
    :pswitch_1c
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1119
    iget-object v3, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1121
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1123
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1125
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1127
    move-result-object v1

    .line 1130
    move-object v4, v1

    .line 1131
    check-cast v4, Lcom/android/wm/shell/sysui/ShellInit;

    .line 1132
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1134
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 1136
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1138
    move-result-object v1

    .line 1141
    move-object v5, v1

    .line 1142
    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    .line 1143
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1145
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1147
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1149
    move-result-object v1

    .line 1152
    move-object v6, v1

    .line 1153
    check-cast v6, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1154
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1156
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 1158
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1160
    move-result-object v1

    .line 1163
    move-object v7, v1

    .line 1164
    check-cast v7, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 1165
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1167
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 1169
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1171
    move-result-object v1

    .line 1174
    move-object v8, v1

    .line 1175
    check-cast v8, Lcom/android/wm/shell/transition/Transitions;

    .line 1176
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1178
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSoScSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 1180
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1182
    move-result-object v1

    .line 1185
    move-object v9, v1

    .line 1186
    check-cast v9, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1187
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1189
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiDesktopModeTaskRepositoryProvider:Ljavax/inject/Provider;

    .line 1191
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1193
    move-result-object v1

    .line 1196
    move-object v10, v1

    .line 1197
    check-cast v10, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    .line 1198
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1200
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiFreeformModeControllerProvider:Ljavax/inject/Provider;

    .line 1202
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1204
    move-result-object v1

    .line 1207
    move-object v11, v1

    .line 1208
    check-cast v11, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 1209
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1211
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiFreeformModeTaskRepositoryProvider:Ljavax/inject/Provider;

    .line 1213
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1215
    move-result-object v1

    .line 1218
    move-object v12, v1

    .line 1219
    check-cast v12, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 1220
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1222
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 1224
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1226
    move-result-object v1

    .line 1229
    move-object v13, v1

    .line 1230
    check-cast v13, Ljava/util/Optional;

    .line 1231
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1233
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1235
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1237
    move-result-object v1

    .line 1240
    move-object v14, v1

    .line 1241
    check-cast v14, Landroid/os/Handler;

    .line 1242
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1244
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    .line 1246
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1248
    move-result-object v0

    .line 1251
    move-object v15, v0

    .line 1252
    check-cast v15, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 1253
    new-instance v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 1255
    move-object v2, v0

    .line 1257
    invoke-direct/range {v2 .. v15}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Ljava/util/Optional;Landroid/os/Handler;Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V

    .line 1258
    return-object v0

    .line 1261
    :pswitch_1d
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1262
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiDesktopModeControllerProvider:Ljavax/inject/Provider;

    .line 1264
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1266
    move-result-object v0

    .line 1269
    check-cast v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 1270
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1272
    move-result-object v0

    .line 1275
    sget-boolean v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->IS_SUPPORTED:Z

    .line 1276
    if-eqz v1, :cond_2

    .line 1278
    goto :goto_1

    .line 1280
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 1281
    move-result-object v0

    .line 1284
    :goto_1
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1285
    return-object v0

    .line 1288
    :pswitch_1e
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1289
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiInfinityModeControllerProvider:Ljavax/inject/Provider;

    .line 1291
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1293
    move-result-object v0

    .line 1296
    check-cast v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 1297
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1299
    move-result-object v0

    .line 1302
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->isMiuiInfiniteRadioFeatureEnable()Z

    .line 1303
    move-result v1

    .line 1306
    if-eqz v1, :cond_3

    .line 1307
    goto :goto_2

    .line 1309
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 1310
    move-result-object v0

    .line 1313
    :goto_2
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1314
    return-object v0

    .line 1317
    :pswitch_1f
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1318
    iget-object v3, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1320
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1322
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    .line 1324
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1326
    move-result-object v1

    .line 1329
    move-object v4, v1

    .line 1330
    check-cast v4, Lcom/android/launcher3/icons/IconProvider;

    .line 1331
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1333
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1335
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1337
    move-result-object v1

    .line 1340
    move-object v5, v1

    .line 1341
    check-cast v5, Lcom/android/wm/shell/sysui/ShellInit;

    .line 1342
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1344
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 1346
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1348
    move-result-object v1

    .line 1351
    move-object v6, v1

    .line 1352
    check-cast v6, Lcom/android/wm/shell/sysui/ShellController;

    .line 1353
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1355
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1357
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1359
    move-result-object v1

    .line 1362
    move-object v7, v1

    .line 1363
    check-cast v7, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1364
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1366
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 1368
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1370
    move-result-object v1

    .line 1373
    move-object v8, v1

    .line 1374
    check-cast v8, Lcom/android/wm/shell/common/DisplayController;

    .line 1375
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1377
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 1379
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1381
    move-result-object v1

    .line 1384
    move-object v11, v1

    .line 1385
    check-cast v11, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 1386
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1388
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 1390
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1392
    move-result-object v1

    .line 1395
    move-object v12, v1

    .line 1396
    check-cast v12, Lcom/android/wm/shell/transition/Transitions;

    .line 1397
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1399
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSoScSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 1401
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1403
    move-result-object v1

    .line 1406
    check-cast v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1407
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1409
    move-result-object v13

    .line 1412
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1413
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiFreeformModeTaskRepositoryProvider:Ljavax/inject/Provider;

    .line 1415
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1417
    move-result-object v1

    .line 1420
    move-object v9, v1

    .line 1421
    check-cast v9, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 1422
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1424
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiInfiniteModeTaskRepositoryProvider:Ljavax/inject/Provider;

    .line 1426
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1428
    move-result-object v1

    .line 1431
    move-object v10, v1

    .line 1432
    check-cast v10, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 1433
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1435
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1437
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1439
    move-result-object v1

    .line 1442
    move-object v15, v1

    .line 1443
    check-cast v15, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1444
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1446
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1448
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1450
    move-result-object v1

    .line 1453
    move-object v14, v1

    .line 1454
    check-cast v14, Landroid/os/Handler;

    .line 1455
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1457
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSharedBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1459
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1461
    move-result-object v1

    .line 1464
    move-object/from16 v16, v1

    .line 1465
    check-cast v16, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1467
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1469
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideWindowDecorViewModelProvider:Ljavax/inject/Provider;

    .line 1471
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1473
    move-result-object v1

    .line 1476
    move-object/from16 v17, v1

    .line 1477
    check-cast v17, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 1479
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1481
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 1483
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1485
    move-result-object v0

    .line 1488
    move-object/from16 v18, v0

    .line 1489
    check-cast v18, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 1491
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 1493
    move-object v2, v0

    .line 1495
    invoke-direct/range {v2 .. v18}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;-><init>(Landroid/content/Context;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V

    .line 1496
    return-object v0

    .line 1499
    :pswitch_20
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1500
    iget-object v3, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 1502
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1504
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 1506
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1508
    move-result-object v1

    .line 1511
    move-object v4, v1

    .line 1512
    check-cast v4, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 1513
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1515
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1517
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1519
    move-result-object v1

    .line 1522
    move-object v5, v1

    .line 1523
    check-cast v5, Lcom/android/wm/shell/sysui/ShellInit;

    .line 1524
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1526
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 1528
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1530
    move-result-object v1

    .line 1533
    move-object v6, v1

    .line 1534
    check-cast v6, Lcom/android/wm/shell/sysui/ShellController;

    .line 1535
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1537
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1539
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1541
    move-result-object v1

    .line 1544
    move-object v7, v1

    .line 1545
    check-cast v7, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1546
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1548
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 1550
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1552
    move-result-object v1

    .line 1555
    move-object v8, v1

    .line 1556
    check-cast v8, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 1557
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1559
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 1561
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1563
    move-result-object v1

    .line 1566
    move-object v9, v1

    .line 1567
    check-cast v9, Lcom/android/wm/shell/transition/Transitions;

    .line 1568
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1570
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 1572
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1574
    move-result-object v1

    .line 1577
    move-object v10, v1

    .line 1578
    check-cast v10, Ljava/util/Optional;

    .line 1579
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1581
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiFreeformModeTaskRepositoryProvider:Ljavax/inject/Provider;

    .line 1583
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1585
    move-result-object v1

    .line 1588
    move-object v11, v1

    .line 1589
    check-cast v11, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 1590
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1592
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiInfinityModeControllerProvider:Ljavax/inject/Provider;

    .line 1594
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1596
    move-result-object v1

    .line 1599
    move-object v12, v1

    .line 1600
    check-cast v12, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 1601
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1603
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1605
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1607
    move-result-object v1

    .line 1610
    move-object v13, v1

    .line 1611
    check-cast v13, Landroid/os/Handler;

    .line 1612
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1614
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1616
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1618
    move-result-object v1

    .line 1621
    move-object v14, v1

    .line 1622
    check-cast v14, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1623
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1625
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideSharedBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 1627
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1629
    move-result-object v1

    .line 1632
    move-object v15, v1

    .line 1633
    check-cast v15, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1634
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1636
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 1638
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1640
    move-result-object v1

    .line 1643
    move-object/from16 v16, v1

    .line 1644
    check-cast v16, Lcom/android/wm/shell/common/DisplayController;

    .line 1646
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1648
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideWindowDecorViewModelProvider:Ljavax/inject/Provider;

    .line 1650
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1652
    move-result-object v1

    .line 1655
    move-object/from16 v17, v1

    .line 1656
    check-cast v17, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 1658
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1660
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 1662
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1664
    move-result-object v1

    .line 1667
    move-object/from16 v18, v1

    .line 1668
    check-cast v18, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 1670
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1672
    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 1674
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1676
    move-result-object v1

    .line 1679
    move-object/from16 v19, v1

    .line 1680
    check-cast v19, Ljava/util/Optional;

    .line 1682
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1684
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 1686
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1688
    move-result-object v0

    .line 1691
    move-object/from16 v20, v0

    .line 1692
    check-cast v20, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 1694
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 1696
    move-object v2, v0

    .line 1698
    invoke-direct/range {v2 .. v20}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V

    .line 1699
    return-object v0

    .line 1702
    :pswitch_21
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider;->wMComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    .line 1703
    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;->provideMiuiFreeformModeControllerProvider:Ljavax/inject/Provider;

    .line 1705
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1707
    move-result-object v0

    .line 1710
    check-cast v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 1711
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1713
    move-result-object v0

    .line 1716
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeStatus;->isEnabled()Z

    .line 1717
    move-result v1

    .line 1720
    if-eqz v1, :cond_4

    .line 1721
    goto :goto_3

    .line 1723
    :cond_4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 1724
    move-result-object v0

    .line 1727
    :goto_3
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1728
    return-object v0

    .line 1731
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 1732
.end method

.class public final Lcom/android/systemui/globalactions/GlobalActionsComponent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# instance fields
.field public mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

.field public final mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

.field public final mGlobalActionsProvider:Ljavax/inject/Provider;

.field public mPlugin:Lcom/android/systemui/plugins/GlobalActions;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ExtensionController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mGlobalActionsProvider:Ljavax/inject/Provider;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final handleShowGlobalActionsMenu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    .line 12
    check-cast v0, Lcom/android/systemui/plugins/GlobalActions;

    .line 14
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/GlobalActions;->showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    .line 16
    return-void
    .line 19
.end method

.method public final handleShowShutdownUi(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    .line 4
    check-cast p0, Lcom/android/systemui/plugins/GlobalActions;

    .line 6
    invoke-interface {p0, p2, p1}, Lcom/android/systemui/plugins/GlobalActions;->showShutdownUi(ZLjava/lang/String;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onGlobalActionsHidden()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 10
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->onGlobalActionsHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    return-void
    .line 15
.end method

.method public final onGlobalActionsShown()V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->onGlobalActionsShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    return-void
    .line 7
.end method

.method public final reboot(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2, p1}, Lcom/miui/systemui/util/ShutDownPasswordUtils;->exeShutDownOrReboot(Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;ZZ)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 14
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->reboot(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    return-void
    .line 19
.end method

.method public final shutdown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 6
    invoke-static {v0, v3, v1, v2}, Lcom/miui/systemui/util/ShutDownPasswordUtils;->exeShutDownOrReboot(Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;ZZ)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 15
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    return-void
    .line 20
.end method

.method public final start()V
    .locals 5

    .line 1
    const-string/jumbo v0, "statusbar"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionController;

    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    .line 22
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V

    .line 24
    const-class v0, Lcom/android/systemui/plugins/GlobalActions;

    .line 27
    invoke-static {v0}, Lcom/android/systemui/plugins/PluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 32
    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    .line 33
    new-instance v4, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    .line 35
    invoke-direct {v4, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/lang/String;Ljava/lang/Class;)V

    .line 37
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mGlobalActionsProvider:Ljavax/inject/Provider;

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda0;

    .line 48
    invoke-direct {v2, v0}, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda0;-><init>(Ljavax/inject/Provider;)V

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;

    .line 53
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;-><init>(Ljava/util/function/Supplier;)V

    .line 55
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda1;

    .line 61
    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsComponent$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsComponent;)V

    .line 63
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$$ExternalSyntheticLambda0;

    .line 71
    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 73
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 76
    move-result-object v0

    .line 79
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 80
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-$$Nest$mnotifyChanged(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    .line 83
    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    .line 86
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    .line 88
    check-cast v0, Lcom/android/systemui/plugins/GlobalActions;

    .line 90
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mPlugin:Lcom/android/systemui/plugins/GlobalActions;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsComponent;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 94
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 96
    return-void
    .line 99
.end method

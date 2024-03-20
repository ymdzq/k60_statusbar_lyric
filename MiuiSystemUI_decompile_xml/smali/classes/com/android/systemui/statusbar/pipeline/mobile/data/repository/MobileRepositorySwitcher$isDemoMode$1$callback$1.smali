.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$isDemoMode$1$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$isDemoMode$1$callback$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$isDemoMode$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDemoModeFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$isDemoMode$1$callback$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->demoMobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;->mobileDemoCommandJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;->wifiDemoCommandJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;->_subscriptions:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 21
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 23
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 25
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;->connectionRepoCache:Ljava/util/Map;

    .line 28
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 30
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 32
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;->subscriptionInfoCache:Ljava/util/Map;

    .line 35
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 37
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 39
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$isDemoMode$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 44
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 46
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
    .line 51
.end method

.method public final onDemoModeStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$isDemoMode$1$callback$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->demoMobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;->startProcessingCommands()V

    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$isDemoMode$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 11
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 13
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
    .line 18
.end method

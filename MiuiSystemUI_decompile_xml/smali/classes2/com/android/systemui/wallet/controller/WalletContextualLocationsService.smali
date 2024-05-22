.class public final Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;
.super Landroidx/lifecycle/LifecycleService;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final binder:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;

.field public final controller:Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->controller:Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;

    .line 3
    iput-object p2, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    new-instance p1, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;-><init>(Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;)V

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->binder:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;Lcom/android/systemui/flags/FeatureFlags;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;-><init>(Lcom/android/systemui/wallet/controller/WalletContextualSuggestionsController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 7
    iput-object p3, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final addWalletCardsUpdatedListenerInternal(Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 2
    sget-object p1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-void
    .line 9
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/LifecycleService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    new-instance v0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$onBind$1;

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$onBind$1;-><init>(Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;Lkotlin/coroutines/Continuation;)V

    .line 10
    const/4 v2, 0x3

    .line 13
    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->binder:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;

    .line 17
    return-object p0
    .line 19
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    .line 2
    return-void
    .line 5
.end method

.method public final onWalletContextualLocationsStateUpdatedInternal(Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 2
    sget-object p1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-void
    .line 9
.end method

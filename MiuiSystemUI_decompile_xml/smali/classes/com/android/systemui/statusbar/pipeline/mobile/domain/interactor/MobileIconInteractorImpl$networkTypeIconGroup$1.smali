.class final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$networkTypeIconGroup$1"
    f = "MobileIconInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $connectionRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->$connectionRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;

    .line 4
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p2

    .line 9
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->$connectionRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;

    .line 16
    invoke-direct {v0, v1, p0, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;Lkotlin/coroutines/Continuation;)V

    .line 18
    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->L$0:Ljava/lang/Object;

    .line 21
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->Z$0:Z

    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->label:I

    .line 2
    if-nez v0, :cond_3

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->Z$0:Z

    .line 13
    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->carrierIdOverrides:Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;

    .line 19
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->$connectionRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;

    .line 21
    invoke-interface {v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;->getCarrierId()Lkotlinx/coroutines/flow/StateFlow;

    .line 23
    move-result-object v1

    .line 26
    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Number;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 33
    move-result v1

    .line 36
    iget-object v2, p1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->name:Ljava/lang/String;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl$networkTypeIconGroup$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;->context:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object p0

    .line 46
    check-cast v0, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    sget-object v0, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl;->MAPPING:Ljava/util/Map;

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Integer;

    .line 62
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result v0

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 70
    move-result-object p0

    .line 73
    sget-object v0, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl;->Companion:Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl$Companion;

    .line 74
    invoke-virtual {v0, p0}, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl$Companion;->parseNetworkIconOverrideTypedArray(Landroid/content/res/TypedArray;)Ljava/util/Map;

    .line 76
    move-result-object v0

    .line 79
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 86
    check-cast p0, Ljava/lang/Integer;

    .line 87
    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result p0

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const/4 p0, 0x0

    .line 96
    :goto_0
    if-lez p0, :cond_1

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;

    .line 99
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;-><init>(Lcom/android/settingslib/SignalIcon$MobileIconGroup;I)V

    .line 101
    goto :goto_1

    .line 104
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;

    .line 105
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;-><init>(Lcom/android/settingslib/SignalIcon$MobileIconGroup;)V

    .line 107
    goto :goto_1

    .line 110
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;

    .line 111
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;-><init>(Lcom/android/settingslib/SignalIcon$MobileIconGroup;)V

    .line 113
    :goto_1
    return-object v0

    .line 116
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 117
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 119
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p0
    .line 124
.end method

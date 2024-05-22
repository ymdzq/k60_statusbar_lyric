.class final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconsInteractorImpl$filteredSubscriptions$1"
    f = "MobileIconsInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    .line 2
    const/4 p1, 0x4

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    check-cast p2, Ljava/lang/Integer;

    .line 4
    check-cast p3, Ljava/lang/Integer;

    .line 6
    check-cast p4, Lkotlin/coroutines/Continuation;

    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    .line 12
    invoke-direct {v0, p0, p4}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;Lkotlin/coroutines/Continuation;)V

    .line 14
    iput-object p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;->L$0:Ljava/lang/Object;

    .line 17
    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;->L$1:Ljava/lang/Object;

    .line 19
    iput-object p3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;->L$2:Ljava/lang/Object;

    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    return-object p0
    .line 29
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;->label:I

    .line 2
    if-nez v0, :cond_a

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Ljava/util/List;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;->L$1:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;->L$2:Ljava/lang/Object;

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    return-object p1

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;

    .line 34
    const/4 v3, 0x1

    .line 36
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 40
    check-cast v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;

    .line 41
    iget-object v5, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->groupUuid:Landroid/os/ParcelUuid;

    .line 43
    if-eqz v5, :cond_9

    .line 45
    iget-object v6, v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->groupUuid:Landroid/os/ParcelUuid;

    .line 47
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v5

    .line 52
    if-nez v5, :cond_1

    .line 53
    goto :goto_4

    .line 55
    :cond_1
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isOpportunistic:Z

    .line 56
    if-nez v5, :cond_2

    .line 58
    iget-boolean v6, v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isOpportunistic:Z

    .line 60
    if-nez v6, :cond_2

    .line 62
    return-object p1

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl$filteredSubscriptions$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    .line 67
    iget-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfigLoaded:Z

    .line 69
    if-nez p1, :cond_3

    .line 71
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    .line 73
    move-result-object p1

    .line 76
    const-string v6, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    .line 77
    invoke-virtual {p1, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 79
    move-result p1

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfig:Z

    .line 83
    iput-boolean v3, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfigLoaded:Z

    .line 85
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfig:Z

    .line 87
    if-eqz p0, :cond_5

    .line 89
    if-eqz v5, :cond_4

    .line 91
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 93
    move-result-object p0

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 98
    move-result-object p0

    .line 101
    :goto_0
    return-object p0

    .line 102
    :cond_5
    if-nez v1, :cond_6

    .line 103
    goto :goto_1

    .line 105
    :cond_6
    move-object v0, v1

    .line 106
    :goto_1
    if-nez v0, :cond_7

    .line 107
    goto :goto_2

    .line 109
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 110
    move-result p0

    .line 113
    iget p1, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->subscriptionId:I

    .line 114
    if-ne p1, p0, :cond_8

    .line 116
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 118
    move-result-object p0

    .line 121
    goto :goto_3

    .line 122
    :cond_8
    :goto_2
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 123
    move-result-object p0

    .line 126
    :goto_3
    return-object p0

    .line 127
    :cond_9
    :goto_4
    return-object p1

    .line 128
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 129
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 131
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0
    .line 136
.end method

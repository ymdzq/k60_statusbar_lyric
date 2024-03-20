.class public interface abstract Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public abstract getActiveMobileDataRepository()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
.end method

.method public abstract getActiveMobileDataSubscriptionId()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getActiveSubChangedInGroupEvent()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract getDefaultConnectionIsValidated()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getDefaultDataSubId()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getDefaultDataSubRatConfig()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getDefaultMobileIconGroup()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract getDefaultMobileIconMapping()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract getHasCarrierMergedConnection()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract getMobileIsDefault()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getRepoForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;
.end method

.method public abstract getSubscriptions()Lkotlinx/coroutines/flow/StateFlow;
.end method

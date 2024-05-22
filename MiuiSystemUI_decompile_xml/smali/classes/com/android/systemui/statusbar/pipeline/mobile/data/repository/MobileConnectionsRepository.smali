.class public interface abstract Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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

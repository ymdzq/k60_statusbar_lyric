.class public interface abstract Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract getWifiActivity()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract getWifiNetwork()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isWifiConnectedWithValidSsid()Z
.end method

.method public abstract isWifiDefault()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract isWifiEnabled()Lkotlinx/coroutines/flow/StateFlow;
.end method

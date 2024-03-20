.class public interface abstract Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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

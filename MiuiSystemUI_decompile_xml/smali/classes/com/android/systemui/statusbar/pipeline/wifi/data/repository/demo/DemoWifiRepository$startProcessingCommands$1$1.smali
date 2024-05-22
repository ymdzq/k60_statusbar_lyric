.class public final Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository$startProcessingCommands$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository$startProcessingCommands$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository$startProcessingCommands$1$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of p2, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->_wifiNetwork:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->_wifiActivity:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->_isWifiDefault:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->_isWifiEnabled:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    const/4 v3, 0x0

    .line 19
    if-eqz p2, :cond_2

    .line 20
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;

    .line 22
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 29
    iget p0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->activity:I

    .line 32
    invoke-static {p0}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModelKt;->toWifiDataActivityModel(I)Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    .line 34
    move-result-object p0

    .line 37
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 38
    new-instance p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 41
    const/16 v5, 0x4d2

    .line 43
    iget-object p2, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->validated:Ljava/lang/Boolean;

    .line 45
    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    move-result p2

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p2, 0x1

    .line 54
    :goto_0
    move v6, p2

    .line 55
    iget-object p2, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->level:Ljava/lang/Integer;

    .line 56
    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v3

    .line 63
    :cond_1
    move v7, v3

    .line 64
    iget-object v8, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->ssid:Ljava/lang/String;

    .line 65
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v11, 0x0

    .line 69
    move-object v4, p0

    .line 70
    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;-><init>(IZILjava/lang/String;ZZLjava/lang/String;)V

    .line 71
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 74
    goto :goto_1

    .line 77
    :cond_2
    instance-of p2, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;

    .line 78
    if-eqz p2, :cond_3

    .line 80
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;

    .line 82
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 84
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 89
    iget p0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->activity:I

    .line 92
    invoke-static {p0}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModelKt;->toWifiDataActivityModel(I)Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    .line 94
    move-result-object p0

    .line 97
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 98
    new-instance p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$CarrierMerged;

    .line 101
    const/16 p2, 0x4d2

    .line 103
    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->subscriptionId:I

    .line 105
    iget v2, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->level:I

    .line 107
    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->numberOfLevels:I

    .line 109
    invoke-direct {p0, p2, v1, v2, p1}, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$CarrierMerged;-><init>(IIII)V

    .line 111
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 114
    goto :goto_1

    .line 117
    :cond_3
    instance-of p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$WifiDisabled;

    .line 118
    if-eqz p1, :cond_4

    .line 120
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 122
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 127
    new-instance p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;

    .line 130
    invoke-direct {p0, v3, v3}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DataActivityModel;-><init>(ZZ)V

    .line 132
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 135
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;

    .line 138
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 140
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 143
    return-object p0

    .line 145
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 146
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 148
    throw p0
    .line 151
.end method

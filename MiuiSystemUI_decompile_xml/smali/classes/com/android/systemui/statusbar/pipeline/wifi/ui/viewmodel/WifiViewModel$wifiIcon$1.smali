.class final Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.pipeline.wifi.ui.viewmodel.WifiViewModel$wifiIcon$1"
    f = "WifiViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $connectivityConstants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

.field final synthetic $wifiConstants:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->$wifiConstants:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->$connectivityConstants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    .line 6
    const/4 p1, 0x5

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p2

    .line 13
    check-cast p3, Ljava/lang/Boolean;

    .line 14
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    move-result p3

    .line 19
    check-cast p4, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    .line 20
    check-cast p5, Lkotlin/coroutines/Continuation;

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;

    .line 24
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    .line 26
    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->$wifiConstants:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->$connectivityConstants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    .line 30
    invoke-direct {v0, v1, v2, p0, p5}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Lkotlin/coroutines/Continuation;)V

    .line 32
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->Z$0:Z

    .line 35
    iput-boolean p2, v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->Z$1:Z

    .line 37
    iput-boolean p3, v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->Z$2:Z

    .line 39
    iput-object p4, v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->L$0:Ljava/lang/Object;

    .line 41
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 48
    return-object p0
    .line 49
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->label:I

    .line 2
    if-nez v0, :cond_b

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->Z$0:Z

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->Z$1:Z

    .line 11
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->Z$2:Z

    .line 13
    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->L$0:Ljava/lang/Object;

    .line 15
    check-cast v2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    .line 17
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    .line 19
    if-eqz p1, :cond_a

    .line 21
    if-nez v1, :cond_a

    .line 23
    instance-of p1, v2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$CarrierMerged;

    .line 25
    if-eqz p1, :cond_0

    .line 27
    goto/16 :goto_3

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    instance-of v4, v2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Unavailable;

    .line 36
    if-eqz v4, :cond_1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    instance-of v4, v2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Invalid;

    .line 41
    if-eqz v4, :cond_2

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    if-eqz p1, :cond_3

    .line 46
    :goto_0
    move-object p1, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    instance-of p1, v2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Inactive;

    .line 50
    const-string v4, ","

    .line 52
    const v5, 0x7f130358    # @string/data_connection_no_internet 'No internet'

    .line 54
    iget-object v1, v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel;->context:Landroid/content/Context;

    .line 57
    if-eqz p1, :cond_4

    .line 59
    new-instance p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    .line 61
    new-instance v2, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 63
    const v6, 0x7f1300b7    # @string/accessibility_no_wifi 'Wifi disconnected.'

    .line 65
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object v6

    .line 71
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 75
    invoke-static {v6, v4, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 79
    invoke-direct {v2, v1}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    .line 80
    const v1, 0x10805a6    # @android:drawable/jog_dial_arrow_short_left

    .line 83
    invoke-direct {p1, v1, v2}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    .line 86
    goto :goto_1

    .line 89
    :cond_4
    instance-of p1, v2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 90
    if-eqz p1, :cond_9

    .line 92
    sget-object p1, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 94
    check-cast v2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;

    .line 96
    iget v6, v2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    .line 98
    aget p1, p1, v6

    .line 100
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 105
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->isValidated:Z

    .line 106
    iget v2, v2, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$Active;->level:I

    .line 108
    if-eqz v6, :cond_5

    .line 110
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    .line 112
    sget-object v4, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_FULL_ICONS:[I

    .line 114
    aget v2, v4, v2

    .line 116
    new-instance v4, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 118
    invoke-direct {v4, p1}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-direct {v1, v2, v4}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    .line 123
    move-object p1, v1

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    new-instance v6, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;

    .line 128
    sget-object v7, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    .line 130
    aget v2, v7, v2

    .line 132
    new-instance v7, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 134
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 139
    invoke-static {p1, v4, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 143
    invoke-direct {v7, p1}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-direct {v6, v2, v7}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Visible;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription$Loaded;)V

    .line 147
    move-object p1, v6

    .line 150
    :goto_1
    if-eqz v0, :cond_6

    .line 151
    goto :goto_2

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->$wifiConstants:Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;

    .line 154
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pipeline/wifi/shared/WifiConstants;->alwaysShowIconIfEnabled:Z

    .line 156
    if-eqz v0, :cond_7

    .line 158
    goto :goto_2

    .line 160
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/WifiViewModel$wifiIcon$1;->$connectivityConstants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    .line 161
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;->hasDataCapabilities:Z

    .line 163
    if-nez p0, :cond_8

    .line 165
    :goto_2
    move-object v3, p1

    .line 167
    :cond_8
    return-object v3

    .line 168
    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 169
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 171
    throw p0

    .line 174
    :cond_a
    :goto_3
    return-object v3

    .line 175
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 176
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 178
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    throw p0
    .line 183
.end method

.class final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$carrierMergedSubId$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.statusbar.pipeline.mobile.data.repository.prod.MobileConnectionsRepositoryImpl$carrierMergedSubId$1"
    f = "MobileConnectionsRepositoryImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    .line 2
    check-cast p2, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    .line 4
    check-cast p3, Ljava/lang/Boolean;

    .line 6
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result p0

    .line 11
    check-cast p4, Lkotlin/coroutines/Continuation;

    .line 12
    new-instance p3, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$carrierMergedSubId$1;

    .line 14
    invoke-direct {p3, p4}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$carrierMergedSubId$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 16
    iput-object p1, p3, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$carrierMergedSubId$1;->L$0:Ljava/lang/Object;

    .line 19
    iput-object p2, p3, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$carrierMergedSubId$1;->L$1:Ljava/lang/Object;

    .line 21
    iput-boolean p0, p3, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$carrierMergedSubId$1;->Z$0:Z

    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$carrierMergedSubId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$carrierMergedSubId$1;->label:I

    .line 2
    if-nez v0, :cond_3

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$carrierMergedSubId$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$carrierMergedSubId$1;->L$1:Ljava/lang/Object;

    .line 13
    check-cast v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl$carrierMergedSubId$1;->Z$0:Z

    .line 17
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;->carrierMerged:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;

    .line 19
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;->isDefault:Z

    .line 21
    if-nez v1, :cond_1

    .line 23
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;->wifi:Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;

    .line 25
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;->isDefault:Z

    .line 27
    if-nez v0, :cond_1

    .line 29
    if-eqz p0, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 36
    :goto_1
    instance-of v0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$CarrierMerged;

    .line 37
    if-eqz v0, :cond_2

    .line 39
    if-eqz p0, :cond_2

    .line 41
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$CarrierMerged;

    .line 43
    iget p0, p1, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$CarrierMerged;->subscriptionId:I

    .line 45
    new-instance p1, Ljava/lang/Integer;

    .line 47
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 49
    goto :goto_2

    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    :goto_2
    return-object p1

    .line 54
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0
    .line 62
.end method

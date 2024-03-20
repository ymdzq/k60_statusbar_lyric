.class final Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $reason:I

.field final synthetic this$0:Lcom/android/keyguard/logging/CarrierTextManagerLogger;


# direct methods
.method public constructor <init>(ILcom/android/keyguard/logging/CarrierTextManagerLogger;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;->$reason:I

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;->this$0:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    iget p1, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;->$reason:I

    .line 4
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    const/4 v0, 0x3

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    const/4 v0, 0x4

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    const-string/jumbo p1, "unknown"

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    const-string p1, "ACTIVE_DATA_SUB_CHANGED"

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const-string p1, "SIM_STATE_CHANGED"

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    const-string p1, "ON_TELEPHONY_CAPABLE"

    .line 28
    goto :goto_0

    .line 30
    :cond_3
    const-string p1, "REFRESH_CARRIER_INFO"

    .line 31
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;->this$0:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->location:Ljava/lang/String;

    .line 35
    if-nez p0, :cond_4

    .line 37
    const-string p0, "(unknown)"

    .line 39
    :cond_4
    const-string/jumbo v0, "refreshing carrier info for reason: "

    .line 41
    const-string v1, " location="

    .line 44
    invoke-static {v0, p1, v1, p0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    return-object p0
    .line 50
.end method

.class final Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/logging/CarrierTextManagerLogger;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/logging/CarrierTextManagerLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdate$2;->this$0:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdate$2;->this$0:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->location:Ljava/lang/String;

    .line 6
    if-nez p0, :cond_0

    .line 8
    const-string p0, "(unknown)"

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 12
    move-result p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v1, "updateCarrierText: location="

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string p0, " numSubs="

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    return-object p0
    .line 39
.end method

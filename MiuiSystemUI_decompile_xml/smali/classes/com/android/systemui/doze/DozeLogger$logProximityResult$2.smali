.class final Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logProximityResult$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 4
    move-result p0

    .line 7
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->reasonToString(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool1()Z

    .line 12
    move-result v0

    .line 15
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLong1()J

    .line 16
    move-result-wide v1

    .line 19
    const-string p1, "Proximity result reason="

    .line 20
    const-string v3, " near="

    .line 22
    const-string v4, " millis="

    .line 24
    invoke-static {p1, p0, v3, v0, v4}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method

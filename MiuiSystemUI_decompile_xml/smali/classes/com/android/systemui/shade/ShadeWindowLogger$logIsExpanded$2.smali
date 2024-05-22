.class final Lcom/android/systemui/shade/ShadeWindowLogger$logIsExpanded$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logIsExpanded$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/shade/ShadeWindowLogger$logIsExpanded$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/shade/ShadeWindowLogger$logIsExpanded$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/shade/ShadeWindowLogger$logIsExpanded$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logIsExpanded$2;

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
    .locals 14

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool1()Z

    .line 8
    move-result v0

    .line 11
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool2()Z

    .line 12
    move-result v1

    .line 15
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool3()Z

    .line 16
    move-result v2

    .line 19
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool4()Z

    .line 20
    move-result v3

    .line 23
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 24
    move-result v4

    .line 27
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt2()I

    .line 28
    move-result v5

    .line 31
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLong1()J

    .line 32
    move-result-wide v6

    .line 35
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLong2()J

    .line 36
    move-result-wide v8

    .line 39
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getDouble1()D

    .line 40
    move-result-wide v10

    .line 43
    const-string p1, "Setting isExpanded to "

    .line 44
    const-string v12, ": forceWindowCollapsed "

    .line 46
    const-string v13, ", isKeyguardShowingAndNotOccluded "

    .line 48
    invoke-static {p1, p0, v12, v0, v13}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object p0

    .line 53
    const-string p1, ", panelVisible "

    .line 54
    const-string v0, ", keyguardFadingAway "

    .line 56
    invoke-static {p0, v1, p1, v2, v0}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 58
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const-string p1, ", bouncerShowing "

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string p1, ",headsUpNotificationShowing "

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string p1, ", scrimsVisibilityNotTransparent "

    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    const-string p1, ",backgroundBlurRadius "

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    const-string p1, ", launchingActivityFromNotification "

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 107
    return-object p0
    .line 108
.end method

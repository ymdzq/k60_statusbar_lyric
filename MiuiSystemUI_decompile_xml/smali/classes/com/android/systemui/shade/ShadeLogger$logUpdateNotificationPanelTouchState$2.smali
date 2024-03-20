.class final Lcom/android/systemui/shade/ShadeLogger$logUpdateNotificationPanelTouchState$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logUpdateNotificationPanelTouchState$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/shade/ShadeLogger$logUpdateNotificationPanelTouchState$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/shade/ShadeLogger$logUpdateNotificationPanelTouchState$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/shade/ShadeLogger$logUpdateNotificationPanelTouchState$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logUpdateNotificationPanelTouchState$2;

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
    .locals 7

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool1()Z

    .line 4
    move-result p0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool2()Z

    .line 8
    move-result v0

    .line 11
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool3()Z

    .line 12
    move-result v1

    .line 15
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool4()Z

    .line 16
    move-result v2

    .line 19
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 23
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr2()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 27
    const-string v4, "CentralSurfaces updateNotificationPanelTouchState set disabled to: "

    .line 28
    const-string v5, "\nisGoingToSleep: "

    .line 30
    const-string v6, ", !shouldControlScreenOff: "

    .line 32
    invoke-static {v4, p0, v5, v0, v6}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object p0

    .line 37
    const-string v0, ",!mDeviceInteractive: "

    .line 38
    const-string v4, ", !isPulsing: "

    .line 40
    invoke-static {p0, v1, v0, v2, v4}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 42
    const-string v0, ", isFrpActive: "

    .line 45
    invoke-static {p0, v3, v0, p1}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    return-object p0
    .line 51
.end method

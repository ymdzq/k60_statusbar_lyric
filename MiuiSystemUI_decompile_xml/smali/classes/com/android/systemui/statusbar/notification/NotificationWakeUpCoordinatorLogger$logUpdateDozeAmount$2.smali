.class final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logUpdateDozeAmount$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logUpdateDozeAmount$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logUpdateDozeAmount$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logUpdateDozeAmount$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logUpdateDozeAmount$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinatorLogger$logUpdateDozeAmount$2;

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
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getDouble1()D

    .line 4
    move-result-wide v0

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr3()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr1()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 15
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getStr2()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 19
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    .line 20
    move-result v4

    .line 23
    invoke-static {v4}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 24
    move-result-object v4

    .line 27
    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool1()Z

    .line 28
    move-result p1

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v6, "updateDozeAmount() inputLinear="

    .line 34
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, " delayLinear="

    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string p0, " hardOverride="

    .line 51
    const-string v0, " outputLinear="

    .line 53
    invoke-static {v5, p0, v2, v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string p0, " state="

    .line 58
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string p0, " changed="

    .line 66
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    return-object p0
    .line 78
.end method

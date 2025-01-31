.class public final Lcom/android/keyguard/event/KeyguardUnlockEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "keyguard_unlock_way"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final keyguardDataVersion:Ljava/lang/Number;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "keyguard_data_version"
    .end annotation
.end field

.field private final keyguardUnlockResult:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "keyguard_unlock_result"
    .end annotation
.end field

.field private final tip:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "tip"
    .end annotation
.end field

.field private final unlockWay:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "unlock_way"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->unlockWay:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardUnlockResult:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->tip:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardDataVersion:Ljava/lang/Number;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const-string p3, "178.2.0.1.20919"

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const p4, 0x1511750

    .line 6
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/event/KeyguardUnlockEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/keyguard/event/KeyguardUnlockEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Lcom/android/keyguard/event/KeyguardUnlockEvent;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    if-eqz p6, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->unlockWay:Ljava/lang/String;

    .line 6
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    if-eqz p6, :cond_1

    .line 10
    iget-object p2, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardUnlockResult:Ljava/lang/String;

    .line 12
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    if-eqz p6, :cond_2

    .line 16
    iget-object p3, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->tip:Ljava/lang/String;

    .line 18
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    if-eqz p5, :cond_3

    .line 22
    iget-object p4, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 24
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/event/KeyguardUnlockEvent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardUnlockEvent;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->unlockWay:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardUnlockResult:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardUnlockEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/event/KeyguardUnlockEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/keyguard/event/KeyguardUnlockEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/event/KeyguardUnlockEvent;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->unlockWay:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockEvent;->unlockWay:Ljava/lang/String;

    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardUnlockResult:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardUnlockResult:Ljava/lang/String;

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->tip:Ljava/lang/String;

    .line 36
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardUnlockEvent;->tip:Ljava/lang/String;

    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 47
    iget-object p1, p1, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 49
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result p0

    .line 54
    if-nez p0, :cond_5

    .line 55
    return v2

    .line 57
    :cond_5
    return v0
    .line 58
.end method

.method public final getKeyguardDataVersion()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getKeyguardUnlockResult()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardUnlockResult:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getUnlockWay()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->unlockWay:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->unlockWay:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardUnlockResult:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->tip:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Number;->hashCode()I

    .line 26
    move-result p0

    .line 29
    add-int/2addr p0, v0

    .line 30
    return p0
    .line 31
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->unlockWay:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardUnlockResult:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->tip:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardUnlockEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 8
    const-string v3, "KeyguardUnlockEvent(unlockWay="

    .line 10
    const-string v4, ", keyguardUnlockResult="

    .line 12
    const-string v5, ", tip="

    .line 14
    invoke-static {v3, v0, v4, v1, v5}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ", keyguardDataVersion="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string p0, ")"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    return-object p0
    .line 40
.end method

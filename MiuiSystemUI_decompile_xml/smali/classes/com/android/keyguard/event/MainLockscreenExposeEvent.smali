.class public final Lcom/android/keyguard/event/MainLockscreenExposeEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "main_lock_screen_expose"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final exposeWay:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "expose_way"
    .end annotation
.end field

.field private final keyguardDataVersion:Ljava/lang/Number;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "keyguard_data_version"
    .end annotation
.end field

.field private final tip:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "tip"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->exposeWay:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->tip:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->keyguardDataVersion:Ljava/lang/Number;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, "178.2.0.1.20917"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const p3, 0x1511750

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/event/MainLockscreenExposeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/keyguard/event/MainLockscreenExposeEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Lcom/android/keyguard/event/MainLockscreenExposeEvent;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    if-eqz p5, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->exposeWay:Ljava/lang/String;

    .line 6
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    if-eqz p5, :cond_1

    .line 10
    iget-object p2, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->tip:Ljava/lang/String;

    .line 12
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    if-eqz p4, :cond_2

    .line 16
    iget-object p3, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 18
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/MainLockscreenExposeEvent;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
    .line 24
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->exposeWay:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/MainLockscreenExposeEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/event/MainLockscreenExposeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

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
    instance-of v1, p1, Lcom/android/keyguard/event/MainLockscreenExposeEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/event/MainLockscreenExposeEvent;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->exposeWay:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->exposeWay:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->tip:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->tip:Ljava/lang/String;

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
    iget-object p0, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 36
    iget-object p1, p1, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 38
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    return v0
    .line 47
.end method

.method public final getExposeWay()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->exposeWay:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getKeyguardDataVersion()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->exposeWay:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->tip:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object p0, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Number;->hashCode()I

    .line 20
    move-result p0

    .line 23
    add-int/2addr p0, v0

    .line 24
    return p0
    .line 25
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->exposeWay:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->tip:Ljava/lang/String;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/event/MainLockscreenExposeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 6
    const-string v2, "MainLockscreenExposeEvent(exposeWay="

    .line 8
    const-string v3, ", tip="

    .line 10
    const-string v4, ", keyguardDataVersion="

    .line 12
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string p0, ")"

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method

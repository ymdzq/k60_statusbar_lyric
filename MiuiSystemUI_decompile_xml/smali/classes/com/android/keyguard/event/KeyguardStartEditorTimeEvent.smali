.class public final Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "start_keyguard_edit_mode"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final duration:Ljava/lang/Long;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "duration"
    .end annotation
.end field

.field private final keyguardDataVersion:Ljava/lang/Number;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "keyguard_data_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Number;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->duration:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->keyguardDataVersion:Ljava/lang/Number;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Number;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x15f97d0

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;Ljava/lang/Long;Ljava/lang/Number;ILjava/lang/Object;)Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    if-eqz p4, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->duration:Ljava/lang/Long;

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    if-eqz p3, :cond_1

    .line 10
    iget-object p2, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->copy(Ljava/lang/Long;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->duration:Ljava/lang/Long;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

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
    instance-of v1, p1, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->duration:Ljava/lang/Long;

    .line 14
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->duration:Ljava/lang/Long;

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
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 25
    iget-object p1, p1, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 27
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result p0

    .line 32
    if-nez p0, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    return v0
    .line 36
.end method

.method public final getDuration()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->duration:Ljava/lang/Long;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getKeyguardDataVersion()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->duration:Ljava/lang/Long;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Number;->hashCode()I

    .line 16
    move-result p0

    .line 19
    add-int/2addr p0, v0

    .line 20
    return p0
    .line 21
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->duration:Ljava/lang/Long;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardStartEditorTimeEvent;->keyguardDataVersion:Ljava/lang/Number;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "KeyguardStartEditorTimeEvent(duration="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, ", keyguardDataVersion="

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, ")"

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method

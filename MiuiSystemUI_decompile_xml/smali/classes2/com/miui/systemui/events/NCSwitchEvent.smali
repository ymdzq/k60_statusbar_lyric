.class public final Lcom/miui/systemui/events/NCSwitchEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "nc_lr_switcher"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final ncSwitcher:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "nc_switcher"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/systemui/events/NCSwitchEvent;->ncSwitcher:I

    .line 5
    return-void
    .line 7
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/NCSwitchEvent;IILjava/lang/Object;)Lcom/miui/systemui/events/NCSwitchEvent;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 4
    iget p1, p0, Lcom/miui/systemui/events/NCSwitchEvent;->ncSwitcher:I

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/systemui/events/NCSwitchEvent;->copy(I)Lcom/miui/systemui/events/NCSwitchEvent;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NCSwitchEvent;->ncSwitcher:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(I)Lcom/miui/systemui/events/NCSwitchEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/miui/systemui/events/NCSwitchEvent;

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/systemui/events/NCSwitchEvent;-><init>(I)V

    .line 4
    return-object p0
    .line 7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/miui/systemui/events/NCSwitchEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/NCSwitchEvent;

    .line 12
    iget p0, p0, Lcom/miui/systemui/events/NCSwitchEvent;->ncSwitcher:I

    .line 14
    iget p1, p1, Lcom/miui/systemui/events/NCSwitchEvent;->ncSwitcher:I

    .line 16
    if-eq p0, p1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    return v0
    .line 21
.end method

.method public final getNcSwitcher()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NCSwitchEvent;->ncSwitcher:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NCSwitchEvent;->ncSwitcher:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NCSwitchEvent;->ncSwitcher:I

    .line 2
    const-string v0, "NCSwitchEvent(ncSwitcher="

    .line 4
    const-string v1, ")"

    .line 6
    invoke-static {v0, p0, v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

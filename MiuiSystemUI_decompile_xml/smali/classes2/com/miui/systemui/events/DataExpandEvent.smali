.class public final Lcom/miui/systemui/events/DataExpandEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "data_expand"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final default:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "default"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/systemui/events/DataExpandEvent;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/miui/systemui/events/DataExpandEvent;->default:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/systemui/events/DataExpandEvent;-><init>(I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/DataExpandEvent;IILjava/lang/Object;)Lcom/miui/systemui/events/DataExpandEvent;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 4
    iget p1, p0, Lcom/miui/systemui/events/DataExpandEvent;->default:I

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/systemui/events/DataExpandEvent;->copy(I)Lcom/miui/systemui/events/DataExpandEvent;

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
    iget p0, p0, Lcom/miui/systemui/events/DataExpandEvent;->default:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(I)Lcom/miui/systemui/events/DataExpandEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/miui/systemui/events/DataExpandEvent;

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/systemui/events/DataExpandEvent;-><init>(I)V

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
    instance-of v1, p1, Lcom/miui/systemui/events/DataExpandEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/DataExpandEvent;

    .line 12
    iget p0, p0, Lcom/miui/systemui/events/DataExpandEvent;->default:I

    .line 14
    iget p1, p1, Lcom/miui/systemui/events/DataExpandEvent;->default:I

    .line 16
    if-eq p0, p1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    return v0
    .line 21
.end method

.method public final getDefault()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/DataExpandEvent;->default:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/DataExpandEvent;->default:I

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
    iget p0, p0, Lcom/miui/systemui/events/DataExpandEvent;->default:I

    .line 2
    const-string v0, "DataExpandEvent(default="

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

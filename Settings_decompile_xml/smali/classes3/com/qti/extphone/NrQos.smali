.class public final Lcom/qti/extphone/NrQos;
.super Lcom/qti/extphone/Qos;
.source "NrQos.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/NrQos;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field averagingWindowMs:I

.field fiveQi:I

.field qosFlowId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/qti/extphone/NrQos$1;

    invoke-direct {v0}, Lcom/qti/extphone/NrQos$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/NrQos;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/qti/extphone/Qos;-><init>(Landroid/os/Parcel;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/NrQos;->qosFlowId:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/NrQos;->fiveQi:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/extphone/NrQos;->averagingWindowMs:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/extphone/NrQos-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/extphone/NrQos;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 92
    instance-of v2, p1, Lcom/qti/extphone/NrQos;

    if-nez v2, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    check-cast p1, Lcom/qti/extphone/NrQos;

    .line 98
    invoke-super {p0, p1}, Lcom/qti/extphone/Qos;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 102
    :cond_2
    iget v2, p0, Lcom/qti/extphone/NrQos;->qosFlowId:I

    iget v3, p1, Lcom/qti/extphone/NrQos;->qosFlowId:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/qti/extphone/NrQos;->fiveQi:I

    iget v3, p1, Lcom/qti/extphone/NrQos;->fiveQi:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Lcom/qti/extphone/NrQos;->averagingWindowMs:I

    iget p1, p1, Lcom/qti/extphone/NrQos;->averagingWindowMs:I

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 85
    invoke-super {p0}, Lcom/qti/extphone/Qos;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/qti/extphone/NrQos;->qosFlowId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/qti/extphone/NrQos;->fiveQi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/qti/extphone/NrQos;->averagingWindowMs:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NrQos { fiveQi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/extphone/NrQos;->fiveQi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " downlink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/extphone/Qos;->downlink:Lcom/qti/extphone/Qos$QosBandwidth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " uplink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/extphone/Qos;->uplink:Lcom/qti/extphone/Qos$QosBandwidth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " qosFlowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/extphone/NrQos;->qosFlowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " averagingWindowMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/extphone/NrQos;->averagingWindowMs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x2

    .line 72
    invoke-super {p0, v0, p1, p2}, Lcom/qti/extphone/Qos;->writeToParcel(ILandroid/os/Parcel;I)V

    .line 73
    iget p2, p0, Lcom/qti/extphone/NrQos;->qosFlowId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget p2, p0, Lcom/qti/extphone/NrQos;->fiveQi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget p0, p0, Lcom/qti/extphone/NrQos;->averagingWindowMs:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

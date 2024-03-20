.class public abstract Lcom/qti/extphone/Qos;
.super Ljava/lang/Object;
.source "Qos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/extphone/Qos$QosBandwidth;
    }
.end annotation


# static fields
.field public static final QOS_TYPE_EPS:I = 0x1

.field public static final QOS_TYPE_NR:I = 0x2


# instance fields
.field final downlink:Lcom/qti/extphone/Qos$QosBandwidth;

.field final type:I

.field final uplink:Lcom/qti/extphone/Qos$QosBandwidth;


# direct methods
.method constructor <init>(ILandroid/hardware/radio/V1_6/QosBandwidth;Landroid/hardware/radio/V1_6/QosBandwidth;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/qti/extphone/Qos;->type:I

    .line 59
    new-instance p1, Lcom/qti/extphone/Qos$QosBandwidth;

    iget v0, p2, Landroid/hardware/radio/V1_6/QosBandwidth;->maxBitrateKbps:I

    iget p2, p2, Landroid/hardware/radio/V1_6/QosBandwidth;->guaranteedBitrateKbps:I

    invoke-direct {p1, v0, p2}, Lcom/qti/extphone/Qos$QosBandwidth;-><init>(II)V

    iput-object p1, p0, Lcom/qti/extphone/Qos;->downlink:Lcom/qti/extphone/Qos$QosBandwidth;

    .line 60
    new-instance p1, Lcom/qti/extphone/Qos$QosBandwidth;

    iget p2, p3, Landroid/hardware/radio/V1_6/QosBandwidth;->maxBitrateKbps:I

    iget p3, p3, Landroid/hardware/radio/V1_6/QosBandwidth;->guaranteedBitrateKbps:I

    invoke-direct {p1, p2, p3}, Lcom/qti/extphone/Qos$QosBandwidth;-><init>(II)V

    iput-object p1, p0, Lcom/qti/extphone/Qos;->uplink:Lcom/qti/extphone/Qos$QosBandwidth;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/Qos;->type:I

    .line 149
    const-class v0, Lcom/qti/extphone/Qos$QosBandwidth;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Qos$QosBandwidth;

    iput-object v0, p0, Lcom/qti/extphone/Qos;->downlink:Lcom/qti/extphone/Qos$QosBandwidth;

    .line 150
    const-class v0, Lcom/qti/extphone/Qos$QosBandwidth;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/qti/extphone/Qos$QosBandwidth;

    iput-object p1, p0, Lcom/qti/extphone/Qos;->uplink:Lcom/qti/extphone/Qos$QosBandwidth;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 194
    :cond_0
    check-cast p1, Lcom/qti/extphone/Qos;

    .line 195
    iget v1, p0, Lcom/qti/extphone/Qos;->type:I

    iget v2, p1, Lcom/qti/extphone/Qos;->type:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/qti/extphone/Qos;->downlink:Lcom/qti/extphone/Qos$QosBandwidth;

    iget-object v2, p1, Lcom/qti/extphone/Qos;->downlink:Lcom/qti/extphone/Qos$QosBandwidth;

    .line 196
    invoke-virtual {v1, v2}, Lcom/qti/extphone/Qos$QosBandwidth;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/qti/extphone/Qos;->uplink:Lcom/qti/extphone/Qos$QosBandwidth;

    iget-object p1, p1, Lcom/qti/extphone/Qos;->uplink:Lcom/qti/extphone/Qos$QosBandwidth;

    .line 197
    invoke-virtual {p0, p1}, Lcom/qti/extphone/Qos$QosBandwidth;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/qti/extphone/Qos;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/qti/extphone/Qos;->downlink:Lcom/qti/extphone/Qos$QosBandwidth;

    iget-object p0, p0, Lcom/qti/extphone/Qos;->uplink:Lcom/qti/extphone/Qos$QosBandwidth;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(ILandroid/os/Parcel;I)V
    .locals 0

    .line 160
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object p1, p0, Lcom/qti/extphone/Qos;->downlink:Lcom/qti/extphone/Qos$QosBandwidth;

    invoke-virtual {p2, p1, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    iget-object p0, p0, Lcom/qti/extphone/Qos;->uplink:Lcom/qti/extphone/Qos$QosBandwidth;

    invoke-virtual {p2, p0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

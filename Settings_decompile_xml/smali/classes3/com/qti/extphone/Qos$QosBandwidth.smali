.class public Lcom/qti/extphone/Qos$QosBandwidth;
.super Ljava/lang/Object;
.source "Qos.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/Qos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QosBandwidth"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/Qos$QosBandwidth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field guaranteedBitrateKbps:I

.field maxBitrateKbps:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Lcom/qti/extphone/Qos$QosBandwidth$1;

    invoke-direct {v0}, Lcom/qti/extphone/Qos$QosBandwidth$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/Qos$QosBandwidth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/qti/extphone/Qos$QosBandwidth;->maxBitrateKbps:I

    .line 80
    iput p2, p0, Lcom/qti/extphone/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/Qos$QosBandwidth;->maxBitrateKbps:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/extphone/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/extphone/Qos$QosBandwidth-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/extphone/Qos$QosBandwidth;-><init>(Landroid/os/Parcel;)V

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

    if-eqz p1, :cond_3

    .line 116
    instance-of v2, p1, Lcom/qti/extphone/Qos$QosBandwidth;

    if-nez v2, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    check-cast p1, Lcom/qti/extphone/Qos$QosBandwidth;

    .line 121
    iget v2, p0, Lcom/qti/extphone/Qos$QosBandwidth;->maxBitrateKbps:I

    iget v3, p1, Lcom/qti/extphone/Qos$QosBandwidth;->maxBitrateKbps:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/qti/extphone/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    iget p1, p1, Lcom/qti/extphone/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/qti/extphone/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/qti/extphone/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bandwidth { maxBitrateKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/extphone/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " guaranteedBitrateKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/extphone/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 98
    iget p2, p0, Lcom/qti/extphone/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget p0, p0, Lcom/qti/extphone/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

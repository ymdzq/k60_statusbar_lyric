.class public final Lcom/qti/extphone/QosBearerSession;
.super Ljava/lang/Object;
.source "QosBearerSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final qos:Lcom/qti/extphone/Qos;

.field final qosBearerFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/extphone/QosBearerFilter;",
            ">;"
        }
    .end annotation
.end field

.field final qosBearerSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Lcom/qti/extphone/QosBearerSession$1;

    invoke-direct {v0}, Lcom/qti/extphone/QosBearerSession$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/QosBearerSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/QosBearerSession;->qosBearerSessionId:I

    .line 53
    const-class v0, Lcom/qti/extphone/Qos;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Qos;

    iput-object v0, p0, Lcom/qti/extphone/QosBearerSession;->qos:Lcom/qti/extphone/Qos;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/extphone/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    .line 55
    const-class p0, Lcom/qti/extphone/QosBearerFilter;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/extphone/QosBearerSession-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/extphone/QosBearerSession;-><init>(Landroid/os/Parcel;)V

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

    .line 120
    instance-of v2, p1, Lcom/qti/extphone/QosBearerSession;

    if-nez v2, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    check-cast p1, Lcom/qti/extphone/QosBearerSession;

    .line 125
    iget v2, p0, Lcom/qti/extphone/QosBearerSession;->qosBearerSessionId:I

    iget v3, p1, Lcom/qti/extphone/QosBearerSession;->qosBearerSessionId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/qti/extphone/QosBearerSession;->qos:Lcom/qti/extphone/Qos;

    iget-object v3, p1, Lcom/qti/extphone/QosBearerSession;->qos:Lcom/qti/extphone/Qos;

    .line 126
    invoke-virtual {v2, v3}, Lcom/qti/extphone/Qos;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qti/extphone/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    .line 127
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/qti/extphone/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/qti/extphone/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    iget-object p1, p1, Lcom/qti/extphone/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    .line 128
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

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
    .locals 2

    .line 113
    iget v0, p0, Lcom/qti/extphone/QosBearerSession;->qosBearerSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/extphone/QosBearerSession;->qos:Lcom/qti/extphone/Qos;

    iget-object p0, p0, Lcom/qti/extphone/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QosBearerSession { qosBearerSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/extphone/QosBearerSession;->qosBearerSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/extphone/QosBearerSession;->qos:Lcom/qti/extphone/Qos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " qosBearerFilterList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/qti/extphone/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 72
    iget v0, p0, Lcom/qti/extphone/QosBearerSession;->qosBearerSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/qti/extphone/QosBearerSession;->qos:Lcom/qti/extphone/Qos;

    invoke-virtual {v0}, Lcom/qti/extphone/Qos;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/qti/extphone/QosBearerSession;->qos:Lcom/qti/extphone/Qos;

    check-cast v0, Lcom/qti/extphone/EpsQos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/qti/extphone/QosBearerSession;->qos:Lcom/qti/extphone/Qos;

    check-cast v0, Lcom/qti/extphone/NrQos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    :goto_0
    iget-object p0, p0, Lcom/qti/extphone/QosBearerSession;->qosBearerFilterList:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method

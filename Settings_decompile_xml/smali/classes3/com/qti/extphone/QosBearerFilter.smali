.class public final Lcom/qti/extphone/QosBearerFilter;
.super Ljava/lang/Object;
.source "QosBearerFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/extphone/QosBearerFilter$PortRange;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/QosBearerFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final QOS_FILTER_DIRECTION_BIDIRECTIONAL:I = 0x2

.field public static final QOS_FILTER_DIRECTION_DOWNLINK:I = 0x0

.field public static final QOS_FILTER_DIRECTION_UPLINK:I = 0x1

.field public static final QOS_MAX_PORT:I = 0xffff

.field public static final QOS_MIN_PORT:I = 0x14

.field public static final QOS_PROTOCOL_AH:I = 0x33

.field public static final QOS_PROTOCOL_ESP:I = 0x32

.field public static final QOS_PROTOCOL_TCP:I = 0x6

.field public static final QOS_PROTOCOL_UDP:I = 0x11

.field public static final QOS_PROTOCOL_UNSPECIFIED:I = -0x1


# instance fields
.field private filterDirection:I

.field private flowLabel:J

.field private localAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private localPort:Lcom/qti/extphone/QosBearerFilter$PortRange;

.field private precedence:I

.field private protocol:I

.field private remoteAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private remotePort:Lcom/qti/extphone/QosBearerFilter$PortRange;

.field private securityParameterIndex:J

.field private typeOfServiceMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 443
    new-instance v0, Lcom/qti/extphone/QosBearerFilter$1;

    invoke-direct {v0}, Lcom/qti/extphone/QosBearerFilter$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/QosBearerFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->localAddresses:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/qti/extphone/QosBearerFilter$PortRange;

    invoke-direct {v0}, Lcom/qti/extphone/QosBearerFilter$PortRange;-><init>()V

    iput-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->localPort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    .line 113
    new-instance v0, Lcom/qti/extphone/QosBearerFilter$PortRange;

    invoke-direct {v0}, Lcom/qti/extphone/QosBearerFilter$PortRange;-><init>()V

    iput-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->remotePort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    const/4 v0, -0x1

    .line 114
    iput v0, p0, Lcom/qti/extphone/QosBearerFilter;->protocol:I

    const/4 v0, 0x2

    .line 115
    iput v0, p0, Lcom/qti/extphone/QosBearerFilter;->filterDirection:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->localAddresses:Ljava/util/List;

    .line 410
    const-class v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    .line 412
    const-class v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 413
    const-class v0, Lcom/qti/extphone/QosBearerFilter$PortRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/QosBearerFilter$PortRange;

    iput-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->localPort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    .line 414
    const-class v0, Lcom/qti/extphone/QosBearerFilter$PortRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/QosBearerFilter$PortRange;

    iput-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->remotePort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/QosBearerFilter;->protocol:I

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/QosBearerFilter;->typeOfServiceMask:I

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/extphone/QosBearerFilter;->flowLabel:J

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/extphone/QosBearerFilter;->securityParameterIndex:J

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/extphone/QosBearerFilter;->filterDirection:I

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/qti/extphone/QosBearerFilter;->precedence:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/extphone/QosBearerFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/extphone/QosBearerFilter;-><init>(Landroid/os/Parcel;)V

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
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 362
    instance-of v2, p1, Lcom/qti/extphone/QosBearerFilter;

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 366
    :cond_1
    check-cast p1, Lcom/qti/extphone/QosBearerFilter;

    .line 368
    iget-object v2, p0, Lcom/qti/extphone/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/qti/extphone/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/qti/extphone/QosBearerFilter;->localAddresses:Ljava/util/List;

    iget-object v3, p1, Lcom/qti/extphone/QosBearerFilter;->localAddresses:Ljava/util/List;

    .line 369
    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qti/extphone/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    .line 370
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/qti/extphone/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/qti/extphone/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    iget-object v3, p1, Lcom/qti/extphone/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    .line 371
    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qti/extphone/QosBearerFilter;->localPort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    iget-object v3, p1, Lcom/qti/extphone/QosBearerFilter;->localPort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    .line 372
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qti/extphone/QosBearerFilter;->remotePort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    iget-object v3, p1, Lcom/qti/extphone/QosBearerFilter;->remotePort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    .line 373
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/qti/extphone/QosBearerFilter;->protocol:I

    iget v3, p1, Lcom/qti/extphone/QosBearerFilter;->protocol:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/qti/extphone/QosBearerFilter;->typeOfServiceMask:I

    iget v3, p1, Lcom/qti/extphone/QosBearerFilter;->typeOfServiceMask:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/qti/extphone/QosBearerFilter;->flowLabel:J

    iget-wide v4, p1, Lcom/qti/extphone/QosBearerFilter;->flowLabel:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/qti/extphone/QosBearerFilter;->securityParameterIndex:J

    iget-wide v4, p1, Lcom/qti/extphone/QosBearerFilter;->securityParameterIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/qti/extphone/QosBearerFilter;->filterDirection:I

    iget v3, p1, Lcom/qti/extphone/QosBearerFilter;->filterDirection:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/qti/extphone/QosBearerFilter;->precedence:I

    iget p1, p1, Lcom/qti/extphone/QosBearerFilter;->precedence:I

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
    .locals 10

    .line 353
    iget-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->localAddresses:Ljava/util/List;

    iget-object v1, p0, Lcom/qti/extphone/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    iget-object v2, p0, Lcom/qti/extphone/QosBearerFilter;->localPort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    iget-object v3, p0, Lcom/qti/extphone/QosBearerFilter;->remotePort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    iget v4, p0, Lcom/qti/extphone/QosBearerFilter;->protocol:I

    .line 354
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/qti/extphone/QosBearerFilter;->typeOfServiceMask:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Lcom/qti/extphone/QosBearerFilter;->flowLabel:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Lcom/qti/extphone/QosBearerFilter;->securityParameterIndex:J

    .line 355
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, p0, Lcom/qti/extphone/QosBearerFilter;->filterDirection:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget p0, p0, Lcom/qti/extphone/QosBearerFilter;->precedence:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    .line 353
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QosBearerFilter { localAddresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/extphone/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " remoteAddresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/extphone/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " localPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/extphone/QosBearerFilter;->localPort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " remotePort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/extphone/QosBearerFilter;->remotePort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/extphone/QosBearerFilter;->protocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " typeOfServiceMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/extphone/QosBearerFilter;->typeOfServiceMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flowLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qti/extphone/QosBearerFilter;->flowLabel:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " securityParameterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/qti/extphone/QosBearerFilter;->securityParameterIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " filterDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/extphone/QosBearerFilter;->filterDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " precedence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/extphone/QosBearerFilter;->precedence:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 426
    iget-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 427
    iget-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->localPort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 428
    iget-object v0, p0, Lcom/qti/extphone/QosBearerFilter;->remotePort:Lcom/qti/extphone/QosBearerFilter$PortRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 429
    iget p2, p0, Lcom/qti/extphone/QosBearerFilter;->protocol:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget p2, p0, Lcom/qti/extphone/QosBearerFilter;->typeOfServiceMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget-wide v0, p0, Lcom/qti/extphone/QosBearerFilter;->flowLabel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 432
    iget-wide v0, p0, Lcom/qti/extphone/QosBearerFilter;->securityParameterIndex:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 433
    iget p2, p0, Lcom/qti/extphone/QosBearerFilter;->filterDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget p0, p0, Lcom/qti/extphone/QosBearerFilter;->precedence:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

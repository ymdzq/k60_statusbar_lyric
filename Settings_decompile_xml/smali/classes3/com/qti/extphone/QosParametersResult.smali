.class public Lcom/qti/extphone/QosParametersResult;
.super Ljava/lang/Object;
.source "QosParametersResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/extphone/QosParametersResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final QOS_TYPE_EPS:I = 0x1

.field public static final QOS_TYPE_NR:I = 0x2


# instance fields
.field private final mDefaultQos:Lcom/qti/extphone/Qos;

.field private final mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/extphone/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lcom/qti/extphone/QosParametersResult$1;

    invoke-direct {v0}, Lcom/qti/extphone/QosParametersResult$1;-><init>()V

    sput-object v0, Lcom/qti/extphone/QosParametersResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/qti/extphone/QosParametersResult;->mDefaultQos:Lcom/qti/extphone/Qos;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/extphone/QosParametersResult;->mQosBearerSessions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Lcom/qti/extphone/Qos;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Qos;

    iput-object v0, p0, Lcom/qti/extphone/QosParametersResult;->mDefaultQos:Lcom/qti/extphone/Qos;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/extphone/QosParametersResult;->mQosBearerSessions:Ljava/util/List;

    .line 41
    const-class p0, Lcom/qti/extphone/QosBearerSession;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

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
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lcom/qti/extphone/QosParametersResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 83
    :cond_1
    check-cast p1, Lcom/qti/extphone/QosParametersResult;

    .line 85
    iget-object v1, p0, Lcom/qti/extphone/QosParametersResult;->mDefaultQos:Lcom/qti/extphone/Qos;

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/qti/extphone/QosParametersResult;->mDefaultQos:Lcom/qti/extphone/Qos;

    if-nez v3, :cond_2

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v1, v3}, Lcom/qti/extphone/Qos;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 86
    :cond_3
    :goto_0
    iget-object v3, p1, Lcom/qti/extphone/QosParametersResult;->mDefaultQos:Lcom/qti/extphone/Qos;

    if-ne v1, v3, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    .line 90
    :goto_1
    iget-object v3, p0, Lcom/qti/extphone/QosParametersResult;->mQosBearerSessions:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v4, p1, Lcom/qti/extphone/QosParametersResult;->mQosBearerSessions:Ljava/util/List;

    if-nez v4, :cond_5

    goto :goto_2

    .line 92
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p1, Lcom/qti/extphone/QosParametersResult;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_7

    iget-object p0, p0, Lcom/qti/extphone/QosParametersResult;->mQosBearerSessions:Ljava/util/List;

    iget-object p1, p1, Lcom/qti/extphone/QosParametersResult;->mQosBearerSessions:Ljava/util/List;

    .line 93
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    .line 91
    :cond_6
    :goto_2
    iget-object p0, p1, Lcom/qti/extphone/QosParametersResult;->mQosBearerSessions:Ljava/util/List;

    if-ne v3, p0, :cond_7

    :goto_3
    move p0, v0

    goto :goto_4

    :cond_7
    move p0, v2

    :goto_4
    if-eqz v1, :cond_8

    if-eqz p0, :cond_8

    goto :goto_5

    :cond_8
    move v0, v2

    :goto_5
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/qti/extphone/QosParametersResult;->mDefaultQos:Lcom/qti/extphone/Qos;

    iget-object p0, p0, Lcom/qti/extphone/QosParametersResult;->mQosBearerSessions:Ljava/util/List;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "QosParametersResult: {"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " defaultQos="

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/qti/extphone/QosParametersResult;->mDefaultQos:Lcom/qti/extphone/Qos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " qosBearerSessions="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/qti/extphone/QosParametersResult;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo p0, "}"

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/qti/extphone/QosParametersResult;->mDefaultQos:Lcom/qti/extphone/Qos;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/qti/extphone/Qos;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/qti/extphone/QosParametersResult;->mDefaultQos:Lcom/qti/extphone/Qos;

    check-cast v0, Lcom/qti/extphone/EpsQos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/qti/extphone/QosParametersResult;->mDefaultQos:Lcom/qti/extphone/Qos;

    check-cast v0, Lcom/qti/extphone/NrQos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    :goto_0
    iget-object p0, p0, Lcom/qti/extphone/QosParametersResult;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method

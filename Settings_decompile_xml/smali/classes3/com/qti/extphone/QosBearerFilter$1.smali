.class Lcom/qti/extphone/QosBearerFilter$1;
.super Ljava/lang/Object;
.source "QosBearerFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/QosBearerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/extphone/QosBearerFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/QosBearerFilter;
    .locals 1

    .line 447
    new-instance p0, Lcom/qti/extphone/QosBearerFilter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qti/extphone/QosBearerFilter;-><init>(Landroid/os/Parcel;Lcom/qti/extphone/QosBearerFilter-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Lcom/qti/extphone/QosBearerFilter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/QosBearerFilter;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/qti/extphone/QosBearerFilter;
    .locals 0

    .line 452
    new-array p0, p1, [Lcom/qti/extphone/QosBearerFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Lcom/qti/extphone/QosBearerFilter$1;->newArray(I)[Lcom/qti/extphone/QosBearerFilter;

    move-result-object p0

    return-object p0
.end method

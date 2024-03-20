.class Lcom/qti/extphone/NrQos$1;
.super Ljava/lang/Object;
.source "NrQos.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/NrQos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/extphone/NrQos;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/NrQos;
    .locals 1

    .line 122
    new-instance p0, Lcom/qti/extphone/NrQos;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qti/extphone/NrQos;-><init>(Landroid/os/Parcel;Lcom/qti/extphone/NrQos-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/qti/extphone/NrQos$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/NrQos;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/qti/extphone/NrQos;
    .locals 0

    .line 127
    new-array p0, p1, [Lcom/qti/extphone/NrQos;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/qti/extphone/NrQos$1;->newArray(I)[Lcom/qti/extphone/NrQos;

    move-result-object p0

    return-object p0
.end method

.class Lcom/qti/extphone/EpsQos$1;
.super Ljava/lang/Object;
.source "EpsQos.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/EpsQos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/extphone/EpsQos;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/EpsQos;
    .locals 1

    .line 107
    new-instance p0, Lcom/qti/extphone/EpsQos;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qti/extphone/EpsQos;-><init>(Landroid/os/Parcel;Lcom/qti/extphone/EpsQos-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/qti/extphone/EpsQos$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/EpsQos;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/qti/extphone/EpsQos;
    .locals 0

    .line 112
    new-array p0, p1, [Lcom/qti/extphone/EpsQos;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/qti/extphone/EpsQos$1;->newArray(I)[Lcom/qti/extphone/EpsQos;

    move-result-object p0

    return-object p0
.end method

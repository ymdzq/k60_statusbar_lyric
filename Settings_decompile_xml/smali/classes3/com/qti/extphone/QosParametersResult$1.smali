.class Lcom/qti/extphone/QosParametersResult$1;
.super Ljava/lang/Object;
.source "QosParametersResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/QosParametersResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/extphone/QosParametersResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/QosParametersResult;
    .locals 0

    .line 127
    new-instance p0, Lcom/qti/extphone/QosParametersResult;

    invoke-direct {p0, p1}, Lcom/qti/extphone/QosParametersResult;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/qti/extphone/QosParametersResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/QosParametersResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/qti/extphone/QosParametersResult;
    .locals 0

    .line 132
    new-array p0, p1, [Lcom/qti/extphone/QosParametersResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/qti/extphone/QosParametersResult$1;->newArray(I)[Lcom/qti/extphone/QosParametersResult;

    move-result-object p0

    return-object p0
.end method

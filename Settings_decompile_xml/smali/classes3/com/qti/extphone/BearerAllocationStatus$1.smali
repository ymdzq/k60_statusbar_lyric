.class Lcom/qti/extphone/BearerAllocationStatus$1;
.super Ljava/lang/Object;
.source "BearerAllocationStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/BearerAllocationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/BearerAllocationStatus;
    .locals 0

    .line 77
    new-instance p0, Lcom/qti/extphone/BearerAllocationStatus;

    invoke-direct {p0, p1}, Lcom/qti/extphone/BearerAllocationStatus;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/qti/extphone/BearerAllocationStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/BearerAllocationStatus;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/qti/extphone/BearerAllocationStatus;
    .locals 0

    .line 81
    new-array p0, p1, [Lcom/qti/extphone/BearerAllocationStatus;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/qti/extphone/BearerAllocationStatus$1;->newArray(I)[Lcom/qti/extphone/BearerAllocationStatus;

    move-result-object p0

    return-object p0
.end method

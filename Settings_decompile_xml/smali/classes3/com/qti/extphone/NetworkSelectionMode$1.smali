.class Lcom/qti/extphone/NetworkSelectionMode$1;
.super Ljava/lang/Object;
.source "NetworkSelectionMode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/NetworkSelectionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/NetworkSelectionMode;
    .locals 0

    .line 56
    new-instance p0, Lcom/qti/extphone/NetworkSelectionMode;

    invoke-direct {p0, p1}, Lcom/qti/extphone/NetworkSelectionMode;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/qti/extphone/NetworkSelectionMode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/NetworkSelectionMode;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/qti/extphone/NetworkSelectionMode;
    .locals 0

    .line 60
    new-array p0, p1, [Lcom/qti/extphone/NetworkSelectionMode;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/qti/extphone/NetworkSelectionMode$1;->newArray(I)[Lcom/qti/extphone/NetworkSelectionMode;

    move-result-object p0

    return-object p0
.end method

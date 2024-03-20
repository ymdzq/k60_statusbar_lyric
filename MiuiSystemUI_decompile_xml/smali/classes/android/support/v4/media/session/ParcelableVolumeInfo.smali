.class public Landroid/support/v4/media/session/ParcelableVolumeInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final audioStream:I

.field public final controlType:I

.field public final currentVolume:I

.field public final maxVolume:I

.field public final volumeType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo$1;

    .line 2
    invoke-direct {v0}, Landroid/support/v4/media/session/ParcelableVolumeInfo$1;-><init>()V

    .line 4
    sput-object v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    move-result v0

    .line 8
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 17
    move-result v0

    .line 20
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 23
    move-result v0

    .line 26
    iput v0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 29
    move-result p1

    .line 32
    iput p1, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    .line 33
    return-void
    .line 35
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p0, p0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    .line 22
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    return-void
    .line 27
.end method

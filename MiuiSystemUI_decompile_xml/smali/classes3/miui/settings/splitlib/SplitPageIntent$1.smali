.class final Lmiui/settings/splitlib/SplitPageIntent$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiui/settings/splitlib/SplitPageIntent$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/settings/splitlib/SplitPageIntent;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/settings/splitlib/SplitPageIntent;
    .locals 0

    .line 2
    new-instance p0, Lmiui/settings/splitlib/SplitPageIntent;

    invoke-direct {p0, p1}, Lmiui/settings/splitlib/SplitPageIntent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiui/settings/splitlib/SplitPageIntent$1;->newArray(I)[Lmiui/settings/splitlib/SplitPageIntent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiui/settings/splitlib/SplitPageIntent;
    .locals 0

    .line 2
    new-array p0, p1, [Lmiui/settings/splitlib/SplitPageIntent;

    return-object p0
.end method

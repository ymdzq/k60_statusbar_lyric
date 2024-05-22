.class final Lmiui/settings/splitlib/SplitPageIntent$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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

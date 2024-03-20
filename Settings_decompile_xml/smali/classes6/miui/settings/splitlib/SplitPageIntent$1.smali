.class final Lmiui/settings/splitlib/SplitPageIntent$1;
.super Ljava/lang/Object;
.source "SplitPageIntent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/settings/splitlib/SplitPageIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/settings/splitlib/SplitPageIntent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lmiui/settings/splitlib/SplitPageIntent$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/settings/splitlib/SplitPageIntent;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/settings/splitlib/SplitPageIntent;
    .locals 0

    .line 25
    new-instance p0, Lmiui/settings/splitlib/SplitPageIntent;

    invoke-direct {p0, p1}, Lmiui/settings/splitlib/SplitPageIntent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lmiui/settings/splitlib/SplitPageIntent$1;->newArray(I)[Lmiui/settings/splitlib/SplitPageIntent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiui/settings/splitlib/SplitPageIntent;
    .locals 0

    .line 30
    new-array p0, p1, [Lmiui/settings/splitlib/SplitPageIntent;

    return-object p0
.end method

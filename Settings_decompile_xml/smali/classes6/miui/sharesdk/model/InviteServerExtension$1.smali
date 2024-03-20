.class Lmiui/sharesdk/model/InviteServerExtension$1;
.super Ljava/lang/Object;
.source "InviteServerExtension.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/sharesdk/model/InviteServerExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/sharesdk/model/InviteServerExtension;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lmiui/sharesdk/model/InviteServerExtension$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/sharesdk/model/InviteServerExtension;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/sharesdk/model/InviteServerExtension;
    .locals 0

    .line 34
    new-instance p0, Lmiui/sharesdk/model/InviteServerExtension;

    invoke-direct {p0, p1}, Lmiui/sharesdk/model/InviteServerExtension;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lmiui/sharesdk/model/InviteServerExtension$1;->newArray(I)[Lmiui/sharesdk/model/InviteServerExtension;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiui/sharesdk/model/InviteServerExtension;
    .locals 0

    .line 39
    new-array p0, p1, [Lmiui/sharesdk/model/InviteServerExtension;

    return-object p0
.end method

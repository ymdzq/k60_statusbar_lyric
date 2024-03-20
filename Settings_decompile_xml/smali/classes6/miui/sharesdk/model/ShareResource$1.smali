.class Lmiui/sharesdk/model/ShareResource$1;
.super Ljava/lang/Object;
.source "ShareResource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/sharesdk/model/ShareResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/sharesdk/model/ShareResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lmiui/sharesdk/model/ShareResource$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/sharesdk/model/ShareResource;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/sharesdk/model/ShareResource;
    .locals 0

    .line 43
    new-instance p0, Lmiui/sharesdk/model/ShareResource;

    invoke-direct {p0, p1}, Lmiui/sharesdk/model/ShareResource;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lmiui/sharesdk/model/ShareResource$1;->newArray(I)[Lmiui/sharesdk/model/ShareResource;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiui/sharesdk/model/ShareResource;
    .locals 0

    .line 48
    new-array p0, p1, [Lmiui/sharesdk/model/ShareResource;

    return-object p0
.end method

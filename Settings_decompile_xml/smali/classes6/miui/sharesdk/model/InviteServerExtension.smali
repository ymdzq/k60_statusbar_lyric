.class public final Lmiui/sharesdk/model/InviteServerExtension;
.super Ljava/lang/Object;
.source "InviteServerExtension.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/sharesdk/model/InviteServerExtension;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extraInfo:Ljava/lang/String;

.field public final shareContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lmiui/sharesdk/model/InviteServerExtension$1;

    invoke-direct {v0}, Lmiui/sharesdk/model/InviteServerExtension$1;-><init>()V

    sput-object v0, Lmiui/sharesdk/model/InviteServerExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/sharesdk/model/InviteServerExtension;->extraInfo:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/sharesdk/model/InviteServerExtension;->shareContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 17
    iput-object p1, p0, Lmiui/sharesdk/model/InviteServerExtension;->extraInfo:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lmiui/sharesdk/model/InviteServerExtension;->shareContent:Ljava/lang/String;

    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null == extraInfo || null == shareContentStr"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addToRequestParam(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extraInfo"

    .line 22
    iget-object v1, p0, Lmiui/sharesdk/model/InviteServerExtension;->extraInfo:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shareContentStr"

    .line 23
    iget-object p0, p0, Lmiui/sharesdk/model/InviteServerExtension;->shareContent:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 50
    iget-object p2, p0, Lmiui/sharesdk/model/InviteServerExtension;->extraInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lmiui/sharesdk/model/InviteServerExtension;->shareContent:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

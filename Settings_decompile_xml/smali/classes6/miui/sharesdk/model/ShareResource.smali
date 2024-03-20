.class public final Lmiui/sharesdk/model/ShareResource;
.super Ljava/lang/Object;
.source "ShareResource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/sharesdk/model/ShareResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final resId:Ljava/lang/String;

.field private final subResId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lmiui/sharesdk/model/ShareResource$1;

    invoke-direct {v0}, Lmiui/sharesdk/model/ShareResource$1;-><init>()V

    sput-object v0, Lmiui/sharesdk/model/ShareResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/sharesdk/model/ShareResource;->subResId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lmiui/sharesdk/model/ShareResource;->subResId:Ljava/lang/String;

    return-void
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

    const-string v0, "resId"

    .line 20
    iget-object v1, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "subResId"

    .line 21
    iget-object p0, p0, Lmiui/sharesdk/model/ShareResource;->subResId:Ljava/lang/String;

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

    .line 31
    iget-object p2, p0, Lmiui/sharesdk/model/ShareResource;->resId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Lmiui/sharesdk/model/ShareResource;->subResId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

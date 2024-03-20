.class public Lcom/android/settings/search/RemoteSearchResult;
.super Ljava/lang/Object;
.source "RemoteSearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/search/RemoteSearchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final path:Ljava/lang/String;

.field private final score:I

.field private final searchOrigin:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/android/settings/search/RemoteSearchResult$1;

    invoke-direct {v0}, Lcom/android/settings/search/RemoteSearchResult$1;-><init>()V

    sput-object v0, Lcom/android/settings/search/RemoteSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/RemoteSearchResult;->title:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/RemoteSearchResult;->path:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/RemoteSearchResult;->score:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/RemoteSearchResult;->searchOrigin:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/android/settings/search/RemoteSearchResult;->title:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/settings/search/RemoteSearchResult;->path:Ljava/lang/String;

    const/high16 v0, -0x80000000

    .line 15
    iput v0, p0, Lcom/android/settings/search/RemoteSearchResult;->score:I

    .line 16
    iput-object p1, p0, Lcom/android/settings/search/RemoteSearchResult;->searchOrigin:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/settings/search/RemoteSearchResult;->title:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/android/settings/search/RemoteSearchResult;->path:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/android/settings/search/RemoteSearchResult;->score:I

    .line 23
    iput-object p4, p0, Lcom/android/settings/search/RemoteSearchResult;->searchOrigin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/search/RemoteSearchResult;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getScore()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/android/settings/search/RemoteSearchResult;->score:I

    return p0
.end method

.method public getSearchOrigin()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/search/RemoteSearchResult;->searchOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/search/RemoteSearchResult;->title:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    iget-object p2, p0, Lcom/android/settings/search/RemoteSearchResult;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/android/settings/search/RemoteSearchResult;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget p2, p0, Lcom/android/settings/search/RemoteSearchResult;->score:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object p0, p0, Lcom/android/settings/search/RemoteSearchResult;->searchOrigin:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

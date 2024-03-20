.class public Lmiui/settings/splitlib/SplitPageIntent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mSplitPagePath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiui/settings/splitlib/SplitPageIntent$1;

    .line 2
    invoke-direct {v0}, Lmiui/settings/splitlib/SplitPageIntent$1;-><init>()V

    .line 4
    sput-object v0, Lmiui/settings/splitlib/SplitPageIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    .line 3
    iput-object p2, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSplitPagePath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object p0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    return-void
    .line 12
.end method

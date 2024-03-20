.class public Lmiui/settings/splitlib/SplitPageIntent;
.super Ljava/lang/Object;
.source "SplitPageIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/settings/splitlib/SplitPageIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mSplitPagePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lmiui/settings/splitlib/SplitPageIntent$1;

    invoke-direct {v0}, Lmiui/settings/splitlib/SplitPageIntent$1;-><init>()V

    sput-object v0, Lmiui/settings/splitlib/SplitPageIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    .line 14
    iput-object p2, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 47
    iget-object p0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getSplitPagePath()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget-object p0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

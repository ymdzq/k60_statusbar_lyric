.class public final Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFileAuthority:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;->mFileAuthority:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final createTempImageUri(Ljava/io/File;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    .line 12
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;->mFileAuthority:Ljava/lang/String;

    .line 14
    invoke-static {p1, p0, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method

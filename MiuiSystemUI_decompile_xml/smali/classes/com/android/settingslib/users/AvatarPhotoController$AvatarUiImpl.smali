.class public final Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/AvatarPickerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final startSystemActivityForResult(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 7
    const/high16 v1, 0x100000

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    const-string p0, "No system package activity could be found for code 1003"

    .line 21
    const-string p1, "AvatarPhotoController"

    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return v2

    .line 28
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 33
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 35
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const/16 v0, 0x3eb

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/users/AvatarPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    const/4 p0, 0x1

    .line 47
    return p0
    .line 48
.end method

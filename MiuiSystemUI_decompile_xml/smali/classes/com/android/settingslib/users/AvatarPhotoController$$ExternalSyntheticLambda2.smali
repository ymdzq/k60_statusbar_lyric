.class public final synthetic Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settingslib/users/AvatarPhotoController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/AvatarPhotoController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/users/AvatarPhotoController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/users/AvatarPhotoController;

    .line 8
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPhotoController;->mAvatarUi:Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;

    .line 10
    iget-object v0, v0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v1, Landroid/content/Intent;

    .line 17
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 19
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController;->mCropPictureUri:Landroid/net/Uri;

    .line 22
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 24
    const/4 p0, -0x1

    .line 27
    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 28
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 31
    return-void

    .line 34
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/users/AvatarPhotoController;

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPhotoController;->mAvatarUi:Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;

    .line 37
    iget-object v0, v0, Lcom/android/settingslib/users/AvatarPhotoController$AvatarUiImpl;->mActivity:Lcom/android/settingslib/users/AvatarPickerActivity;

    .line 39
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 41
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    goto :goto_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 56
    :goto_2
    if-nez v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPhotoController;->mPreCropPictureUri:Landroid/net/Uri;

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/AvatarPhotoController;->cropPhoto(Landroid/net/Uri;)V

    .line 61
    :cond_2
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 66
.end method

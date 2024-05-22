.class public final Lcom/android/settingslib/users/EditUserPhotoController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mActivityStarter:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

.field public final mImageView:Landroid/widget/ImageView;

.field public final mImagesDir:Ljava/io/File;

.field public mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

.field public mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivity:Landroid/app/Activity;

    .line 5
    iput-object p2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mActivityStarter:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    .line 7
    new-instance p2, Ljava/io/File;

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    .line 11
    move-result-object p1

    .line 14
    const-string v0, "multi_user"

    .line 15
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImagesDir:Ljava/io/File;

    .line 20
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 22
    iput-object p3, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    .line 25
    new-instance p1, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda1;

    .line 27
    invoke-direct {p1, p0}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;)V

    .line 29
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iput-object p4, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object p5, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    return-void
    .line 39
.end method

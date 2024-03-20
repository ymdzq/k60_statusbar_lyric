.class public Lcom/android/settingslib/users/EditUserInfoController;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"


# instance fields
.field private mEditUserInfoDialog:Landroid/app/Dialog;

.field private mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

.field private final mFileAuthority:Ljava/lang/String;

.field private mSavedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSavedPhoto:Landroid/graphics/Bitmap;

.field private mWaitingForActivityResult:Z


# direct methods
.method public static synthetic $r8$lambda$-yy83-F1UfR5Mv4kSdUK_qBAfjk(Lcom/android/settingslib/users/EditUserInfoController;Landroid/graphics/drawable/Drawable;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/function/BiConsumer;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/settingslib/users/EditUserInfoController;->lambda$buildDialog$1(Landroid/graphics/drawable/Drawable;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/function/BiConsumer;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vyBXS3iW61nwcHYFAZerUf-LUc8(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/users/EditUserInfoController;->lambda$createDialog$0(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z-2PmKfwoEz5DJIGbWu3Om1Bomk(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/users/EditUserInfoController;->lambda$buildDialog$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 64
    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController;->mFileAuthority:Ljava/lang/String;

    return-void
.end method

.method private buildDialog(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Landroid/widget/EditText;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 190
    new-instance p6, Landroid/app/AlertDialog$Builder;

    invoke-direct {p6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {p6, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 192
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/EditUserInfoController;Landroid/graphics/drawable/Drawable;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    const p3, 0x104000a    # @android:string/ok

    .line 193
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p8}, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;)V

    const/high16 p0, 0x1040000    # @android:string/cancel

    .line 209
    invoke-virtual {p1, p0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private clear()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/android/settingslib/users/EditUserPhotoController;->removeNewUserPhotoBitmapFile()V

    :cond_0
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 72
    iput-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 73
    iput-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private getUserIcon(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p1, v0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_0
    return-object p2
.end method

.method private synthetic lambda$buildDialog$1(Landroid/graphics/drawable/Drawable;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/function/BiConsumer;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 194
    iget-object p5, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz p5, :cond_0

    .line 195
    invoke-virtual {p5}, Lcom/android/settingslib/users/EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_1

    move-object p1, p5

    .line 201
    :cond_1
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 202
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_2

    move-object p3, p2

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserInfoController;->clear()V

    if-eqz p4, :cond_3

    .line 206
    invoke-interface {p4, p3, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$buildDialog$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserInfoController;->clear()V

    if-eqz p1, :cond_0

    .line 212
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$createDialog$0(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V
    .locals 0

    .line 156
    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method


# virtual methods
.method public createDialog(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/settingslib/users/ActivityStarter;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    move-object v9, p0

    move-object v1, p1

    .line 133
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 134
    sget v2, Lcom/android/settingslib/R$layout;->edit_user_info_dialog_content:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 136
    sget v0, Lcom/android/settingslib/R$id;->user_name:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    move-object v5, p4

    .line 137
    invoke-virtual {v3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    sget v0, Lcom/android/settingslib/R$id;->user_photo:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    move-object v4, p3

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v6, -0x2710

    const/4 v7, 0x0

    .line 142
    invoke-static {v4, v6, v7}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 145
    :goto_0
    invoke-direct {p0, p1, v4}, Lcom/android/settingslib/users/EditUserInfoController;->getUserIcon(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 146
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->isChangePhotoRestrictedByBase(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    sget v0, Lcom/android/settingslib/R$id;->add_a_photo_icon:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 155
    new-instance v6, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1, v4}, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    move-object v4, p2

    .line 159
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/users/EditUserInfoController;->createEditUserPhotoController(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;

    move-result-object v0

    iput-object v0, v9, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    .line 163
    :goto_1
    sget v0, Lcom/android/settingslib/R$id;->user_info_scroll:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 167
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setClipToOutline(Z)V

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 169
    invoke-direct/range {v0 .. v8}, Lcom/android/settingslib/users/EditUserInfoController;->buildDialog(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, v9, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    .line 173
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 176
    iget-object v0, v9, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method createEditUserPhotoController(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;
    .locals 8

    .line 241
    new-instance v7, Lcom/android/settingslib/users/EditUserPhotoController;

    iget-object v4, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/settingslib/users/EditUserInfoController;->mFileAuthority:Ljava/lang/String;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/users/EditUserPhotoController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object v7
.end method

.method getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    const-string p0, "no_set_user_icon"

    .line 235
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 234
    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method isChangePhotoRestrictedByBase(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "no_set_user_icon"

    .line 229
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 228
    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public makeEditUserInfoDialogCancel()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserInfoController;->clear()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    .line 119
    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "pending_photo"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settingslib/users/EditUserPhotoController;->loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    :cond_0
    const-string v0, "awaiting_result"

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/android/settingslib/users/EditUserPhotoController;->saveNewUserPhotoBitmap()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "pending_photo"

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "awaiting_result"

    .line 101
    iget-boolean p0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public startingActivityForResult()V
    .locals 1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    return-void
.end method

.class public Lcom/android/settingslib/users/CreateUserDialogController;
.super Ljava/lang/Object;
.source "CreateUserDialogController.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

.field private mCurrentState:I

.field private mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

.field private mEditUserInfoView:Landroid/view/View;

.field private mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

.field private final mFileAuthority:Ljava/lang/String;

.field private mGrantAdminView:Landroid/view/View;

.field private mIsAdmin:Ljava/lang/Boolean;

.field private mSavedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSavedName:Ljava/lang/String;

.field private mSavedPhoto:Landroid/graphics/Bitmap;

.field private mSuccessCallback:Lcom/android/settingslib/users/NewUserData;

.field private mUserCreationDialog:Landroid/app/Dialog;

.field private mUserNameView:Landroid/widget/EditText;

.field private mWaitingForActivityResult:Z


# direct methods
.method public static synthetic $r8$lambda$3Qc2okZDNw0wW8bqwvn-xthaD50(Lcom/android/settingslib/users/CreateUserDialogController;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/users/CreateUserDialogController;->lambda$addCustomViews$3(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7m6qn0h53brCFojPytHsdI_7i94(Lcom/android/settingslib/users/CreateUserDialogController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settingslib/users/CreateUserDialogController;->lambda$onRestoreInstanceState$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FN8Tz_wqIbZRSiNUKYYjI1zj9DI(Lcom/android/settingslib/users/CreateUserDialogController;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/users/CreateUserDialogController;->lambda$createDialog$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L8e9uY_U9n1wTsTi2Ls5l3UJeR4(Lcom/android/settingslib/users/CreateUserDialogController;Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/users/CreateUserDialogController;->lambda$addGrantAdminView$6(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dP_--vSUfMh0tk5NdxHY-NkNx3s(Lcom/android/settingslib/users/CreateUserDialogController;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/users/CreateUserDialogController;->lambda$addCustomViews$4(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lhfRgmCPwar5gtlnAV89jrV93y4(Lcom/android/settingslib/users/CreateUserDialogController;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settingslib/users/CreateUserDialogController;->lambda$onSaveInstanceState$1(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rjhAdYZhCqvTqsas6PMursdGWIU(Lcom/android/settingslib/users/CreateUserDialogController;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/users/CreateUserDialogController;->lambda$addUserInfoEditView$5(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mFileAuthority:Ljava/lang/String;

    return-void
.end method

.method private addCustomViews(Z)V
    .locals 3

    .line 199
    invoke-direct {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->addGrantAdminView()V

    .line 200
    invoke-direct {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->addUserInfoEditView()V

    .line 201
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    sget v1, Lcom/android/settingslib/R$string;->next:I

    new-instance v2, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/utils/CustomDialogHelper;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 208
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    sget v1, Lcom/android/settingslib/R$string;->back:I

    new-instance v2, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/utils/CustomDialogHelper;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/android/settingslib/utils/CustomDialogHelper;

    return-void
.end method

.method private addGrantAdminView()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settingslib/R$layout;->grant_admin_dialog_content:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 351
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->addCustomView(Landroid/view/View;)Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 352
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    sget v1, Lcom/android/settingslib/R$id;->choose_admin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 353
    new-instance v1, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda6;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 358
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 359
    sget p0, Lcom/android/settingslib/R$id;->grant_admin_yes:I

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 360
    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 361
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 362
    sget p0, Lcom/android/settingslib/R$id;->grant_admin_no:I

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 363
    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addUserInfoEditView()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settingslib/R$layout;->edit_user_info_dialog_content:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 313
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->addCustomView(Landroid/view/View;)Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 314
    invoke-direct {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->setUserName()V

    .line 315
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    sget v1, Lcom/android/settingslib/R$id;->user_photo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 318
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 319
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, -0x2710

    const/4 v3, 0x0

    .line 318
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 321
    invoke-direct {p0, v1}, Lcom/android/settingslib/users/CreateUserDialogController;->getUserIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/users/CreateUserDialogController;->isChangePhotoRestrictedByBase(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    sget v0, Lcom/android/settingslib/R$id;->add_a_photo_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 329
    invoke-virtual {p0, v1}, Lcom/android/settingslib/users/CreateUserDialogController;->getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    new-instance v2, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/CreateUserDialogController;->createEditUserPhotoController(Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    :goto_0
    return-void
.end method

.method private getUserIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 305
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p1
.end method

.method private synthetic lambda$addCustomViews$3(ZLandroid/view/View;)V
    .locals 1

    .line 202
    iget p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    if-ne p2, v0, :cond_0

    if-nez p1, :cond_0

    add-int/2addr p2, v0

    .line 204
    iput p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    return-void
.end method

.method private synthetic lambda$addCustomViews$4(ZLandroid/view/View;)V
    .locals 1

    .line 209
    iget p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    if-ne p2, v0, :cond_0

    if-nez p1, :cond_0

    sub-int/2addr p2, v0

    .line 211
    iput p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    return-void
.end method

.method private synthetic lambda$addGrantAdminView$6(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 354
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButtonEnabled(Z)Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 355
    sget p1, Lcom/android/settingslib/R$id;->grant_admin_yes:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic lambda$addUserInfoEditView$5(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/view/View;)V
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private synthetic lambda$createDialog$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 191
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 192
    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->clear()V

    return-void
.end method

.method private synthetic lambda$onRestoreInstanceState$0(Ljava/lang/String;)V
    .locals 1

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/users/EditUserPhotoController;->loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method private synthetic lambda$onSaveInstanceState$1(Landroid/os/Bundle;)V
    .locals 1

    .line 145
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    invoke-virtual {p0}, Lcom/android/settingslib/users/EditUserPhotoController;->saveNewUserPhotoBitmap()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "pending_photo"

    .line 147
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setUserName()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    sget v1, Lcom/android/settingslib/R$id;->user_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    .line 342
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 343
    sget p0, Lcom/android/settingslib/R$string;->user_new_user_name:I

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateLayout()V
    .locals 7

    .line 219
    iget v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ge v0, v1, :cond_0

    .line 293
    iput v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 294
    invoke-direct {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    goto/16 :goto_3

    .line 296
    :cond_0
    iput v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 297
    invoke-direct {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    goto/16 :goto_3

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v0}, Lcom/android/settingslib/users/EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 277
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 278
    iget-object v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settingslib/R$string;->user_new_user_name:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 281
    :goto_1
    iget-object v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/settingslib/users/NewUserData;

    if-eqz v2, :cond_4

    .line 282
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 282
    invoke-interface {v2, v1, v0, v3}, Lcom/android/settingslib/users/NewUserData;->onSuccess(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)V

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 286
    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->clear()V

    goto/16 :goto_3

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 264
    invoke-virtual {v0, v4, v4}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v5, v4}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object v0

    .line 266
    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->back:I

    .line 267
    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setNegativeButtonText(I)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->done:I

    .line 268
    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setPositiveButtonText(I)Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 269
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 250
    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v5, v5}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v3, v5}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settingslib/R$drawable;->ic_admin_panel_settings:I

    .line 253
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->user_grant_admin_title:I

    .line 254
    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->user_grant_admin_message:I

    .line 255
    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setMessage(I)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->back:I

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setNegativeButtonText(I)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->next:I

    .line 257
    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setPositiveButtonText(I)Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 258
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    .line 259
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {p0, v4}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButtonEnabled(Z)Lcom/android/settingslib/utils/CustomDialogHelper;

    goto :goto_3

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_add_user_long_message_displayed"

    .line 225
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 228
    sget v6, Lcom/android/settingslib/R$string;->user_add_user_message_short:I

    goto :goto_2

    .line 229
    :cond_8
    sget v6, Lcom/android/settingslib/R$string;->user_add_user_message_long:I

    :goto_2
    if-nez v2, :cond_9

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    :cond_9
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settingslib/R$drawable;->ic_person_add:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {p0, v4, v5}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object p0

    .line 237
    invoke-virtual {p0, v5, v5}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object p0

    .line 238
    invoke-virtual {p0, v3, v5}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object p0

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object p0

    .line 240
    invoke-virtual {p0, v5}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButtonEnabled(Z)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object p0

    sget v0, Lcom/android/settingslib/R$string;->user_add_user_title:I

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object p0

    .line 242
    invoke-virtual {p0, v6}, Lcom/android/settingslib/utils/CustomDialogHelper;->setMessage(I)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object p0

    sget v0, Lcom/android/settingslib/R$string;->cancel:I

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setNegativeButtonText(I)Lcom/android/settingslib/utils/CustomDialogHelper;

    move-result-object p0

    sget v0, Lcom/android/settingslib/R$string;->next:I

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setPositiveButtonText(I)Lcom/android/settingslib/utils/CustomDialogHelper;

    goto :goto_3

    .line 289
    :cond_a
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/utils/CustomDialogHelper;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_b
    :goto_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    .line 103
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 104
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    .line 105
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 106
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 109
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 110
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    .line 111
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 112
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 113
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    .line 114
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/settingslib/users/NewUserData;

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    return-void
.end method

.method public createDialog(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;ZLcom/android/settingslib/users/NewUserData;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 1

    .line 183
    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 184
    new-instance v0, Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 185
    iput-object p4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/settingslib/users/NewUserData;

    .line 186
    iput-object p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    .line 187
    invoke-direct {p0, p3}, Lcom/android/settingslib/users/CreateUserDialogController;->addCustomViews(Z)V

    .line 188
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    .line 189
    invoke-direct {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    .line 190
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    new-instance p2, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p5}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 194
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method createEditUserPhotoController(Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;
    .locals 8

    .line 381
    new-instance v7, Lcom/android/settingslib/users/EditUserPhotoController;

    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    iget-object v4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mFileAuthority:Ljava/lang/String;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/users/EditUserPhotoController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object v7
.end method

.method getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    const-string p0, "no_set_user_icon"

    .line 376
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 375
    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/utils/CustomDialogHelper;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isChangePhotoRestrictedByBase(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "no_set_user_icon"

    .line 370
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 369
    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    .line 171
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "pending_photo"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    const-string v0, "current_state"

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const-string v0, "admin_status"

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    :cond_1
    const-string/jumbo v0, "saved_name"

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    const-string v0, "awaiting_result"

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 152
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "admin_status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "saved_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current_state"

    .line 155
    iget v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "awaiting_result"

    .line 156
    iget-boolean p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public startingActivityForResult()V
    .locals 1

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    return-void
.end method

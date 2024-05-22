.class public Lcom/android/systemui/user/CreateUserActivity;
.super Landroid/app/Activity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBackCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;

.field public final mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

.field public mSetupUserDialog:Landroid/app/Dialog;

.field public final mUserCreator:Lcom/android/systemui/user/UserCreator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/UserCreator;Lcom/android/settingslib/users/CreateUserDialogController;Landroid/app/IActivityManager;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/user/CreateUserActivity;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/user/CreateUserActivity;->mBackCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity;->mUserCreator:Lcom/android/systemui/user/UserCreator;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/user/CreateUserActivity;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/user/CreateUserActivity;->mActivityManager:Landroid/app/IActivityManager;

    .line 16
    iput-object p4, p0, Lcom/android/systemui/user/CreateUserActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 6
    iput-boolean v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    .line 8
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    .line 10
    if-eqz p0, :cond_2

    .line 12
    const/4 v0, -0x1

    .line 14
    if-eq p2, v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/16 p2, 0x3ec

    .line 18
    if-ne p1, p2, :cond_2

    .line 20
    const-string p1, "default_icon_tint_color"

    .line 22
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 24
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    move-result p1

    .line 33
    :try_start_0
    new-instance p2, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda0;

    .line 34
    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;I)V

    .line 36
    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 39
    move-result-object p0

    .line 42
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    const-string p1, "EditUserPhotoController"

    .line 48
    const-string p2, "Error processing default icon"

    .line 50
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 56
    move-result-object p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 62
    move-result-object p1

    .line 65
    new-instance p2, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda2;

    .line 66
    const/4 p3, 0x2

    .line 68
    invoke-direct {p2, p0, p1, p3}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/os/Parcelable;I)V

    .line 69
    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 72
    :cond_2
    :goto_0
    return-void
    .line 75
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    return-void
    .line 12
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 6
    const v1, 0x7f0d0033    # @layout/activity_create_new_user 'res/layout/activity_create_new_user.xml'

    .line 9
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 12
    iget-object v1, p0, Lcom/android/systemui/user/CreateUserActivity;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 15
    const/4 v2, 0x0

    .line 17
    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string v3, "pending_photo"

    .line 23
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    new-instance v4, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;

    .line 31
    invoke-direct {v4, v1, v3, v2}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Ljava/lang/Object;I)V

    .line 33
    invoke-static {v4}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 36
    :cond_0
    const-string v3, "current_state"

    .line 39
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 41
    move-result v3

    .line 44
    iput v3, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 45
    const-string v3, "admin_status"

    .line 47
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 49
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 55
    move-result v3

    .line 58
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    move-result-object v3

    .line 62
    iput-object v3, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 63
    :cond_1
    const-string v3, "saved_name"

    .line 65
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 70
    iput-object v3, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    .line 71
    const-string v3, "awaiting_result"

    .line 73
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 75
    move-result p1

    .line 78
    iput-boolean p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    .line 79
    :cond_2
    const p1, 0x7f130c2f    # @string/user_new_user_name 'New user'

    .line 81
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 87
    move-result-object v3

    .line 90
    const-string v4, "extra_is_keyguard_showing"

    .line 91
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 93
    move-result v3

    .line 96
    new-instance v4, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    .line 97
    invoke-direct {v4, p0}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/user/CreateUserActivity;)V

    .line 99
    iget-object v5, p0, Lcom/android/systemui/user/CreateUserActivity;->mUserCreator:Lcom/android/systemui/user/UserCreator;

    .line 102
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-static {}, Landroid/os/UserManager;->isMultipleAdminEnabled()Z

    .line 107
    move-result v6

    .line 110
    if-eqz v6, :cond_3

    .line 111
    iget-object v5, v5, Lcom/android/systemui/user/UserCreator;->userManager:Landroid/os/UserManager;

    .line 113
    invoke-virtual {v5}, Landroid/os/UserManager;->isAdminUser()Z

    .line 115
    move-result v5

    .line 118
    if-eqz v5, :cond_3

    .line 119
    if-nez v3, :cond_3

    .line 121
    move v3, v0

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    move v3, v2

    .line 125
    :goto_0
    new-instance v5, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    .line 126
    invoke-direct {v5, p0}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/user/CreateUserActivity;)V

    .line 128
    new-instance v6, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;

    .line 131
    invoke-direct {v6, p0, v2}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/user/CreateUserActivity;I)V

    .line 133
    iput-object p0, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 136
    new-instance v7, Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 138
    invoke-direct {v7, p0}, Lcom/android/settingslib/utils/CustomDialogHelper;-><init>(Landroid/content/Context;)V

    .line 140
    iput-object v7, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 143
    iput-object v5, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    .line 145
    iput-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    .line 147
    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 149
    const v5, 0x7f0d00d3    # @layout/grant_admin_dialog_content 'res/layout/grant_admin_dialog_content.xml'

    .line 151
    const/4 v7, 0x0

    .line 154
    invoke-static {v4, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 155
    move-result-object v4

    .line 158
    iput-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 159
    iget-object v5, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 161
    iget-object v5, v5, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomLayout:Landroid/widget/LinearLayout;

    .line 163
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 168
    const v5, 0x7f0a01eb    # @id/choose_admin

    .line 170
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object v4

    .line 176
    check-cast v4, Landroid/widget/RadioGroup;

    .line 177
    new-instance v5, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda4;

    .line 179
    invoke-direct {v5, v1}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;)V

    .line 181
    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 184
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 187
    iget-object v8, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 189
    invoke-virtual {v5, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v5

    .line 194
    if-eqz v5, :cond_4

    .line 195
    const v5, 0x7f0a03b5    # @id/grant_admin_yes

    .line 197
    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    .line 200
    move-result-object v4

    .line 203
    check-cast v4, Landroid/widget/RadioButton;

    .line 204
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 206
    goto :goto_1

    .line 209
    :cond_4
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 210
    iget-object v8, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 212
    invoke-virtual {v5, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v5

    .line 217
    if-eqz v5, :cond_5

    .line 218
    const v5, 0x7f0a03b3    # @id/grant_admin_no

    .line 220
    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    .line 223
    move-result-object v4

    .line 226
    check-cast v4, Landroid/widget/RadioButton;

    .line 227
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 229
    :cond_5
    :goto_1
    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 232
    const v5, 0x7f0d00b6    # @layout/edit_user_info_dialog_content 'res/layout/edit_user_info_dialog_content.xml'

    .line 234
    invoke-static {v4, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 237
    move-result-object v4

    .line 240
    iput-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 241
    iget-object v5, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 243
    iget-object v5, v5, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomLayout:Landroid/widget/LinearLayout;

    .line 245
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 250
    const v5, 0x7f0a0a45    # @id/user_name

    .line 252
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 255
    move-result-object v4

    .line 258
    check-cast v4, Landroid/widget/EditText;

    .line 259
    iput-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    .line 261
    iget-object v5, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    .line 263
    if-nez v5, :cond_6

    .line 265
    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setText(I)V

    .line 267
    goto :goto_2

    .line 270
    :cond_6
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :goto_2
    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 274
    const v4, 0x7f0a0a46    # @id/user_photo

    .line 276
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 279
    move-result-object p1

    .line 282
    check-cast p1, Landroid/widget/ImageView;

    .line 283
    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 285
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 287
    move-result-object v4

    .line 290
    const/16 v5, -0x2710

    .line 291
    invoke-static {v4, v5, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    .line 293
    move-result-object v4

    .line 296
    iget-object v5, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 297
    if-eqz v5, :cond_7

    .line 299
    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 301
    sget v7, Lcom/android/settingslib/drawable/CircleFramedDrawable;->$r8$clinit:I

    .line 303
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 305
    move-result-object v4

    .line 308
    const v7, 0x1050305

    .line 309
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 312
    move-result v4

    .line 315
    new-instance v7, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    .line 316
    invoke-direct {v7, v5, v4}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 318
    iput-object v7, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    .line 321
    move-object v4, v7

    .line 323
    :cond_7
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 327
    invoke-virtual {v1, v4}, Lcom/android/settingslib/users/CreateUserDialogController;->isChangePhotoRestrictedByBase(Landroid/content/Context;)Z

    .line 329
    move-result v4

    .line 332
    if-eqz v4, :cond_8

    .line 333
    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 335
    const v4, 0x7f0a0099    # @id/add_a_photo_icon

    .line 337
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 340
    move-result-object p1

    .line 343
    const/16 v4, 0x8

    .line 344
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 346
    goto :goto_3

    .line 349
    :cond_8
    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 350
    invoke-virtual {v1, v4}, Lcom/android/settingslib/users/CreateUserDialogController;->getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 352
    move-result-object v4

    .line 355
    if-eqz v4, :cond_9

    .line 356
    new-instance v5, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda3;

    .line 358
    invoke-direct {v5, v1, v4}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 360
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    goto :goto_3

    .line 366
    :cond_9
    invoke-virtual {v1, p1}, Lcom/android/settingslib/users/CreateUserDialogController;->createEditUserPhotoController(Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;

    .line 367
    move-result-object p1

    .line 370
    iput-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    .line 371
    :goto_3
    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 373
    new-instance v4, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;

    .line 375
    invoke-direct {v4, v1, v3, v2}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;ZI)V

    .line 377
    const/4 v5, 0x6

    .line 380
    const v7, 0x7f130855    # @string/next 'Next'

    .line 381
    invoke-virtual {p1, v5, v7, v4}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;)V

    .line 384
    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 387
    new-instance v4, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;

    .line 389
    invoke-direct {v4, v1, v3, v0}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;ZI)V

    .line 391
    const/4 v3, 0x5

    .line 394
    const v5, 0x7f130160    # @string/back 'Back'

    .line 395
    invoke-virtual {p1, v3, v5, v4}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;)V

    .line 398
    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 401
    iget-object p1, p1, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    .line 403
    iput-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    .line 405
    invoke-virtual {v1}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    .line 407
    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    .line 410
    new-instance v3, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;

    .line 412
    invoke-direct {v3, v1, v6}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;)V

    .line 414
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 417
    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    .line 420
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 422
    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    .line 425
    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    .line 427
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 429
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 432
    move-result-object p1

    .line 435
    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity;->mBackCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;

    .line 436
    invoke-interface {p1, v2, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 438
    return-void
    .line 441
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/user/CreateUserActivity;->mBackCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;

    .line 6
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 8
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 11
    return-void
    .line 14
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    const-string v0, "create_user_dialog_state"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 7
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "create_user_dialog_state"

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    .line 23
    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    .line 29
    if-eqz v1, :cond_1

    .line 31
    new-instance v1, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;

    .line 33
    const/4 v2, 0x1

    .line 35
    invoke-direct {v1, v0, p1, v2}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Ljava/lang/Object;I)V

    .line 36
    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 39
    :cond_1
    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 42
    if-eqz v1, :cond_2

    .line 44
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 51
    const-string v2, "admin_status"

    .line 52
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    :cond_2
    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    .line 57
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 59
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 70
    const-string v2, "saved_name"

    .line 71
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "current_state"

    .line 76
    iget v2, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 78
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v1, "awaiting_result"

    .line 83
    iget-boolean v0, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    .line 85
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    return-void
    .line 93
.end method

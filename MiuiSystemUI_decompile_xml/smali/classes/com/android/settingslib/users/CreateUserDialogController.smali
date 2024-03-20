.class public final Lcom/android/settingslib/users/CreateUserDialogController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mActivityStarter:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

.field public mCurrentState:I

.field public mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

.field public mEditUserInfoView:Landroid/view/View;

.field public mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

.field public mGrantAdminView:Landroid/view/View;

.field public mIsAdmin:Ljava/lang/Boolean;

.field public mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

.field public mSavedName:Ljava/lang/String;

.field public mSavedPhoto:Landroid/graphics/Bitmap;

.field public mSuccessCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

.field public mUserCreationDialog:Landroid/app/Dialog;

.field public mUserNameView:Landroid/widget/EditText;

.field public mWaitingForActivityResult:Z


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    .line 3
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 5
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 9
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    .line 13
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 15
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 17
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    .line 19
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 21
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 23
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    .line 25
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    .line 27
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 30
    return-void
    .line 32
.end method

.method public createEditUserPhotoController(Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/settingslib/users/EditUserPhotoController;

    .line 2
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 4
    iget-object v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    .line 6
    iget-object v4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    .line 8
    iget-object v5, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    .line 10
    move-object v0, v6

    .line 12
    move-object v3, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/users/EditUserPhotoController;-><init>(Landroid/app/Activity;Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 14
    return-object v6
    .line 17
.end method

.method public getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 1
    const-string p0, "no_set_user_icon"

    .line 2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 4
    move-result v0

    .line 7
    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public isChangePhotoRestrictedByBase(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string p0, "no_set_user_icon"

    .line 2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 4
    move-result v0

    .line 7
    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final updateLayout()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_c

    .line 5
    const v2, 0x7f130855    # @string/next 'Next'

    .line 7
    const/16 v3, 0x8

    .line 10
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    if-eqz v0, :cond_9

    .line 15
    const v7, 0x7f130160    # @string/back 'Back'

    .line 17
    if-eq v0, v6, :cond_8

    .line 20
    if-eq v0, v4, :cond_7

    .line 22
    const/4 v2, 0x3

    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    if-ge v0, v1, :cond_0

    .line 27
    iput v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 29
    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    .line 31
    goto/16 :goto_3

    .line 34
    :cond_0
    iput v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    .line 36
    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    .line 38
    goto/16 :goto_3

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    .line 43
    if-eqz v0, :cond_2

    .line 45
    iget-object v0, v0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    :goto_0
    move-object v13, v0

    .line 51
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    .line 52
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 66
    const v2, 0x7f130c29    # @string/user_new_user_name 'New user'

    .line 68
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 75
    move-result v3

    .line 78
    if-nez v3, :cond_3

    .line 79
    goto :goto_1

    .line 81
    :cond_3
    move-object v0, v1

    .line 82
    :goto_1
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    .line 83
    if-eqz v1, :cond_6

    .line 85
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 87
    iget-object v4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v3

    .line 94
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    move-result-object v3

    .line 98
    iget-object v1, v1, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    .line 99
    iget-object v4, v1, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    .line 101
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 103
    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 112
    move-result v4

    .line 115
    if-eqz v4, :cond_5

    .line 116
    :cond_4
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 121
    :cond_5
    move-object v9, v0

    .line 122
    new-instance v12, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;

    .line 123
    invoke-direct {v12, v1, v3}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/user/CreateUserActivity;Ljava/lang/Boolean;)V

    .line 125
    new-instance v11, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;

    .line 128
    invoke-direct {v11, v1, v6}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/user/CreateUserActivity;I)V

    .line 130
    iget-object v0, v1, Lcom/android/systemui/user/CreateUserActivity;->mUserCreator:Lcom/android/systemui/user/UserCreator;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    new-instance v10, Lcom/android/settingslib/users/UserCreatingDialog;

    .line 138
    iget-object v1, v0, Lcom/android/systemui/user/UserCreator;->context:Landroid/content/Context;

    .line 140
    invoke-direct {v10, v1, v5}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;Z)V

    .line 142
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 145
    new-instance v1, Lcom/android/systemui/user/UserCreator$createUser$1;

    .line 148
    move-object v7, v1

    .line 150
    move-object v8, v0

    .line 151
    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/user/UserCreator$createUser$1;-><init>(Lcom/android/systemui/user/UserCreator;Ljava/lang/String;Lcom/android/settingslib/users/UserCreatingDialog;Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda1;Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda4;Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, v0, Lcom/android/systemui/user/UserCreator;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 155
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 157
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 160
    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    .line 162
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->clear()V

    .line 167
    goto/16 :goto_3

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 172
    invoke-virtual {v0, v5, v5}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 174
    invoke-virtual {v0, v6, v5}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 177
    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 180
    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 183
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 185
    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 188
    const v1, 0x7f1303a3    # @string/done 'Done'

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 193
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 196
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 201
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 203
    goto/16 :goto_3

    .line 206
    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 208
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 213
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 218
    invoke-virtual {v0, v5, v6}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 220
    invoke-virtual {v0, v6, v6}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 223
    invoke-virtual {v0, v4, v6}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 226
    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 229
    const v3, 0x7f080ee2    # @drawable/ic_admin_panel_settings 'res/drawable/ic_admin_panel_settings.xml'

    .line 231
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 234
    move-result-object v1

    .line 237
    iget-object v3, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    .line 238
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroid/widget/TextView;

    .line 243
    const v3, 0x7f130c20    # @string/user_grant_admin_title 'Make this user an admin?'

    .line 245
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    .line 251
    const v3, 0x7f130c1f    # @string/user_grant_admin_message 'Admins have special privileges that other users don’t. An admin can manage all users, update or rese ...'

    .line 253
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 259
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 261
    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 264
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 266
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    .line 269
    if-nez v0, :cond_d

    .line 271
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 273
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 275
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    goto :goto_3

    .line 280
    :cond_9
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    .line 281
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    .line 286
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 291
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    .line 293
    move-result-object v0

    .line 296
    const-string v1, "key_add_user_long_message_displayed"

    .line 297
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 299
    move-result v3

    .line 302
    if-eqz v3, :cond_a

    .line 303
    const v7, 0x7f130c1b    # @string/user_add_user_message_short 'When you add a new user, that person needs to set up their space.\n\nAny user can update apps for all  ...'

    .line 305
    goto :goto_2

    .line 308
    :cond_a
    const v7, 0x7f130c1a    # @string/user_add_user_message_long 'You can share this device with other people by creating additional users. Each user has their own sp ...'

    .line 309
    :goto_2
    if-nez v3, :cond_b

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 314
    move-result-object v0

    .line 317
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 318
    move-result-object v0

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    :cond_b
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    .line 325
    const v1, 0x7f081117    # @drawable/ic_person_add 'res/drawable/ic_person_add.xml'

    .line 327
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 330
    move-result-object v0

    .line 333
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 334
    invoke-virtual {p0, v5, v6}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 336
    invoke-virtual {p0, v6, v6}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 339
    invoke-virtual {p0, v4, v6}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    .line 342
    iget-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    .line 345
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 350
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 352
    iget-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroid/widget/TextView;

    .line 355
    const v3, 0x7f130c1c    # @string/user_add_user_title 'Add new user?'

    .line 357
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    .line 363
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 365
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 368
    const v1, 0x7f130250    # @string/cancel 'Cancel'

    .line 370
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(I)V

    .line 373
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 376
    goto :goto_3

    .line 379
    :cond_c
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    .line 380
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    .line 382
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 384
    :cond_d
    :goto_3
    return-void
    .line 387
.end method

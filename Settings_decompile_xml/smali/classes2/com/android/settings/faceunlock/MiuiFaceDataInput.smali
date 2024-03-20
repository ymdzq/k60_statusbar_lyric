.class public Lcom/android/settings/faceunlock/MiuiFaceDataInput;
.super Landroid/app/Activity;
.source "MiuiFaceDataInput.java"


# instance fields
.field private mConfirmLockLaunched:Z

.field private mFaceEnrollToken:[B

.field private mIntentFromInternal:Z

.field private mIsKeyguardPasswordSecured:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedSkipConfirmPassword:Z

.field private mStartEnrolling:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mNeedSkipConfirmPassword:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mIntentFromInternal:Z

    return-void
.end method

.method private hideNavigationBar()V
    .locals 1

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1302

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 1

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "device_provisioned"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method private startFaceEnroll()V
    .locals 3

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->isSupportMultiFaceInput(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "com.android.settings"

    if-eqz v1, :cond_0

    const-string v1, "com.android.settings.faceunlock.MiuiNormalCameraMultiFaceInput"

    .line 163
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "com.android.settings.faceunlock.MiuiNormalCameraFaceInput"

    .line 166
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "for_face_enroll"

    .line 168
    iget-object v2, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mFaceEnrollToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "for_face_enroll_from_normal"

    const/4 v2, 0x1

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setCancelSettingsSplit(Landroid/content/Intent;)V

    const/16 v1, 0x65

    .line 171
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    iput-boolean v2, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mStartEnrolling:Z

    return-void
.end method

.method private startFaceOrConfirmPwd()V
    .locals 6

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 184
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mIsKeyguardPasswordSecured:Z

    const-string v1, "input_facedata_need_skip_password"

    const/4 v2, 0x0

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mNeedSkipConfirmPassword:Z

    .line 186
    iget-boolean v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mIsKeyguardPasswordSecured:Z

    const-string v3, "com.android.settings"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    if-nez v5, :cond_1

    if-nez v0, :cond_0

    .line 188
    iput-boolean v4, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setCancelSettingsSplit(Landroid/content/Intent;)V

    const-string v1, "com.android.settings.MiuiConfirmCommonPassword"

    .line 191
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment_title"

    .line 193
    sget v3, Lcom/android/settings/R$string;->empty_title:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "support_tee_face_unlock"

    .line 194
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "has_challenge"

    .line 195
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "for_face"

    .line 196
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 197
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->startFaceEnroll()V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setCancelSettingsSplit(Landroid/content/Intent;)V

    .line 204
    const-class v1, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-boolean v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mIntentFromInternal:Z

    if-eqz v1, :cond_2

    const-string v1, "face_request_code"

    const/16 v2, 0x65

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    :cond_2
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    iput-boolean v4, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private startFacePrompt()V
    .locals 3

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.faceunlock.MiuiFaceDataPrompt"

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3ea

    .line 178
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    const/16 v1, 0x3ee

    const/16 v2, 0x3ed

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq p1, v0, :cond_7

    if-eq p1, v4, :cond_7

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x65

    if-ne p1, p3, :cond_5

    const/16 p3, 0x67

    if-ne p2, p3, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->startFacePrompt()V

    goto/16 :goto_1

    :cond_1
    const/16 p3, 0x3eb

    if-ne p2, p3, :cond_4

    .line 122
    invoke-direct {p0, p0}, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 123
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 125
    iget-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mIntentFromInternal:Z

    if-eqz v0, :cond_2

    .line 126
    invoke-static {p3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setSettingsSplit(Landroid/content/Intent;)V

    :cond_2
    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.faceunlock.MiuiFaceDataManage"

    .line 128
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "input_facedata_need_skip_password"

    .line 129
    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, p3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_5
    const/16 p3, 0x3ea

    if-ne p1, p3, :cond_c

    if-ne p2, v5, :cond_6

    .line 141
    iput-boolean v3, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    .line 142
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->startFaceOrConfirmPwd()V

    goto :goto_1

    .line 144
    :cond_6
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_7
    :goto_0
    if-ne p2, v5, :cond_a

    .line 99
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isLargeScreenAndNoCamera(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p3, :cond_8

    const-string v0, "hw_auth_token"

    .line 101
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mFaceEnrollToken:[B

    .line 103
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->startFaceEnroll()V

    goto :goto_1

    .line 105
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->startFacePrompt()V

    goto :goto_1

    :cond_a
    const/16 p3, 0x3ec

    if-ne p2, p3, :cond_b

    .line 108
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/MiuiSecurityChooseUnlock$InternalActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    invoke-static {p3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setCancelSettingsSplit(Landroid/content/Intent;)V

    const-string v0, "add_keyguard_password_then_add_face_recoginition"

    .line 110
    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, ":android:show_fragment_title"

    .line 111
    sget v3, Lcom/android/settings/R$string;->empty_title:I

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, p3, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 115
    :cond_b
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_c
    :goto_1
    if-ne p1, v1, :cond_d

    .line 149
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Lcom/android/settings/MiuiSecuritySettings;->isMiShowMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    sget p1, Lcom/android/settings/R$string;->mishow_disable_password_setting:I

    invoke-static {p0, p1, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "face_request_code"

    const/4 v3, -0x1

    .line 60
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x65

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mIntentFromInternal:Z

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isLargeScreenAndNoCamera(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->startFacePrompt()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "key_confirm_lock_launched"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    .line 68
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->startFaceOrConfirmPwd()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 82
    iget-boolean v0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mStartEnrolling:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->hideNavigationBar()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_confirm_lock_launched"

    .line 90
    iget-boolean p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

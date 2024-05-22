.class public Lcom/android/systemui/media/MediaProjectionPermissionActivity;
.super Landroid/app/Activity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mMiuiDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mPackageName:Ljava/lang/String;

.field public mReviewGrantedConsentRequired:Z

.field public mUid:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    .line 6
    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final dismissMiuiDialog()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mMiuiDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final finish()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    return-void
.end method

.method public final finish(ILandroid/media/projection/IMediaProjection;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    .line 3
    sget-object v1, Lcom/android/systemui/media/MediaProjectionServiceHelper;->service:Landroid/media/projection/IMediaProjectionManager;

    invoke-static {p1, v0, p2}, Lcom/android/systemui/media/MediaProjectionServiceHelper$Companion;->setReviewedConsentIfNeeded(IZLandroid/media/projection/IMediaProjection;)V

    .line 4
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, -0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p2, v0, :cond_2

    .line 5
    :try_start_0
    iget p2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    .line 7
    iget-object v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 9
    iget-boolean v3, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    .line 11
    sget-object v4, Lcom/android/systemui/media/MediaProjectionServiceHelper;->service:Landroid/media/projection/IMediaProjectionManager;

    .line 13
    if-eqz v3, :cond_0

    .line 15
    invoke-interface {v4, p2, v2}, Landroid/media/projection/IMediaProjectionManager;->getProjection(ILjava/lang/String;)Landroid/media/projection/IMediaProjection;

    .line 17
    move-result-object v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v3, p1

    .line 22
    :goto_0
    if-nez v3, :cond_1

    .line 23
    invoke-interface {v4, p2, v2, v1, v1}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    .line 25
    move-result-object v3

    .line 28
    :cond_1
    new-instance p2, Landroid/content/Intent;

    .line 29
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 31
    const-string v2, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    .line 34
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    .line 36
    move-result-object v4

    .line 39
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 43
    const/4 p2, 0x1

    .line 46
    invoke-virtual {p0, p2, v3}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    .line 47
    iget-object p2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 50
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception p2

    .line 60
    :try_start_1
    const-string v0, "MediaProjectionPermissionActivity"

    .line 61
    const-string v2, "Error granting projection permission"

    .line 63
    invoke-static {v0, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 68
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->dismissMiuiDialog()V

    .line 74
    goto :goto_3

    .line 77
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->dismissMiuiDialog()V

    .line 78
    throw p1

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->dismissMiuiDialog()V

    .line 82
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 85
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    .line 88
    :goto_3
    return-void
    .line 91
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-string v0, "MediaProjectionPermissionActivity"

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    move-result-object p1

    .line 10
    const-string v1, "extra_media_projection_user_consent_required"

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 14
    move-result v1

    .line 17
    iput-boolean v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 24
    const/4 v3, 0x0

    .line 26
    if-nez v1, :cond_1

    .line 27
    const-string v1, "extra_media_projection_package_reusing_consent"

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 31
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 44
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    .line 47
    return-void

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    .line 51
    move-result p1

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 55
    move-result-object v1

    .line 58
    const/4 v4, -0x2

    .line 59
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 62
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/content/Intent;->getContentUserHint()I

    .line 66
    move-result v1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v1, v4

    .line 71
    :goto_1
    if-eq v1, v4, :cond_3

    .line 72
    move p1, v1

    .line 74
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    move-result-object v1

    .line 78
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v4, v2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 81
    move-result-object p1

    .line 84
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 85
    iput v4, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 89
    sget-object v6, Lcom/android/systemui/media/MediaProjectionServiceHelper;->service:Landroid/media/projection/IMediaProjectionManager;

    .line 91
    invoke-interface {v6, v4, v5}, Landroid/media/projection/IMediaProjectionManager;->hasProjectionPermission(ILjava/lang/String;)Z

    .line 93
    move-result v4

    .line 96
    const/4 v5, -0x1

    .line 97
    const/4 v7, 0x1

    .line 98
    if-eqz v4, :cond_6

    .line 99
    iget p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    .line 101
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 103
    iget-boolean v4, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    .line 105
    if-eqz v4, :cond_4

    .line 107
    invoke-interface {v6, p1, v1}, Landroid/media/projection/IMediaProjectionManager;->getProjection(ILjava/lang/String;)Landroid/media/projection/IMediaProjection;

    .line 109
    move-result-object v4

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    move-object v4, v3

    .line 114
    :goto_2
    if-nez v4, :cond_5

    .line 115
    invoke-interface {v6, p1, v1, v2, v2}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    .line 117
    move-result-object v4

    .line 120
    :cond_5
    new-instance p1, Landroid/content/Intent;

    .line 121
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 123
    const-string v1, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    .line 126
    invoke-interface {v4}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    .line 128
    move-result-object v6

    .line 131
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v5, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0, v7, v4}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    return-void

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 142
    sget-object v4, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    new-instance v0, Landroid/text/TextPaint;

    .line 149
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 151
    const/high16 v4, 0x42280000    # 42.0f

    .line 154
    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 156
    iget-object v4, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 159
    invoke-static {v1, v4}, Lcom/android/systemui/util/Utils;->isHeadlessRemoteDisplayProvider(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    .line 161
    move-result v4

    .line 164
    if-eqz v4, :cond_7

    .line 165
    const p1, 0x7f13071b    # @string/media_projection_sys_service_dialog_warning 'The service providing this function will have access to all of the information that is visible on yo ...'

    .line 167
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 173
    const v0, 0x7f13071a    # @string/media_projection_sys_service_dialog_title 'Start recording or casting?'

    .line 174
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 180
    goto/16 :goto_5

    .line 181
    :cond_7
    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 183
    move-result-object p1

    .line 186
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 187
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 191
    move-result v1

    .line 194
    move v4, v2

    .line 195
    :goto_3
    if-ge v4, v1, :cond_a

    .line 196
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    .line 198
    move-result v6

    .line 201
    invoke-static {v6}, Ljava/lang/Character;->getType(I)I

    .line 202
    move-result v8

    .line 205
    const/16 v9, 0xd

    .line 206
    if-eq v8, v9, :cond_9

    .line 208
    const/16 v9, 0xf

    .line 210
    if-eq v8, v9, :cond_9

    .line 212
    const/16 v9, 0xe

    .line 214
    if-ne v8, v9, :cond_8

    .line 216
    goto :goto_4

    .line 218
    :cond_8
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 219
    move-result v6

    .line 222
    add-int/2addr v4, v6

    .line 223
    goto :goto_3

    .line 224
    :cond_9
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 230
    move-result-object p1

    .line 233
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo p1, "\u2026"

    .line 237
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object p1

    .line 246
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 247
    move-result v1

    .line 250
    if-eqz v1, :cond_b

    .line 251
    iget-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 253
    :cond_b
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 255
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 257
    invoke-static {p1, v0, v1, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 259
    move-result-object p1

    .line 262
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 263
    move-result-object p1

    .line 266
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    .line 267
    move-result-object v0

    .line 270
    invoke-virtual {v0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    move-result-object p1

    .line 274
    const v0, 0x7f13070d    # @string/media_projection_dialog_warning '%s will have access to all of the information that is visible on your screen or played from your dev ...'

    .line 275
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 278
    move-result-object v1

    .line 281
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    move-result-object v0

    .line 285
    new-instance v1, Landroid/text/SpannableString;

    .line 286
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 291
    move-result v0

    .line 294
    if-ltz v0, :cond_c

    .line 295
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 297
    invoke-direct {v4, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 302
    move-result v6

    .line 305
    add-int/2addr v6, v0

    .line 306
    invoke-virtual {v1, v4, v0, v6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 307
    :cond_c
    const v0, 0x7f13070c    # @string/media_projection_dialog_title 'Start recording or casting with %s?'

    .line 310
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 313
    move-result-object p1

    .line 316
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 317
    move-result-object v0

    .line 320
    move-object p1, v1

    .line 321
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 322
    move-result-object v1

    .line 325
    iget-object v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 326
    sget-object v4, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 328
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 333
    const v4, 0x7f140006    # @style/AlertDialog.Theme.DayNight

    .line 335
    invoke-direct {v2, v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 338
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    .line 344
    const p1, 0x7f13070b    # @string/media_projection_action_text 'Start now'

    .line 347
    invoke-virtual {v2, p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 350
    invoke-virtual {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(Landroid/content/DialogInterface$OnClickListener;)V

    .line 353
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 356
    move-result-object p1

    .line 359
    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mMiuiDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 360
    invoke-static {p1}, Lcom/miui/systemui/statusbar/phone/MiuiSystemUIDialog;->applyFlags(Lmiuix/appcompat/app/AlertDialog;)V

    .line 362
    iget-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mMiuiDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 365
    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;)V

    .line 367
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setDialogSize(Landroid/app/Dialog;)V

    .line 370
    new-instance v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity$$ExternalSyntheticLambda0;

    .line 373
    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/MediaProjectionPermissionActivity;)V

    .line 375
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 378
    new-instance v0, Lcom/android/systemui/media/MediaProjectionPermissionActivity$$ExternalSyntheticLambda1;

    .line 381
    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/MediaProjectionPermissionActivity;)V

    .line 383
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 386
    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    .line 389
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 392
    move-result-object p1

    .line 395
    const/high16 v0, 0x80000

    .line 396
    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 398
    iget-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mMiuiDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 401
    invoke-virtual {p1, v5}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 403
    move-result-object p1

    .line 406
    invoke-virtual {p1, v7}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 407
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mMiuiDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 410
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 412
    return-void

    .line 415
    :catch_0
    move-exception p1

    .line 416
    const-string v1, "Error checking projection permissions"

    .line 417
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 422
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    .line 425
    return-void

    .line 428
    :catch_1
    move-exception p1

    .line 429
    const-string v1, "Unable to look up package name"

    .line 430
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 435
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    .line 438
    return-void
    .line 441
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->dismissMiuiDialog()V

    .line 5
    return-void
    .line 8
.end method

.class public Lcom/android/systemui/logcat/LogAccessDialogActivity;
.super Landroid/app/Activity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DIALOG_TIME_OUT:I


# instance fields
.field public mAlert:Landroid/app/AlertDialog;

.field public mAlertBody:Ljava/lang/String;

.field public mAlertDialog:Landroid/app/AlertDialog$Builder;

.field public mAlertLearnMore:Landroid/text/SpannableString;

.field public mAlertLearnMoreLink:Z

.field public mAlertTitle:Ljava/lang/String;

.field public mAlertView:Landroid/view/View;

.field public mCallback:Lcom/android/internal/app/ILogAccessDialogCallback;

.field public final mHandler:Lcom/android/systemui/logcat/LogAccessDialogActivity$1;

.field public mPackageName:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/logcat/LogAccessDialogActivity;

    .line 2
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const v0, 0xea60

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    const v0, 0x493e0

    .line 12
    :goto_0
    sput v0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->DIALOG_TIME_OUT:I

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/logcat/LogAccessDialogActivity$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/logcat/LogAccessDialogActivity$1;-><init>(Lcom/android/systemui/logcat/LogAccessDialogActivity;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mHandler:Lcom/android/systemui/logcat/LogAccessDialogActivity$1;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final declineLogAccess()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mCallback:Lcom/android/internal/app/ILogAccessDialogCallback;

    .line 2
    iget v1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mUid:I

    .line 4
    iget-object v2, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/ILogAccessDialogCallback;->declineAccessForClient(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 11
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    :goto_0
    return-void
    .line 15
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result v0

    .line 5
    const v1, 0x7f0a0530    # @id/log_access_dialog_allow_button

    .line 6
    if-ne v0, v1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mCallback:Lcom/android/internal/app/ILogAccessDialogCallback;

    .line 11
    iget v0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mUid:I

    .line 13
    iget-object v1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/android/internal/app/ILogAccessDialogCallback;->approveAccessForClient(ILjava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 24
    move-result p1

    .line 27
    const v0, 0x7f0a0532    # @id/log_access_dialog_deny_button

    .line 28
    if-ne p1, v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/logcat/LogAccessDialogActivity;->declineLogAccess()V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 39
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 40
    :cond_1
    :goto_0
    return-void
    .line 43
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "LogAccessDialogActivity"

    .line 11
    if-nez p1, :cond_0

    .line 13
    const-string p1, "Intent is null"

    .line 15
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 21
    move-result-object v3

    .line 24
    const-string v4, "EXTRA_CALLBACK"

    .line 25
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/android/internal/app/ILogAccessDialogCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ILogAccessDialogCallback;

    .line 31
    move-result-object v3

    .line 34
    iput-object v3, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mCallback:Lcom/android/internal/app/ILogAccessDialogCallback;

    .line 35
    if-nez v3, :cond_1

    .line 37
    const-string p1, "Missing callback"

    .line 39
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    goto :goto_1

    .line 44
    :cond_1
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 45
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 50
    iput-object v3, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    .line 51
    if-eqz v3, :cond_4

    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 55
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    const-string v3, "android.intent.extra.UID"

    .line 62
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 64
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    const-string p1, "Missing EXTRA_UID"

    .line 70
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 76
    move-result p1

    .line 79
    iput p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mUid:I

    .line 80
    move p1, v0

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_0
    const-string p1, "Missing package name extra"

    .line 84
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_1
    move p1, v1

    .line 89
    :goto_2
    if-nez p1, :cond_5

    .line 90
    const-string p1, "Invalid Intent extras, finishing"

    .line 92
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 97
    return-void

    .line 100
    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    .line 101
    iget v3, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mUid:I

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 105
    move-result-object v4

    .line 108
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 109
    move-result v3

    .line 112
    const/high16 v5, 0x10000000

    .line 113
    invoke-virtual {v4, p1, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 115
    move-result-object p1

    .line 118
    invoke-virtual {p1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 119
    move-result-object p1

    .line 122
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 123
    move-result-object p1

    .line 126
    const v3, 0x7f1306b6    # @string/log_access_confirmation_title 'Allow %s to access all device logs?'

    .line 127
    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 133
    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertTitle:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const p1, 0x7f1306b1    # @string/log_access_confirmation_body 'Device logs record what happens on your device. Apps can use these logs to find and fix issues.\n\nSom ...'

    .line 136
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 142
    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertBody:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 145
    move-result-object p1

    .line 148
    const v2, 0x7f050090    # @bool/log_access_confirmation_learn_more_as_link 'true'

    .line 149
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 152
    move-result p1

    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMoreLink:Z

    .line 156
    const v2, 0x7f1306b5    # @string/log_access_confirmation_learn_more_url 'https://support.google.com/android/answer/12986432'

    .line 158
    if-eqz p1, :cond_6

    .line 161
    new-instance p1, Landroid/text/SpannableString;

    .line 163
    const v3, 0x7f1306b3    # @string/log_access_confirmation_learn_more 'Learn more'

    .line 165
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 168
    move-result-object v3

    .line 171
    invoke-direct {p1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 172
    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMore:Landroid/text/SpannableString;

    .line 175
    new-instance v3, Landroid/text/style/URLSpan;

    .line 177
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 179
    move-result-object v2

    .line 182
    invoke-direct {v3, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMore:Landroid/text/SpannableString;

    .line 186
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 188
    move-result v2

    .line 191
    const/16 v4, 0x21

    .line 192
    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 194
    goto :goto_3

    .line 197
    :cond_6
    new-instance p1, Landroid/text/SpannableString;

    .line 198
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 203
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 204
    move-result-object v2

    .line 207
    const v3, 0x7f1306b4    # @string/log_access_confirmation_learn_more_at 'Learn more at %s'

    .line 208
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    move-result-object v2

    .line 214
    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 215
    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMore:Landroid/text/SpannableString;

    .line 218
    :goto_3
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 220
    const v2, 0x7f1401a8    # @style/LogAccessDialogTheme

    .line 222
    invoke-direct {p1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 225
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 228
    move-result-object p1

    .line 231
    const v3, 0x7f0d0166    # @layout/log_access_user_consent_dialog_permission 'res/layout/log_access_user_consent_dialog_permission.xml'

    .line 232
    const/4 v4, 0x0

    .line 235
    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 236
    move-result-object p1

    .line 239
    if-eqz p1, :cond_9

    .line 240
    const v3, 0x7f0a0533    # @id/log_access_dialog_title

    .line 242
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    move-result-object v3

    .line 248
    check-cast v3, Landroid/widget/TextView;

    .line 249
    iget-object v4, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertTitle:Ljava/lang/String;

    .line 251
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v3, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMore:Landroid/text/SpannableString;

    .line 256
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 258
    move-result v3

    .line 261
    const v4, 0x7f0a0531    # @id/log_access_dialog_body

    .line 262
    if-nez v3, :cond_7

    .line 265
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 267
    move-result-object v3

    .line 270
    check-cast v3, Landroid/widget/TextView;

    .line 271
    iget-object v5, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertBody:Ljava/lang/String;

    .line 273
    iget-object v6, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMore:Landroid/text/SpannableString;

    .line 275
    const-string v7, "\n\n"

    .line 277
    filled-new-array {v5, v7, v6}, [Ljava/lang/CharSequence;

    .line 279
    move-result-object v5

    .line 282
    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 283
    move-result-object v5

    .line 286
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-boolean v3, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertLearnMoreLink:Z

    .line 290
    if-eqz v3, :cond_8

    .line 292
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 294
    move-result-object v3

    .line 297
    check-cast v3, Landroid/widget/TextView;

    .line 298
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 300
    move-result-object v4

    .line 303
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 304
    goto :goto_4

    .line 307
    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 308
    move-result-object v3

    .line 311
    check-cast v3, Landroid/widget/TextView;

    .line 312
    iget-object v4, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertBody:Ljava/lang/String;

    .line 314
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_8
    :goto_4
    const v3, 0x7f0a0530    # @id/log_access_dialog_allow_button

    .line 319
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 322
    move-result-object v3

    .line 325
    check-cast v3, Landroid/widget/Button;

    .line 326
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    const v3, 0x7f0a0532    # @id/log_access_dialog_deny_button

    .line 331
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 334
    move-result-object v3

    .line 337
    check-cast v3, Landroid/widget/Button;

    .line 338
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertView:Landroid/view/View;

    .line 343
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 345
    invoke-direct {p1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 347
    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 350
    iget-object v2, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertView:Landroid/view/View;

    .line 352
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 354
    iget-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 357
    new-instance v2, Lcom/android/systemui/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda0;

    .line 359
    invoke-direct {v2, p0}, Lcom/android/systemui/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/logcat/LogAccessDialogActivity;)V

    .line 361
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    iget-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 367
    new-instance v2, Lcom/android/systemui/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda1;

    .line 369
    invoke-direct {v2, p0}, Lcom/android/systemui/logcat/LogAccessDialogActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/logcat/LogAccessDialogActivity;)V

    .line 371
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    iget-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 379
    move-result-object p1

    .line 382
    iput-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    .line 383
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 385
    move-result-object p1

    .line 388
    invoke-virtual {p1, v0}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 389
    iget-object p1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    .line 392
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 394
    iget-object p0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mHandler:Lcom/android/systemui/logcat/LogAccessDialogActivity$1;

    .line 397
    sget p1, Lcom/android/systemui/logcat/LogAccessDialogActivity;->DIALOG_TIME_OUT:I

    .line 399
    int-to-long v2, p1

    .line 401
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 402
    return-void

    .line 405
    :cond_9
    new-instance p0, Landroid/view/InflateException;

    .line 406
    invoke-direct {p0}, Landroid/view/InflateException;-><init>()V

    .line 408
    throw p0

    .line 411
    :catch_0
    move-exception p1

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    .line 413
    const-string v1, "Unable to fetch label of package "

    .line 415
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mPackageName:Ljava/lang/String;

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    move-result-object v0

    .line 428
    invoke-static {v2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    invoke-virtual {p0}, Lcom/android/systemui/logcat/LogAccessDialogActivity;->declineLogAccess()V

    .line 432
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 435
    return-void
    .line 438
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mHandler:Lcom/android/systemui/logcat/LogAccessDialogActivity$1;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    .line 27
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 29
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/logcat/LogAccessDialogActivity;->mAlert:Landroid/app/AlertDialog;

    .line 32
    return-void
    .line 34
.end method

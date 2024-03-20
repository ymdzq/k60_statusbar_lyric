.class public Lcom/android/systemui/SlicePermissionActivity;
.super Landroid/app/Activity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public mAllCheckbox:Landroid/widget/CheckBox;

.field public mCallingPkg:Ljava/lang/String;

.field public mProviderPkg:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    const/4 p1, -0x1

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    const-class p1, Landroid/app/slice/SliceManager;

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    check-cast p1, Landroid/app/slice/SliceManager;

    .line 11
    iget-object p2, p0, Lcom/android/systemui/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/SlicePermissionActivity;->mAllCheckbox:Landroid/widget/CheckBox;

    .line 17
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    .line 19
    move-result v1

    .line 22
    invoke-virtual {p1, p2, v0, v1}, Landroid/app/slice/SliceManager;->grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    return-void
    .line 29
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    move-result-object p1

    .line 8
    const-string/jumbo v0, "slice_uri"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Landroid/net/Uri;

    .line 16
    iput-object p1, p0, Lcom/android/systemui/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    move-result-object p1

    .line 23
    const-string v0, "pkg"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/systemui/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/android/systemui/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 32
    const-string v0, "SlicePermissionActivity"

    .line 34
    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/android/systemui/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    const-string/jumbo v1, "vnd.android.slice"

    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 64
    const-string v1, "com.android.intent.action.REQUEST_SLICE_PERMISSION"

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p1

    .line 70
    if-nez p1, :cond_0

    .line 71
    goto/16 :goto_1

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    move-result-object p1

    .line 78
    iget-object v1, p0, Lcom/android/systemui/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 79
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 84
    const/16 v2, 0x80

    .line 85
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 87
    move-result-object v1

    .line 90
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 91
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/android/systemui/SlicePermissionActivity;->mProviderPkg:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/SlicePermissionActivity;->verifyCallingPkg()V

    .line 97
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    .line 100
    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/android/systemui/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    .line 104
    const/4 v3, 0x0

    .line 106
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 107
    move-result-object v2

    .line 110
    const/4 v4, 0x5

    .line 111
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 112
    invoke-virtual {v2, p1, v5, v4}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    .line 114
    move-result-object v2

    .line 117
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 125
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    .line 126
    move-result-object v2

    .line 129
    iget-object v6, p0, Lcom/android/systemui/SlicePermissionActivity;->mProviderPkg:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 132
    move-result-object v3

    .line 135
    invoke-virtual {v3, p1, v5, v4}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    .line 136
    move-result-object p1

    .line 139
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 143
    invoke-virtual {v2, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 147
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 153
    move-result-object v3

    .line 156
    const v4, 0x7f130aeb    # @string/slice_permission_title 'Allow %1$s to show %2$s slices?'

    .line 157
    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    move-result-object v3

    .line 163
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 164
    move-result-object v2

    .line 167
    const v3, 0x7f0d034a    # @layout/slice_permission_request 'res/layout/slice_permission_request.xml'

    .line 168
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 171
    move-result-object v2

    .line 174
    const v3, 0x7f130ae8    # @string/slice_permission_deny 'Deny'

    .line 175
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    move-result-object v2

    .line 181
    const v3, 0x7f130ae6    # @string/slice_permission_allow 'Allow'

    .line 182
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    move-result-object v2

    .line 188
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    move-result-object v2

    .line 192
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 193
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 197
    move-result-object v3

    .line 200
    const/high16 v4, 0x80000

    .line 201
    invoke-virtual {v3, v4}, Landroid/view/Window;->addSystemFlags(I)V

    .line 203
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 206
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 209
    move-result-object v3

    .line 212
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 213
    move-result-object v3

    .line 216
    const v4, 0x7f0a0967    # @id/text1

    .line 217
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    move-result-object v3

    .line 223
    check-cast v3, Landroid/widget/TextView;

    .line 224
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 226
    move-result-object v4

    .line 229
    const v5, 0x7f130ae9    # @string/slice_permission_text_1 '- It can read information from %1$s'

    .line 230
    invoke-virtual {p0, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 233
    move-result-object v4

    .line 236
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 240
    move-result-object v3

    .line 243
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 244
    move-result-object v3

    .line 247
    const v4, 0x7f0a0968    # @id/text2

    .line 248
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 251
    move-result-object v3

    .line 254
    check-cast v3, Landroid/widget/TextView;

    .line 255
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 257
    move-result-object p1

    .line 260
    const v4, 0x7f130aea    # @string/slice_permission_text_2 '- It can take actions inside %1$s'

    .line 261
    invoke-virtual {p0, v4, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    move-result-object p1

    .line 267
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 271
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 275
    move-result-object p1

    .line 278
    const v2, 0x7f0a0895    # @id/slice_permission_checkbox

    .line 279
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 282
    move-result-object p1

    .line 285
    check-cast p1, Landroid/widget/CheckBox;

    .line 286
    iput-object p1, p0, Lcom/android/systemui/SlicePermissionActivity;->mAllCheckbox:Landroid/widget/CheckBox;

    .line 288
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 290
    move-result-object v1

    .line 293
    const v2, 0x7f130ae7    # @string/slice_permission_checkbox 'Allow %1$s to show slices from any app'

    .line 294
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    move-result-object v1

    .line 300
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    goto :goto_0

    .line 304
    :catch_0
    move-exception p1

    .line 305
    const-string v1, "Couldn\'t find package"

    .line 306
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 311
    :goto_0
    return-void

    .line 314
    :cond_1
    :goto_1
    const-string p1, "Intent is not valid"

    .line 315
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 320
    return-void
    .line 323
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    return-void
    .line 5
.end method

.method public final verifyCallingPkg()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "provider_pkg"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lcom/android/systemui/SlicePermissionActivity;->mProviderPkg:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_2

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    .line 23
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    :goto_0
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    const-string v2, "159145361"

    .line 38
    const/4 v3, 0x0

    .line 40
    aput-object v2, v1, v3

    .line 41
    const/4 v2, -0x1

    .line 43
    if-nez v0, :cond_2

    .line 44
    goto :goto_1

    .line 46
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 51
    move-result-object p0

    .line 54
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object p0

    .line 60
    const/4 v0, 0x1

    .line 61
    aput-object p0, v1, v0

    .line 62
    const p0, 0x534e4554

    .line 64
    invoke-static {p0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 67
    :cond_3
    :goto_2
    return-void
.end method

.class public Lcom/android/settings/bootloader/BootloaderStatusActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "BootloaderStatusActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bootloader/BootloaderStatusActivity$BindTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/AppCompatActivity;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBtn:Landroid/widget/Button;

.field private mHasRefreshToken:Z

.field private mIsFirst:Z

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBtn(Lcom/android/settings/bootloader/BootloaderStatusActivity;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbindAccountWithDevice(Lcom/android/settings/bootloader/BootloaderStatusActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->bindAccountWithDevice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUser(Lcom/android/settings/bootloader/BootloaderStatusActivity;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->notifyUser(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/android/settings/bootloader/BootloaderStatusActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mIsFirst:Z

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mHasRefreshToken:Z

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method private bindAccountWithDevice()V
    .locals 4

    .line 155
    invoke-static {}, Lcom/android/settings/bootloader/Utils;->needSimCard()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->getSimState(Landroid/content/Context;)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x7

    .line 156
    invoke-direct {p0, v0, v2}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->notifyUser(ILjava/lang/String;)V

    return-void

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->isAccountLogined(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 160
    iget-boolean v0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mIsFirst:Z

    if-eqz v0, :cond_1

    .line 161
    iput-boolean v3, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mIsFirst:Z

    .line 162
    invoke-static {p0, p0}, Lcom/android/settings/bootloader/Utils;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    return-void

    .line 165
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->notifyUser(ILjava/lang/String;)V

    return-void

    .line 168
    :cond_2
    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    .line 169
    invoke-direct {p0, v0, v2}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->notifyUser(ILjava/lang/String;)V

    return-void

    .line 172
    :cond_3
    invoke-static {}, Lcom/android/settings/bootloader/Utils;->needSimCard()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/android/settings/bootloader/Utils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xb

    .line 173
    invoke-direct {p0, v0, v2}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->notifyUser(ILjava/lang/String;)V

    return-void

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mBtn:Landroid/widget/Button;

    const v1, 0x33708090

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x6

    .line 178
    invoke-direct {p0, v0, v2}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->notifyUser(ILjava/lang/String;)V

    .line 179
    new-instance v0, Lcom/android/settings/bootloader/BootloaderStatusActivity$BindTask;

    invoke-direct {v0, p0}, Lcom/android/settings/bootloader/BootloaderStatusActivity$BindTask;-><init>(Lcom/android/settings/bootloader/BootloaderStatusActivity;)V

    filled-new-array {p0}, [Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private notifyUser(ILjava/lang/String;)V
    .locals 3

    .line 183
    iget-boolean v0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mIsFirst:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mIsFirst:Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 187
    :cond_1
    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_fail:I

    if-ne p1, v1, :cond_2

    .line 189
    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_no_account:I

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 191
    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_no_network:I

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne p1, v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    .line 197
    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_msg:I

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mToast:Landroid/widget/Toast;

    .line 200
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_8

    .line 203
    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_no_sim:I

    goto :goto_0

    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    .line 205
    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_sim_invalid:I

    goto :goto_0

    :cond_9
    const/16 v2, 0x9

    if-ne p1, v2, :cond_a

    .line 207
    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_exceed_sim_limit:I

    goto :goto_0

    :cond_a
    const/16 v2, 0xb

    if-ne p1, v2, :cond_b

    .line 209
    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_no_data_network:I

    goto :goto_0

    :cond_b
    const/16 v2, 0x191

    if-ne p1, v2, :cond_d

    .line 211
    iget-boolean p1, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mHasRefreshToken:Z

    if-nez p1, :cond_c

    .line 212
    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_server_token_expired_1:I

    .line 213
    iput-boolean v1, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mHasRefreshToken:Z

    goto :goto_0

    .line 215
    :cond_c
    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_server_token_expired_2:I

    goto :goto_0

    :cond_d
    const/16 v2, 0xa

    if-ne p1, v2, :cond_e

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_server_code:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mToast:Landroid/widget/Toast;

    .line 221
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_e
    if-nez p1, :cond_f

    .line 224
    sget v0, Lcom/android/settings/R$string;->bootloader_device_bind_already:I

    .line 226
    :cond_f
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mToast:Landroid/widget/Toast;

    .line 227
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private privacyEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 104
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_0

    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/provider/MiuiSettings$Privacy;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 108
    sget-object p1, Lcom/android/settings/bootloader/BootloaderStatusActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get privacy status error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private showPrivacyDialog()V
    .locals 3

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "https://privacy.mi.com/all/%s_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    sget v1, Lcom/android/settings/R$string;->bootloader_status_privacy_dialog_message:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->bootloader_status_privacy_dialog_title:I

    .line 120
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 121
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bootloader_status_privacy_dialog_yes:I

    new-instance v2, Lcom/android/settings/bootloader/BootloaderStatusActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/bootloader/BootloaderStatusActivity$3;-><init>(Lcom/android/settings/bootloader/BootloaderStatusActivity;)V

    .line 123
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bootloader_status_privacy_dialog_no:I

    new-instance v2, Lcom/android/settings/bootloader/BootloaderStatusActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bootloader/BootloaderStatusActivity$2;-><init>(Lcom/android/settings/bootloader/BootloaderStatusActivity;)V

    .line 127
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 100
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "ro.secureboot.lockstate"

    const/4 v0, 0x0

    .line 63
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "locked"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    sget p1, Lcom/android/settings/R$layout;->bootloader_status_unlocked:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    return-void

    .line 69
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->bootloader_status_locked:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 71
    sget p1, Lcom/android/settings/R$id;->answer:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 72
    invoke-static {}, Lcom/android/settings/bootloader/Utils;->needSimCard()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settings/R$string;->bootloader_locked_answer_2:I

    goto :goto_0

    .line 73
    :cond_1
    sget v0, Lcom/android/settings/R$string;->bootloader_locked_answer_2_no_sim:I

    .line 72
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 75
    sget p1, Lcom/android/settings/R$id;->button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/bootloader/BootloaderStatusActivity;->mBtn:Landroid/widget/Button;

    .line 76
    new-instance v0, Lcom/android/settings/bootloader/BootloaderStatusActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bootloader/BootloaderStatusActivity$1;-><init>(Lcom/android/settings/bootloader/BootloaderStatusActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0, p0}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->privacyEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 83
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.PRIVACY_AUTHORIZATION_DIALOG"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "key"

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    :cond_2
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->showPrivacyDialog()V

    :cond_3
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v2, "booleanResult"

    .line 259
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 264
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->notifyUser(ILjava/lang/String;)V

    goto :goto_1

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bootloader/BootloaderStatusActivity;->bindAccountWithDevice()V

    :goto_1
    return-void
.end method

.class public final Lcom/android/settings/applications/MiuiSmsDefaultDialog;
.super Landroid/app/Activity;
.source "MiuiSmsDefaultDialog.java"


# instance fields
.field private mCurrentDialog:I

.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentDialog(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->mCurrentDialog:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNewSmsApplicationData(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentDialog(Lcom/android/settings/applications/MiuiSmsDefaultDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->mCurrentDialog:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 2

    .line 110
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 116
    :cond_0
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 123
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v0

    .line 127
    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object p0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "package"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    iput p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->mCurrentDialog:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 80
    :cond_0
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->preferred_sms_title:I

    .line 81
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->preferred_sms_settings:I

    .line 82
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->preferred_sms_warning_use_system:I

    new-instance v1, Lcom/android/settings/applications/MiuiSmsDefaultDialog$5;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/MiuiSmsDefaultDialog$5;-><init>(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)V

    .line 83
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/MiuiSmsDefaultDialog$4;-><init>(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)V

    const v1, 0x1040013    # @android:string/yes

    .line 89
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 98
    new-instance v0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$6;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/MiuiSmsDefaultDialog$6;-><init>(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->preferred_sms_title:I

    .line 52
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->preferred_sms_warning_message:I

    iget-object v1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 53
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->preferred_sms_warning_use_system:I

    new-instance v1, Lcom/android/settings/applications/MiuiSmsDefaultDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/MiuiSmsDefaultDialog$2;-><init>(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)V

    .line 54
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->next_button_label:I

    new-instance v1, Lcom/android/settings/applications/MiuiSmsDefaultDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/MiuiSmsDefaultDialog$1;-><init>(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)V

    .line 60
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 69
    new-instance v0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/MiuiSmsDefaultDialog$3;-><init>(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method protected onStart()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method

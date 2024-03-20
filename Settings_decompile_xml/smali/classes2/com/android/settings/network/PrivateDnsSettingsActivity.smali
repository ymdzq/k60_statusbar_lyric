.class public Lcom/android/settings/network/PrivateDnsSettingsActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "PrivateDnsSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# static fields
.field static final HOSTNAME_KEY:Ljava/lang/String; = "private_dns_specifier"

.field static final MODE_KEY:Ljava/lang/String; = "private_dns_mode"

.field private static final PRIVATE_DNS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field mEditText:Landroid/widget/EditText;

.field mMode:I

.field mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method static bridge synthetic -$$Nest$mshowOrHideEditText(Lcom/android/settings/network/PrivateDnsSettingsActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->showOrHideEditText(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDialogInfo(Lcom/android/settings/network/PrivateDnsSettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->updateDialogInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->private_dns_mode_off:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->private_dns_mode_opportunistic:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->private_dns_mode_provider:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private createDialog()V
    .locals 4

    .line 90
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 91
    sget v1, Lcom/android/settings/R$string;->dns_select_dialog_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 92
    sget v1, Lcom/android/settings/R$string;->save:I

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 93
    sget v1, Lcom/android/settings/R$string;->button_text_cancel:I

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 94
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0, v1}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->onBindDialogView(Landroid/view/View;)V

    .line 97
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 99
    :cond_0
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 102
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsMode(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 104
    invoke-direct {p0, v1}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->showOrHideEditText(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0, v2}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->showOrHideEditText(Z)V

    .line 108
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$array;->choose_dns_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 111
    iget v3, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mMode:I

    sub-int/2addr v3, v1

    new-instance v1, Lcom/android/settings/network/PrivateDnsSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/network/PrivateDnsSettingsActivity$1;-><init>(Lcom/android/settings/network/PrivateDnsSettingsActivity;)V

    invoke-virtual {v0, v2, v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 130
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "private_dns_specifier"

    .line 134
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSaveButton()Landroid/widget/Button;
    .locals 1

    .line 198
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 201
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method private onBindDialogView(Landroid/view/View;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    sget v1, Lcom/android/settings/R$id;->private_dns_mode_provider_hostname:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mEditText:Landroid/widget/EditText;

    .line 145
    invoke-static {v0}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    sget v0, Lcom/android/settings/R$id;->private_dns_help_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 149
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->help_uri_private_dns:I

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "url"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 155
    invoke-virtual {v1}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->isActionable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->private_dns_help_message:I

    .line 158
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {v1}, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    move-result-object v0

    .line 157
    invoke-static {p0, v0}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 160
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private onCreateDialogView()Landroid/view/View;
    .locals 2

    .line 138
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 139
    sget v0, Lcom/android/settings/R$layout;->private_dns_mode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private showOrHideEditText(Z)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mEditText:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 219
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateDialogInfo()V
    .locals 4

    const/4 v0, 0x3

    .line 205
    iget v1, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mMode:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->getSaveButton()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 210
    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 212
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InternetDomainName;->isValid(Ljava/lang/String;)Z

    move-result v2

    .line 211
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->updateDialogInfo()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 172
    iget p1, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mMode:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 174
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mEditText:Landroid/widget/EditText;

    .line 175
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 174
    invoke-static {p1, p2}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsHostname(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mContext:Landroid/content/Context;

    const/16 v0, 0x4e1

    iget v1, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mMode:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 180
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mMode:I

    invoke-static {p1, p0}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsMode(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    iput-object p0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsActivity;->createDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 233
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 228
    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

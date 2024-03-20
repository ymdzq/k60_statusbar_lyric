.class public Lcom/android/settings/network/PrivateDnsSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivateDnsSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# static fields
.field static final HOSTNAME_KEY:Ljava/lang/String; = "private_dns_specifier"

.field static final MODE_KEY:Ljava/lang/String; = "private_dns_mode"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDnscustom:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mDnsoff:Lmiuix/preference/RadioButtonPreference;

.field private mDnsopportunistic:Lmiuix/preference/RadioButtonPreference;

.field private mDnsprovider:Lmiuix/preference/RadioButtonPreference;

.field mEditText:Landroid/widget/EditText;

.field mMode:I

.field mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    .line 135
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 136
    sget v1, Lcom/android/settings/R$string;->private_dns_mode_provider:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 137
    sget v1, Lcom/android/settings/R$string;->save:I

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 138
    sget v1, Lcom/android/settings/R$string;->button_text_cancel:I

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 139
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0, v1}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->onBindDialogView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 144
    :cond_0
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 148
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "private_dns_specifier"

    .line 152
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSaveButton()Landroid/widget/Button;
    .locals 1

    .line 215
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 218
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method private onBindDialogView(Landroid/view/View;)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    sget v1, Lcom/android/settings/R$id;->private_dns_mode_provider_hostname:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mEditText:Landroid/widget/EditText;

    .line 163
    invoke-static {v0}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    sget v0, Lcom/android/settings/R$id;->private_dns_help_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 167
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->help_uri_private_dns:I

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "url"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 173
    invoke-virtual {v1}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->isActionable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->private_dns_help_message:I

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {v1}, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    move-result-object v0

    .line 175
    invoke-static {p0, v0}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 178
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private onCreateDialogView()Landroid/view/View;
    .locals 2

    .line 156
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 157
    sget v0, Lcom/android/settings/R$layout;->private_dns_mode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private updateDialogInfo()V
    .locals 4

    const/4 v0, 0x3

    .line 222
    iget v1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 223
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->getSaveButton()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 227
    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 229
    iget-object p0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/InternetDomainName;->isValid(Ljava/lang/String;)Z

    move-result v2

    .line 228
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->updateDialogInfo()V

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

    if-ne p2, p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mEditText:Landroid/widget/EditText;

    .line 191
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-static {p1, p2}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsHostname(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnscustom:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    const/16 v0, 0x4e1

    iget v1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 197
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    invoke-static {p1, p0}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsMode(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    .line 83
    sget p1, Lcom/android/settings/R$xml;->miui_private_dns_prefs:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "private_dns_mode_off"

    .line 84
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnsoff:Lmiuix/preference/RadioButtonPreference;

    const-string/jumbo p1, "private_dns_mode_opportunistic"

    .line 85
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnsopportunistic:Lmiuix/preference/RadioButtonPreference;

    const-string/jumbo p1, "private_dns_mode_provider"

    .line 86
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnsprovider:Lmiuix/preference/RadioButtonPreference;

    const-string/jumbo p1, "private_dns_mode_provider_custom_name"

    .line 87
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnscustom:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 89
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnscustom:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-static {p1}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnscustom:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->private_dns_mode_provider_exposed_hostname:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 95
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/ConnectivitySettingsManager;->getPrivateDnsMode(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    .line 97
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnsoff:Lmiuix/preference/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnsopportunistic:Lmiuix/preference/RadioButtonPreference;

    iget v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnsprovider:Lmiuix/preference/RadioButtonPreference;

    iget p0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 244
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnsoff:Lmiuix/preference/RadioButtonPreference;

    const/16 v1, 0x4e1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 105
    iput v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    .line 106
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->updateDialogInfo()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    invoke-static {v0, v1}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnsopportunistic:Lmiuix/preference/RadioButtonPreference;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x2

    .line 111
    iput v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    .line 112
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->updateDialogInfo()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    invoke-static {v0, v1}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnsprovider:Lmiuix/preference/RadioButtonPreference;

    if-ne p2, v0, :cond_2

    const/4 v0, 0x3

    .line 117
    iput v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    .line 118
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsHostname(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mMode:I

    invoke-static {v0, v1}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDnscustom:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne p2, v0, :cond_3

    .line 128
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->createDialog()V

    .line 129
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsSettingsFragment;->updateDialogInfo()V

    .line 131
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStop()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsSettingsFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

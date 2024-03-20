.class public Lcom/android/settings/nfc/DefaultPaymentSettings;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultPaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;,
        Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfoComparator;
    }
.end annotation


# instance fields
.field private mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public static synthetic $r8$lambda$fcpwEqXnbq1mTC2E4x_MNJ_sjeQ(Lcom/android/settings/nfc/DefaultPaymentSettings;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/DefaultPaymentSettings;->lambda$setupFooterPreference$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$setupFooterPreference$0(Landroid/view/View;)V
    .locals 2

    .line 261
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/nfc/HowItWorks;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setupFooterPreference()V
    .locals 3

    .line 257
    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->nfc_default_payment_footer:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    sget v1, Lcom/android/settings/R$drawable;->ic_info_outline_24dp:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    new-instance v1, Lcom/android/settings/nfc/DefaultPaymentSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/DefaultPaymentSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/nfc/DefaultPaymentSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/android/settings/nfc/DefaultPaymentSettings;->setupFooterPreference()V

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public bindPreferenceExtra(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 144
    check-cast p3, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;

    .line 145
    invoke-virtual {p3}, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->isManagedProfile()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->nfc_work_text:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 156
    iget-object v2, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mAppInfos:Ljava/util/List;

    if-nez v2, :cond_0

    return-object v0

    .line 158
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 162
    iget-object v4, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v11

    .line 165
    iget-object v8, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 166
    new-instance v4, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;

    iget-object v5, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    .line 167
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    .line 170
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    move-object v5, v4

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;-><init>(Lcom/android/settings/nfc/DefaultPaymentSettings;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IZ)V

    .line 166
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    new-instance v1, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfoComparator;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfoComparator;-><init>(Lcom/android/settings/nfc/DefaultPaymentSettings;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 220
    :cond_0
    check-cast p1, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->-$$Nest$fgetmUserId(Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    .line 222
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 223
    invoke-static {p1}, Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;->-$$Nest$fgetmUserId(Lcom/android/settings/nfc/DefaultPaymentSettings$NfcPaymentCandidateInfo;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 228
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->nfc_default_payment_workapp_confirmation_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->nfc_default_payment_workapp_confirmation_message_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->nfc_default_payment_workapp_confirmation_message_1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->nfc_default_payment_workapp_confirmation_message_2:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 236
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 237
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 238
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 239
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v2, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x21

    invoke-virtual {v4, v2, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 243
    new-instance v2, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v2, v5}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 243
    invoke-virtual {v4, v2, v3, p1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 245
    new-instance p1, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {p1, v2}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 245
    invoke-virtual {v6, p1, v3, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 247
    new-instance p1, Landroid/text/style/BulletSpan;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v8, p1, v3, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 249
    new-instance p1, Landroid/text/style/BulletSpan;

    invoke-direct {p1, v0}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v10, p1, v3, p0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v5, "\n\n"

    const-string v7, "\n\n"

    const-string v9, "\n"

    .line 252
    filled-new-array/range {v4 .. v10}, [Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object p0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    .line 76
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x790

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 68
    sget p0, Lcom/android/settings/R$xml;->nfc_default_payment_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 94
    new-instance p1, Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 95
    invoke-virtual {p1}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mAppInfos:Ljava/util/List;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 114
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 115
    iget-object p0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 108
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 109
    iget-object p0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->onResume()V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 3

    const-string v0, " "

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 84
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/settings/nfc/DefaultPaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    aget-object p1, p1, v2

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;I)V

    :cond_0
    return v2
.end method

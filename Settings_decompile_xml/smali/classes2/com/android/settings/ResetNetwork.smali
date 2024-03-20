.class public Lcom/android/settings/ResetNetwork;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ResetNetwork.java"

# interfaces
.implements Lcom/android/settings/FragmentResultCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetNetwork$ResetNetWorkTask;
    }
.end annotation


# instance fields
.field private isNeedShowResetDialog:Z

.field private mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private mChoice:I

.field mEsimCheckbox:Landroid/widget/CheckBox;

.field mEsimContainer:Landroid/view/View;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mMenuItem:Landroid/view/MenuItem;

.field private mRadioButtonPreferenceGroup:Landroidx/preference/PreferenceCategory;

.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$B3tG93b27p0dUsaLtI116VcrE9o(Lcom/android/settings/ResetNetwork;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->lambda$onCreate$0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L36pgK_BPOzYzF-FQ7ZHX-P2TCw(Lcom/android/settings/ResetNetwork;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ResetNetwork;->lambda$showFinalConfirmation$1(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmChoice(Lcom/android/settings/ResetNetwork;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/ResetNetwork;->mChoice:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioButtonPreferenceGroup(Lcom/android/settings/ResetNetwork;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ResetNetwork;->mRadioButtonPreferenceGroup:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChoice(Lcom/android/settings/ResetNetwork;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/ResetNetwork;->mChoice:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetComplete(Lcom/android/settings/ResetNetwork;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->resetComplete()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunKeyguardConfirmation(Lcom/android/settings/ResetNetwork;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/android/settings/ResetNetwork;->mChoice:I

    .line 251
    new-instance v0, Lcom/android/settings/ResetNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetwork$1;-><init>(Lcom/android/settings/ResetNetwork;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishInitialState(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    sget v0, Lcom/android/settings/R$xml;->miui_reset_network_noSim:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/settings/R$xml;->miui_reset_network:I

    .line 283
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "subscription_chooser"

    .line 285
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mRadioButtonPreferenceGroup:Landroidx/preference/PreferenceCategory;

    .line 288
    iput-object p1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 291
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 292
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 293
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p1

    .line 295
    :cond_2
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p1

    .line 298
    :cond_3
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 299
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 303
    :cond_4
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    iget-object v3, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 306
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    if-ne v7, p1, :cond_5

    .line 308
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 311
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 310
    invoke-static {v6, v7}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 311
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 312
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 313
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 315
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 316
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 317
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_7

    move-object v7, v9

    goto :goto_2

    :cond_7
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 318
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    .line 319
    invoke-static {v8, v10}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->getRegisteredOperatorName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    if-eq v9, v8, :cond_8

    move-object v7, v8

    .line 326
    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 327
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 328
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v7, v8, v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "MCC:%s MNC:%s Slot:%s Id:%s"

    .line 327
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 330
    :cond_9
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 359
    :cond_a
    iput v5, p0, Lcom/android/settings/ResetNetwork;->mChoice:I

    const/4 p1, 0x1

    if-le v1, p1, :cond_c

    move v0, v4

    :goto_3
    if-ge v0, v1, :cond_e

    .line 362
    new-instance v3, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 363
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    iget v5, p0, Lcom/android/settings/ResetNetwork;->mChoice:I

    if-ne v5, v0, :cond_b

    move v5, p1

    goto :goto_4

    :cond_b
    move v5, v4

    :goto_4
    invoke-virtual {v3, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 366
    new-instance v5, Lcom/android/settings/ResetNetwork$2;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/ResetNetwork$2;-><init>(Lcom/android/settings/ResetNetwork;I)V

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 386
    iget-object v5, p0, Lcom/android/settings/ResetNetwork;->mRadioButtonPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 389
    :cond_c
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mRadioButtonPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 390
    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mRadioButtonPreferenceGroup:Landroidx/preference/PreferenceCategory;

    goto :goto_5

    .line 393
    :cond_d
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mRadioButtonPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 394
    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mRadioButtonPreferenceGroup:Landroidx/preference/PreferenceCategory;

    :cond_e
    :goto_5
    return-void
.end method

.method private getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 403
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    if-nez p0, :cond_1

    const-string p0, "ResetNetwork"

    const-string v0, "No SubscriptionManager"

    .line 405
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 408
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    .line 409
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$onCreate$0(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetwork;->onActivityLauncherResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private synthetic lambda$showFinalConfirmation$1(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 225
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 232
    :cond_1
    iget-object p2, p0, Lcom/android/settings/ResetNetwork;->mMenuItem:Landroid/view/MenuItem;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 234
    new-instance p2, Lcom/android/settings/ResetNetwork$ResetNetWorkTask;

    invoke-direct {p2, p0}, Lcom/android/settings/ResetNetwork$ResetNetWorkTask;-><init>(Lcom/android/settings/ResetNetwork;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private resetComplete()V
    .locals 2

    .line 638
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 640
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->reset_network_complete_toast:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 155
    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->reset_mobile_network_settings_title:I

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/ResetNetwork;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 157
    invoke-virtual {p1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setActivityResultLauncher(Landroidx/activity/result/ActivityResultLauncher;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x53

    return p0
.end method

.method public onActivityLauncherResult(Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 164
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/android/settings/ResetNetwork;->isNeedShowResetDialog:Z

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->establishInitialState(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->reset_mobile_network_settings_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "key_need_show_reset_dialog"

    .line 137
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/ResetNetwork;->isNeedShowResetDialog:Z

    .line 138
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/android/settings/ResetNetwork$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetNetwork$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/ResetNetwork;)V

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetwork;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 142
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 473
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 474
    sget p2, Lcom/android/settings/R$string;->reset_network_button_text:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetwork;->mMenuItem:Landroid/view/MenuItem;

    .line 475
    sget p2, Lcom/android/settings/R$drawable;->action_button_clear:I

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 476
    iget-object p0, p0, Lcom/android/settings/ResetNetwork;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 447
    new-instance v0, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->build()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "ResetNetwork"

    const-string p1, "Access deny."

    .line 449
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ResetNetwork;->establishInitialState(Ljava/util/List;)V

    .line 459
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo p1, "miui_security_fragment_result"

    .line 180
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/android/settings/ResetNetwork;->isNeedShowResetDialog:Z

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 481
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 484
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 414
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 415
    iget-boolean v0, p0, Lcom/android/settings/ResetNetwork;->isNeedShowResetDialog:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ResetNetwork$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetNetwork$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/ResetNetwork;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 421
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    .line 422
    invoke-interface {v1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "ResetNetwork"

    const-string/jumbo v2, "subcription list changed"

    .line 425
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0, v0}, Lcom/android/settings/ResetNetwork;->establishInitialState(Ljava/util/List;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 646
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_need_show_reset_dialog"

    .line 647
    iget-boolean p0, p0, Lcom/android/settings/ResetNetwork;->isNeedShowResetDialog:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method showFinalConfirmation()V
    .locals 3

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/ResetNetwork;->mChoice:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 224
    :goto_0
    new-instance v1, Lcom/android/settings/ResetNetwork$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/ResetNetwork$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/ResetNetwork;I)V

    .line 236
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->reset_network_confirm_title:I

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->reset_network_final_desc:I

    .line 237
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a    # @android:string/ok

    .line 238
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 239
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/android/settings/ResetNetwork;->isNeedShowResetDialog:Z

    return-void
.end method

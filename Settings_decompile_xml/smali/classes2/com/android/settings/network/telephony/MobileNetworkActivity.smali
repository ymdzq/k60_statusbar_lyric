.class public Lcom/android/settings/network/telephony/MobileNetworkActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "MobileNetworkActivity.java"

# interfaces
.implements Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;


# static fields
.field static final MOBILE_SETTINGS_TAG:Ljava/lang/String; = "mobile_settings:"

.field static final SUB_ID_NULL:I = -0x80000000


# instance fields
.field private mCurSubscriptionId:I

.field private mFragmentForceReload:Z

.field private mPendingSubscriptionChange:Z

.field mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$X5r4k9K1ON-NJMlEDGXK8IYHX7k(Lcom/android/settings/network/telephony/MobileNetworkActivity;Lcom/android/settings/network/helper/SubscriptionAnnotation;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->lambda$getSubscription$0(Lcom/android/settings/network/helper/SubscriptionAnnotation;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mFragmentForceReload:Z

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    return-void
.end method

.method private doesIntentContainOptInAction(Landroid/content/Intent;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

    .line 347
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;
    .locals 0

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 314
    invoke-static {p1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    return-object p0
.end method

.method private synthetic lambda$getSubscription$0(Lcom/android/settings/network/helper/SubscriptionAnnotation;)Z
    .locals 0

    .line 256
    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubscriptionId()I

    move-result p1

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeShowContactDiscoveryDialog(Landroid/telephony/SubscriptionInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 322
    invoke-static {p1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const-string p1, ""

    .line 326
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-static {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryVisible(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    invoke-static {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 331
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    .line 334
    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->newInstance(ILjava/lang/CharSequence;)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object v2

    .line 338
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_3

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 340
    invoke-static {v0}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private removeContactDiscoveryDialog(I)V
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private updateTitleAndNavigation(Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 222
    invoke-static {p1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private validate(Landroid/content/Intent;)V
    .locals 1

    .line 355
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "android.provider.extra.SUB_ID"

    const/high16 v0, -0x80000000

    .line 356
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Intent with action SHOW_CAPABILITY_DISCOVERY_OPT_IN must also include the extra Settings#EXTRA_SUB_ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method buildFragmentTag(I)Ljava/lang/String;
    .locals 1

    .line 366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mobile_settings:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    if-nez v0, :cond_0

    .line 148
    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    return-object p0
.end method

.method getSubscription()Landroid/telephony/SubscriptionInfo;
    .locals 4

    .line 250
    new-instance v0, Lcom/android/settings/network/helper/SelectableSubscriptions;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/helper/SelectableSubscriptions;-><init>(Landroid/content/Context;Z)V

    .line 251
    invoke-virtual {v0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->call()Ljava/util/List;

    move-result-object v0

    .line 253
    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 254
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda13;-><init>()V

    .line 255
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    .line 256
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 257
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    if-nez p0, :cond_1

    .line 260
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda13;-><init>()V

    .line 261
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda14;-><init>()V

    .line 262
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 263
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    :cond_1
    if-nez p0, :cond_2

    goto :goto_1

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    :goto_1
    return-object v3
.end method

.method getSubscriptionForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    .line 270
    invoke-static {p0, v0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscription(Landroid/content/Context;Lcom/android/settings/network/ProxySubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public onChanged()V
    .locals 3

    .line 162
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 167
    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;Landroid/os/Bundle;)V

    if-nez v0, :cond_2

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    return-void

    .line 179
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 181
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->removeContactDiscoveryDialog(I)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 111
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->validate(Landroid/content/Intent;)V

    const-string v1, "android.provider.extra.SUB_ID"

    const/high16 v2, -0x80000000

    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 135
    :cond_3
    :goto_0
    iput v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->registerActiveSubscriptionsListener()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->maybeShowContactDiscoveryDialog(Landroid/telephony/SubscriptionInfo;)V

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 199
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    .line 200
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->removeActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 79
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->validate(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    const-string v1, "android.provider.extra.SUB_ID"

    .line 85
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 87
    :cond_0
    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    .line 88
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 89
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mFragmentForceReload:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;Landroid/os/Bundle;)V

    if-ne v0, v1, :cond_2

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->removeContactDiscoveryDialog(I)V

    .line 102
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 103
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->maybeShowContactDiscoveryDialog(Landroid/telephony/SubscriptionInfo;)V

    :cond_4
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    .line 188
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    .line 191
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPendingSubscriptionChange:Z

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->onChanged()V

    :cond_0
    return-void
.end method

.method registerActiveSubscriptionsListener()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->addActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    return-void
.end method

.method saveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android.provider.extra.SUB_ID"

    .line 214
    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method switchFragment(Landroid/telephony/SubscriptionInfo;)V
    .locals 5

    .line 276
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 279
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 280
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 281
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.provider.extra.SUB_ID"

    .line 282
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_0

    const-string v4, "android.settings.MMS_MESSAGE_SETTING"

    .line 283
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ":settings:fragment_args_key"

    const-string/jumbo v4, "mms_message"

    .line 285
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->buildFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 290
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mFragmentForceReload:Z

    const-string v0, "MobileNetworkActivity"

    if-nez p0, :cond_1

    .line 291
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keep current fragment: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Construct fragment: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_2
    new-instance p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    .line 298
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 299
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {v1, v0, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 300
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method updateSubscriptions(Landroid/telephony/SubscriptionInfo;Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    .line 233
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateTitleAndNavigation(Landroid/telephony/SubscriptionInfo;)V

    .line 239
    iput p2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mFragmentForceReload:Z

    return-void
.end method

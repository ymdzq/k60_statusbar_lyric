.class public Lcom/android/settings/notification/app/ChannelPanelActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ChannelPanelActivity.java"


# instance fields
.field final mBundle:Landroid/os/Bundle;

.field mPanelFragment:Lcom/android/settings/notification/BaseNotificationSettings;


# direct methods
.method public static synthetic $r8$lambda$13urcR4RoODZXAumTqbVt4Tcsfk(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/notification/app/ChannelPanelActivity;->lambda$setupNavigationBar$2(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GiN0PQ3-w5PL_sA9dIdAYGAHqbg(Lcom/android/settings/notification/app/ChannelPanelActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ChannelPanelActivity;->lambda$createOrUpdatePanel$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sY_TRil72RsviVgzxjWALmfXQ2s(Lcom/android/settings/notification/app/ChannelPanelActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ChannelPanelActivity;->lambda$createOrUpdatePanel$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/ChannelPanelActivity;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method private createOrUpdatePanel()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ChannelPanelActivity"

    const-string v1, "Null intent, closing Panel Activity"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 96
    sget v1, Lcom/android/settings/R$layout;->notification_channel_panel:I

    invoke-virtual {p0, v1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    .line 100
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 104
    sget v1, Lcom/android/settings/R$id;->done:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/app/ChannelPanelActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/app/ChannelPanelActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/ChannelPanelActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v1, Lcom/android/settings/R$id;->see_more:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/app/ChannelPanelActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/app/ChannelPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/ChannelPanelActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelPanelActivity;->setupNavigationBar()V

    .line 111
    new-instance v1, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-direct {v1}, Lcom/android/settings/notification/app/ChannelNotificationSettings;-><init>()V

    iput-object v1, p0, Lcom/android/settings/notification/app/ChannelPanelActivity;->mPanelFragment:Lcom/android/settings/notification/BaseNotificationSettings;

    .line 113
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/settings/notification/app/ChannelPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x102003f    # @android:id/list_container

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelPanelActivity;->mPanelFragment:Lcom/android/settings/notification/BaseNotificationSettings;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private synthetic lambda$createOrUpdatePanel$0(Landroid/view/View;)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createOrUpdatePanel$1(Landroid/view/View;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelPanelActivity;->launchFullSettings()V

    return-void
.end method

.method private static synthetic lambda$setupNavigationBar$2(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private launchFullSettings()V
    .locals 3

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.provider.extra.CHANNEL_FILTER_LIST"

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/16 v1, 0x109

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setupNavigationBar()V
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/app/ChannelPanelActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/settings/notification/app/ChannelPanelActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 137
    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.provider.extra.CHANNEL_FILTER_LIST"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelPanelActivity;->launchFullSettings()V

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelPanelActivity;->createOrUpdatePanel()V

    .line 61
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelPanelActivity;->createOrUpdatePanel()V

    return-void
.end method

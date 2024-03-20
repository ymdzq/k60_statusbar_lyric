.class public Lcom/android/settings/panel/SettingsPanelActivity;
.super Lcom/android/settingslib/core/lifecycle/ObservableActivity;
.source "SettingsPanelActivity.java"


# instance fields
.field final mBundle:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mForceCreation:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPanelFragment:Lcom/android/settings/panel/PanelFragment;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KItyzIxk27M-LDzmlJ1tKtyZm20(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->lambda$setupNavigationBar$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    return-void
.end method

.method private createOrUpdatePanel(Z)V
    .locals 7

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SettingsPanelActivity"

    if-nez v0, :cond_0

    const-string p1, "Null intent, closing Panel Activity"

    .line 113
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 118
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package_name"

    .line 120
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v3, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const-string v4, "PANEL_TYPE_ARGUMENT"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const-string v5, "PANEL_CALLING_PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const-string v5, "PANEL_MEDIA_PACKAGE_NAME"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 126
    sget v3, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-nez p1, :cond_3

    if-eqz v5, :cond_3

    .line 129
    instance-of p1, v5, Lcom/android/settings/panel/PanelFragment;

    if-eqz p1, :cond_3

    .line 130
    move-object p1, v5

    check-cast p1, Lcom/android/settings/panel/PanelFragment;

    iput-object p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    .line 131
    invoke-virtual {p1}, Lcom/android/settings/panel/PanelFragment;->isPanelCreating()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "A panel is creating, skip "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_1
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Panel is showing the same action, skip "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 144
    iget-object p0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->updatePanelWithAnimation()V

    goto :goto_0

    .line 146
    :cond_3
    sget p1, Lcom/android/settings/R$layout;->settings_panel:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x50

    .line 150
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 151
    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 153
    invoke-direct {p0}, Lcom/android/settings/panel/SettingsPanelActivity;->setupNavigationBar()V

    .line 154
    new-instance p1, Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p1}, Lcom/android/settings/panel/PanelFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    .line 155
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    invoke-virtual {p1, v3, p0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$setupNavigationBar$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 168
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

.method private setupNavigationBar()V
    .locals 2

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/panel/SettingsPanelActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/settings/panel/SettingsPanelActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 179
    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    const/4 p1, 0x1

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->createOrUpdatePanel(Z)V

    .line 80
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 87
    iget-boolean p1, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    invoke-direct {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->createOrUpdatePanel(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStop()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mPanelFragment:Lcom/android/settings/panel/PanelFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/panel/PanelFragment;->isPanelCreating()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mForceCreation:Z

    :cond_0
    return-void
.end method

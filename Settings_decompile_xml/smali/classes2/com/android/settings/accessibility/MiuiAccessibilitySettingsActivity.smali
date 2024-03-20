.class public Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;
.super Lcom/android/settings/SubSettings;
.source "MiuiAccessibilitySettingsActivity.java"


# static fields
.field private static final a11ySettingsClass:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mCurrentPosition:I

.field private mTitles:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputmCurrentPosition(Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mCurrentPosition:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 33
    const-class v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;

    const-class v1, Lcom/android/settings/accessibility/VisualAccessibilitySettings;

    const-class v2, Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    const-class v3, Lcom/android/settings/accessibility/PhysicalAccessibilitySettings;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->a11ySettingsClass:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method

.method private initActionBar()V
    .locals 10

    .line 85
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V

    .line 88
    sget v0, Lcom/android/settings/R$string;->accessibility_settings_tabs_general:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->accessibility_settings_tabs_visual:I

    .line 89
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->accessibility_settings_tabs_hearing:I

    .line 90
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->accessibility_settings_tabs_physical:I

    .line 91
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mTitles:[Ljava/lang/String;

    move v0, v1

    .line 93
    :goto_0
    sget-object v2, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->a11ySettingsClass:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 94
    iget-object v4, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    iget-object v3, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mTitles:[Ljava/lang/String;

    aget-object v5, v3, v0

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mTitles:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v3, v6}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v6

    aget-object v7, v2, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setViewPagerDraggable(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    new-instance v1, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity$1;-><init>(Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    return-void
.end method

.method private openInstallServicesFragment(Ljava/lang/String;I)V
    .locals 1

    .line 51
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method protected needToLaunchSettingsFragment()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.permissioncontroller"

    .line 60
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.permissioncontroller"

    .line 62
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->initActionBar()V

    if-eqz p1, :cond_2

    const-string v0, "current_position"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mCurrentPosition:I

    .line 76
    iget-object p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_tab_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 79
    iget-object p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_3
    :goto_0
    const-string/jumbo p0, "setting_Additional_settings_talkback"

    .line 81
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "MiuiA11ySettingsActivity"

    const-string v0, "Jump to InstalledAccessibilityService"

    .line 64
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-class p1, Lcom/android/settings/accessibility/InstalledAccessibilityService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->user_installed_services_category_title:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->openInstallServicesFragment(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "current_position"

    .line 136
    iget v1, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mCurrentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentPosition:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->mCurrentPosition:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiA11ySettingsActivity"

    invoke-static {p1, p0}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 42
    sget p1, Lcom/android/settings/R$style;->MiuiAccessibility:I

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

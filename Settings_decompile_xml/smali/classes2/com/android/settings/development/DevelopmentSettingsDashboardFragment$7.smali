.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7;
.super Landroid/database/ContentObserver;
.source "DevelopmentSettingsDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public static synthetic $r8$lambda$NIbqkiq8v-IgQyciZhClU83P6D0(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7;->lambda$onChange$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/os/Handler;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 331
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 332
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 333
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$mdisableDeveloperOptions(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    .line 345
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

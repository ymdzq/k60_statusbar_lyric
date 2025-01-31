.class Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedProfileBroadcastReceiver"
.end annotation


# instance fields
.field private mListeningToManagedProfileEvents:Z

.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 651
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountPrefController"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot handle received broadcast: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 655
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p2}, Lcom/android/settings/accounts/AccountPreferenceController;->-$$Nest$fgetmFragment(Lcom/android/settings/accounts/AccountPreferenceController;)Lcom/android/settings/dashboard/DashboardFragment;

    move-result-object p2

    instance-of p2, p2, Lcom/android/settings/accounts/AccountWorkProfileDashboardFragment;

    if-eqz p2, :cond_2

    .line 656
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/accounts/AccountDashboardFragment;

    .line 657
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p2}, Lcom/android/settings/accounts/AccountPreferenceController;->-$$Nest$fgetmFragment(Lcom/android/settings/accounts/AccountPreferenceController;)Lcom/android/settings/dashboard/DashboardFragment;

    move-result-object p2

    .line 658
    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 p2, -0x1

    .line 659
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 p2, 0x1

    .line 660
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setIsSecondLayerPage(Z)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 661
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 662
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->-$$Nest$fgetmFragment(Lcom/android/settings/accounts/AccountPreferenceController;)Lcom/android/settings/dashboard/DashboardFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 665
    :cond_2
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p1}, Lcom/android/settings/accounts/AccountPreferenceController;->-$$Nest$mstopListeningToAccountUpdates(Lcom/android/settings/accounts/AccountPreferenceController;)V

    .line 667
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p1}, Lcom/android/settings/accounts/AccountPreferenceController;->-$$Nest$mupdateUi(Lcom/android/settings/accounts/AccountPreferenceController;)V

    .line 668
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->-$$Nest$mlistenToAccountUpdates(Lcom/android/settings/accounts/AccountPreferenceController;)V

    :goto_1
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .line 676
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 678
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 679
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 681
    iput-boolean p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .line 686
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 688
    iput-boolean p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->mListeningToManagedProfileEvents:Z

    :cond_0
    return-void
.end method

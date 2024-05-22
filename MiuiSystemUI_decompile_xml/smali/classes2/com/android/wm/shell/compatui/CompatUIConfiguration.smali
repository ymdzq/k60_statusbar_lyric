.class public final Lcom/android/wm/shell/compatui/CompatUIConfiguration;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mCompatUISharedPreferences:Landroid/content/SharedPreferences;

.field public mIsLetterboxRestartDialogAllowed:Z

.field public final mIsRestartDialogEnabled:Z

.field public mIsRestartDialogOverrideEnabled:Z

.field public final mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x7f050039    # @bool/config_letterboxIsRestartDialogEnabled 'false'

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsRestartDialogEnabled:Z

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 21
    const v1, 0x7f050038    # @bool/config_letterboxIsReachabilityEducationEnabled 'false'

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 25
    const-string/jumbo v0, "window_manager"

    .line 28
    const-string v1, "enable_letterbox_restart_confirmation_dialog"

    .line 31
    const/4 v2, 0x1

    .line 33
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 34
    move-result v1

    .line 37
    iput-boolean v1, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxRestartDialogAllowed:Z

    .line 38
    const-string v1, "enable_letterbox_education_for_reachability"

    .line 40
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 42
    const-string v0, "app_compat"

    .line 45
    invoke-static {v0, p2, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 47
    const-string p2, "dont_show_restart_dialog"

    .line 50
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 53
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    .line 57
    const-string p2, "has_seen_letterbox_education"

    .line 59
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 61
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mLetterboxEduSharedPreferences:Landroid/content/SharedPreferences;

    .line 65
    return-void
    .line 67
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "enable_letterbox_restart_confirmation_dialog"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    const-string/jumbo v3, "window_manager"

    .line 13
    if-eqz v0, :cond_0

    .line 16
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 18
    move-result v0

    .line 21
    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxRestartDialogAllowed:Z

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 24
    move-result-object p0

    .line 27
    const-string p1, "enable_letterbox_education_for_reachability"

    .line 28
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    invoke-static {v3, p1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 36
    :cond_1
    return-void
    .line 39
.end method

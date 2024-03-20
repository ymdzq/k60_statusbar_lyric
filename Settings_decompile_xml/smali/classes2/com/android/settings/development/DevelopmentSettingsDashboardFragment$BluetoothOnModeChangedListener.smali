.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;
.super Ljava/lang/Object;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothOnModeChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public static synthetic $r8$lambda$rV3hFhQfucplQSQJmy2uRLHmSYM(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;->lambda$onModeChanged$0(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onModeChanged$0(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 193
    check-cast p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->updateBroadcastAudioPreference()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 2

    .line 190
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->-$$Nest$fgetmPreferenceControllers(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 191
    instance-of v1, v0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    if-eqz v1, :cond_0

    .line 192
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

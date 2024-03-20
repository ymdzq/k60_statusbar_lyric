.class Lcom/android/settings/wifi/MiuiWifiDetailFragment$4;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiDetailFragment;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$4;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1030
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$4;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$4;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fgetmNetworkId(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/MiuiUtils;->connectToOtherWifi(Landroid/content/Context;I)V

    .line 1031
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$4;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    const/4 p0, 0x1

    return p0
.end method

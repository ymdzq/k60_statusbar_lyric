.class Lcom/android/settings/wifi/MiuiWifiSettings$15;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->removeVirtualAPPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 2341
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$15;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2344
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$15;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmSameAccountAccessPoint(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$15;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$15;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    .line 2345
    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->access$400(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2346
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$15;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateState(I)V

    .line 2347
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$15;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateSummary()V

    .line 2348
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$15;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->access$500(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$15;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

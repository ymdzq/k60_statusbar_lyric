.class Lcom/android/settings/wifi/MiuiWifiSettings$14;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->addVirtualAPPreference(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

.field final synthetic val$saap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2302
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$14;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$14;->val$saap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 2305
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "click virtual AP Preference!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$14;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 2307
    :cond_0
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$14;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$14;->val$saap:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-virtual {v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->connectSameAccountAp(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 2314
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "connectSameAccountAp fail"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$14;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$14;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    .line 2316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->ap_connect_failed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2315
    invoke-static {p1, p0, p2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 2319
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectSameAccountAp state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2310
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$14;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmIsConnecting(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V

    .line 2311
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$14;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateState(I)V

    .line 2312
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$14;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateSummary()V

    :goto_1
    return p2
.end method

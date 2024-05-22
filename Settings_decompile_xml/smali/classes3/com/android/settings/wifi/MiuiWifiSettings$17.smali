.class Lcom/android/settings/wifi/MiuiWifiSettings$17;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;->apConnectedStatusUpdated(ILcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2385
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    iput p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2388
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fputmIsConnecting(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V

    .line 2389
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->val$status:I

    if-lez v0, :cond_0

    .line 2391
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onApConnectedStatusUpdate: connect AP success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$mremoveVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    goto :goto_0

    .line 2395
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onApConnectedStatusUpdate: connect AP fail!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2397
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateState(I)V

    .line 2398
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateSummary()V

    .line 2399
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateWifiEntryPreferences()V

    .line 2401
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2402
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$17;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    .line 2403
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->ap_connect_failed:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 2402
    invoke-static {v0, p0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_2
    :goto_0
    return-void
.end method

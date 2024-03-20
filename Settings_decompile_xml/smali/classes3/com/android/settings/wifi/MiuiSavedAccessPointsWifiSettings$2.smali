.class Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$2;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->showDeleteDialog(Lcom/android/wifitrackerlib/WifiEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

.field final synthetic val$selectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$2;->val$selectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 251
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$2;->this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$2;->val$selectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p1, p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->-$$Nest$mdeleteSavedConfig(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

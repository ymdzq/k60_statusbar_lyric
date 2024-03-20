.class Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack$1;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack$1;->this$1:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack$1;->this$1:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->-$$Nest$mdeleteSavedConfigs(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    return-void
.end method

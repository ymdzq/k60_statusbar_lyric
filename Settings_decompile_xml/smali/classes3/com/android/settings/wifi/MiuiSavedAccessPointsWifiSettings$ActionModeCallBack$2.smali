.class Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack$2;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$actionMode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack;Landroid/view/ActionMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 428
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack$2;->this$1:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack$2;->val$actionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack$2;->val$actionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method

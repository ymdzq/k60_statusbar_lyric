.class Lcom/android/settings/MiuiTetherSettings$10;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiTetherSettings;->showConfirmDlg(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 1014
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$10;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1018
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$10;->this$0:Lcom/android/settings/MiuiTetherSettings;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mstartProvisioningIfNecessary(Lcom/android/settings/MiuiTetherSettings;I)V

    .line 1020
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$10;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 1021
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    return-void
.end method

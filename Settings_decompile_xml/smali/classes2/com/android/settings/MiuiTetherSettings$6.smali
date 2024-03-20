.class Lcom/android/settings/MiuiTetherSettings$6;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiTetherSettings;->onHotspot()V
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

    .line 799
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$6;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "hotspot_on"

    const/4 p2, 0x0

    .line 802
    invoke-static {p1, p2}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 803
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$6;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 804
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo p2, "wifi_tether_opened"

    const/4 v0, 0x1

    .line 805
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 806
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 807
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$6;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1, v0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputisStopP2p(Lcom/android/settings/MiuiTetherSettings;Z)V

    .line 808
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$6;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$misShowConfirmDlg(Lcom/android/settings/MiuiTetherSettings;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 809
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$6;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mshowConfirmDlg(Lcom/android/settings/MiuiTetherSettings;Landroid/content/Context;)V

    goto :goto_0

    .line 811
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$6;->this$0:Lcom/android/settings/MiuiTetherSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mstartProvisioningIfNecessary(Lcom/android/settings/MiuiTetherSettings;I)V

    :goto_0
    return-void
.end method

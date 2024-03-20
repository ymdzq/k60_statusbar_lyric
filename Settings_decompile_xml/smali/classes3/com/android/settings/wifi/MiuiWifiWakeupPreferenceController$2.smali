.class Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$2;
.super Ljava/lang/Object;
.source "MiuiWifiWakeupPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->showLocationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$2;->this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 142
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$2;->this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->-$$Nest$fgetmFragment(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    const/16 p2, 0x258

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

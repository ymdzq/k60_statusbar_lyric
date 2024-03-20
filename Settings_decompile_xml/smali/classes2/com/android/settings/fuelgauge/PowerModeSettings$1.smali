.class Lcom/android/settings/fuelgauge/PowerModeSettings$1;
.super Ljava/lang/Object;
.source "PowerModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/PowerModeSettings;->createPowerModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerModeSettings;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->-$$Nest$fgetmEntryValues(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerModeSettings;->-$$Nest$fgetmEntryValues(Lcom/android/settings/fuelgauge/PowerModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "persist.sys.aries.power_profile"

    .line 51
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "power_mode"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 58
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerModeSettings$1;->this$0:Lcom/android/settings/fuelgauge/PowerModeSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

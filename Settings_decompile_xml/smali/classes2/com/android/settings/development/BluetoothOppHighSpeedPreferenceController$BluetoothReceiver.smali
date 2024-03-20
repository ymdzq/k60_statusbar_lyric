.class public Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppHighSpeedPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$BluetoothReceiver;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "BluetoothOppHighSpeedPreferenceController"

    .line 60
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receviver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/16 v1, 0xa

    .line 63
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 64
    iget-object p2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$BluetoothReceiver;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-static {p2}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fgetisChanged(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 65
    iget-object p2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$BluetoothReceiver;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fputisChanged(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;Z)V

    .line 66
    iget-object p2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$BluetoothReceiver;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-static {p2}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fgetmyPreference(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Landroidx/preference/Preference;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 67
    iget-object p2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$BluetoothReceiver;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-static {p2}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fgetmContext(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$BluetoothReceiver;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fgetmReceiver(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receviver error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

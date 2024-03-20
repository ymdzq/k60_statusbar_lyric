.class Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$1;
.super Ljava/lang/Object;
.source "BluetoothOppHighSpeedPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->createDialogForRestartBluetooth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

.field final synthetic val$isEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$1;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$1;->val$isEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$1;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fputmClicked(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;Z)V

    .line 154
    iget-boolean p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$1;->val$isEnabled:Z

    const-string v0, "bluetooth_enable_opp_high_speed_preference"

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$1;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fgetmContext(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$1;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fgetmContext(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    :goto_0
    iget-object p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$1;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$mrestartBluetoothAdapter(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)V

    return-void
.end method

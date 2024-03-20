.class Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$3;
.super Ljava/lang/Object;
.source "BluetoothOppHighSpeedPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 170
    iput-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$3;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$3;->val$isEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$3;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fgetmClicked(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$3;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fgetmyPreference(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$3;->val$isEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.class Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$2;
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

    .line 162
    iput-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$2;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$2;->val$isEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$2;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fputmClicked(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;Z)V

    .line 166
    iget-object p1, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$2;->this$0:Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;->-$$Nest$fgetmyPreference(Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController$2;->val$isEnabled:Z

    xor-int/2addr p0, p2

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

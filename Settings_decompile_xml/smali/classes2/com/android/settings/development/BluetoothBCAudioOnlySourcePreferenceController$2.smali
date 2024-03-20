.class Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$2;
.super Ljava/lang/Object;
.source "BluetoothBCAudioOnlySourcePreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->createDialogForBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$2;->this$0:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$2;->this$0:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->-$$Nest$fgetmBroadcastPreference(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$2;->this$0:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->-$$Nest$fgetmBroadcastPreference(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$2;->this$0:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->-$$Nest$mgetBroadcastStatus(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

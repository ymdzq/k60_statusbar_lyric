.class Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$1;
.super Ljava/lang/Object;
.source "BluetoothBCAudioOnlySourcePreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 105
    iput-object p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$1;->this$0:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$1;->this$0:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->-$$Nest$fgetmBroadcastPreference(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->-$$Nest$mhandlePreferenceEnabled(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;Landroidx/preference/SwitchPreference;)V

    .line 108
    iget-object p0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$1;->this$0:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->-$$Nest$mstartBroadcast(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;)V

    return-void
.end method

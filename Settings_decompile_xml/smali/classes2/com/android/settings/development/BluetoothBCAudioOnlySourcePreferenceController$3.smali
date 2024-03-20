.class Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$3;
.super Ljava/lang/Object;
.source "BluetoothBCAudioOnlySourcePreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->handlePreferenceEnabled(Landroidx/preference/SwitchPreference;)V
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

    .line 142
    iput-object p1, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$3;->this$0:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BluetoothBCAudioOnlySourcePreferenceController"

    const-string/jumbo v1, "recover pref state from disable state"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$3;->this$0:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->-$$Nest$fputisLocalSourceButtonBusy(Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;Z)V

    .line 147
    iget-object p0, p0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController$3;->this$0:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->updateBroadcastAudioPreference()V

    return-void
.end method

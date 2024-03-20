.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$8;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->initBroadcastPreOnlySource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcast pre change to open? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdvancedSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 738
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mcreateDialogForBroadcast(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    goto :goto_0

    .line 740
    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mhandlePreferenceEnabled(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Landroidx/preference/Preference;)V

    .line 741
    sget p2, Lcom/android/settings/R$string;->bluetooth_auracast_source_explain_summary:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 742
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$8;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mstopBroadcast(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$5;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->onCreate(Landroid/os/Bundle;)V
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

    .line 334
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "half close switch changed, new state is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAdvancedSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmSubHandler(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "halfclose handler is null"

    .line 339
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmSubHandler(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmSubHandler(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 344
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$5;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmSubHandler(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$SubHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;
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

    .line 229
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 233
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 234
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2$1;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

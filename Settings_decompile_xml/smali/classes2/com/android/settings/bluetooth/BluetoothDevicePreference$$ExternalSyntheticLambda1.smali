.class public final synthetic Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Landroid/util/Pair;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda1;->f$1:Landroid/util/Pair;

    iput-boolean p3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda1;->f$1:Landroid/util/Pair;

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->$r8$lambda$4gHZEvp2wFGm6RDl1AROrxzP9tk(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Landroid/util/Pair;Z)V

    return-void
.end method

.class public final synthetic Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;->$r8$lambda$qaMc0N6kcb4JG7sbUvpECfASXDY(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$BluetoothOnModeChangedListener;Z)V

    return-void
.end method

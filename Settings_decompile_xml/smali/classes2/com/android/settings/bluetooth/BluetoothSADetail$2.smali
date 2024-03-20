.class Lcom/android/settings/bluetooth/BluetoothSADetail$2;
.super Ljava/lang/Object;
.source "BluetoothSADetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothSADetail;->launchSyncAndBroadcastIndexOptions(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSADetail;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$2;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "BluetoothSADetail"

    const-string p2, ">>Cancel clicked"

    .line 542
    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$2;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

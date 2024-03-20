.class Lcom/android/settings/bluetooth/BluetoothSADetail$1$1;
.super Ljava/lang/Object;
.source "BluetoothSADetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSADetail$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/BluetoothSADetail$1;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSADetail$1;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1$1;->this$1:Lcom/android/settings/bluetooth/BluetoothSADetail$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "BluetoothSADetail"

    const-string p2, ">>OK clicked"

    .line 191
    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1$1;->this$1:Lcom/android/settings/bluetooth/BluetoothSADetail$1;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCommonMsgDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1$1;->this$1:Lcom/android/settings/bluetooth/BluetoothSADetail$1;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSADetail;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

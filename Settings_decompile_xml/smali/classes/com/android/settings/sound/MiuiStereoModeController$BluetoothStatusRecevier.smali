.class public Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;
.super Landroid/content/BroadcastReceiver;
.source "MiuiStereoModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/MiuiStereoModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothStatusRecevier"
.end annotation


# instance fields
.field private isBluetoothSpeakerConnected:Z

.field private mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/sound/MiuiStereoModeController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBluetoothSpeakerConnected(Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->isBluetoothSpeakerConnected:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/sound/MiuiStereoModeController;Landroid/content/Context;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->this$0:Lcom/android/settings/sound/MiuiStereoModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->isBluetoothSpeakerConnected:Z

    .line 200
    new-instance p1, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier$1;

    invoke-direct {p1, p0}, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier$1;-><init>(Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;)V

    iput-object p1, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 162
    iput-object p2, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->mContext:Landroid/content/Context;

    .line 164
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->isA2dpConnected()V

    return-void
.end method

.method private isA2dpConnected()V
    .locals 3

    .line 193
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isBluetoothSpeakerConnected()Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->isBluetoothSpeakerConnected:Z

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    .line 171
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiStereoMode"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 173
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->isBluetoothSpeakerConnected:Z

    .line 174
    iget-object p0, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->this$0:Lcom/android/settings/sound/MiuiStereoModeController;

    invoke-static {p0}, Lcom/android/settings/sound/MiuiStereoModeController;->-$$Nest$mupdateUI(Lcom/android/settings/sound/MiuiStereoModeController;)V

    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

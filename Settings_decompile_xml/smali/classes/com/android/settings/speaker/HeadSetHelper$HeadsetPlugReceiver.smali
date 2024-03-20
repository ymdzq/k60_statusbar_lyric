.class Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/speaker/HeadSetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetPlugReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/speaker/HeadSetHelper;


# direct methods
.method private constructor <init>(Lcom/android/settings/speaker/HeadSetHelper;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;->this$0:Lcom/android/settings/speaker/HeadSetHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/speaker/HeadSetHelper;Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;-><init>(Lcom/android/settings/speaker/HeadSetHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string/jumbo p1, "state"

    .line 68
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string p2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 71
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 74
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq p2, v0, :cond_1

    .line 76
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p1

    if-ne p2, p1, :cond_2

    :cond_1
    move v1, v2

    .line 82
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/speaker/HeadSetHelper$HeadsetPlugReceiver;->this$0:Lcom/android/settings/speaker/HeadSetHelper;

    invoke-static {p0}, Lcom/android/settings/speaker/HeadSetHelper;->-$$Nest$fgetmOnHeadSetChangeListener(Lcom/android/settings/speaker/HeadSetHelper;)Lcom/android/settings/speaker/HeadSetHelper$OnHeadSetChangeListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/settings/speaker/HeadSetHelper$OnHeadSetChangeListener;->onHeadSetChange(I)V

    return-void
.end method

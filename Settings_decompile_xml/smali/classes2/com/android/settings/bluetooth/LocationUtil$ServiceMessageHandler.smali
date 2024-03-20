.class final Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;
.super Landroid/os/Handler;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceMessageHandler"
.end annotation


# instance fields
.field public contextWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/bluetooth/LocationUtil;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/LocationUtil;Landroid/os/Looper;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    .line 209
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;->contextWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/LocationUtil;Landroid/os/Looper;Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;-><init>(Lcom/android/settings/bluetooth/LocationUtil;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 215
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "LocationUtil"

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$fgetmDeviceLists(Lcom/android/settings/bluetooth/LocationUtil;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {p1}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$fgetmLocationManager(Lcom/android/settings/bluetooth/LocationUtil;)Landroid/location/LocationManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 229
    iget-object p1, p0, Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {p1}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$fgetmLocationManager(Lcom/android/settings/bluetooth/LocationUtil;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$fgetmLocationListener(Lcom/android/settings/bluetooth/LocationUtil;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 231
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {p0}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$mcheckAndQuitThread(Lcom/android/settings/bluetooth/LocationUtil;)V

    goto :goto_0

    .line 220
    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocationUtil$ServiceMessageHandler;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocationUtil;->requestLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

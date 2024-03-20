.class final Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;
.super Ljava/lang/Object;
.source "LocationUtil.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocationUtil;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/LocationUtil;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/LocationUtil;Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;-><init>(Lcom/android/settings/bluetooth/LocationUtil;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLocationChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$fgetmLocationManager(Lcom/android/settings/bluetooth/LocationUtil;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$fgetmLocationManager(Lcom/android/settings/bluetooth/LocationUtil;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/LocationUtil;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/LocationUtil;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/LocationUtil;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    iget-object v0, v0, Lcom/android/settings/bluetooth/LocationUtil;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    iget-object v1, v0, Lcom/android/settings/bluetooth/LocationUtil;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$mupdateLocation(Lcom/android/settings/bluetooth/LocationUtil;Landroid/content/Context;Landroid/location/Location;)V

    .line 258
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocationUtil$WorkLocationListener;->this$0:Lcom/android/settings/bluetooth/LocationUtil;

    invoke-static {p0}, Lcom/android/settings/bluetooth/LocationUtil;->-$$Nest$mcheckAndQuitThread(Lcom/android/settings/bluetooth/LocationUtil;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    const-string p0, "LocationUtil"

    const-string/jumbo p1, "onProviderDisabled"

    .line 273
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    const-string p0, "LocationUtil"

    const-string/jumbo p1, "onProviderEnabled"

    .line 268
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const-string p0, "LocationUtil"

    const-string/jumbo p1, "onStatusChanged"

    .line 263
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

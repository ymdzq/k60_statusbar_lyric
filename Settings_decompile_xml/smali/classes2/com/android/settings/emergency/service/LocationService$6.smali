.class Lcom/android/settings/emergency/service/LocationService$6;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/service/LocationService;->startLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/service/LocationService;

.field final synthetic val$locationCriteria:Landroid/location/Criteria;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/service/LocationService;Landroid/location/Criteria;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 589
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService$6;->this$0:Lcom/android/settings/emergency/service/LocationService;

    iput-object p2, p0, Lcom/android/settings/emergency/service/LocationService$6;->val$locationCriteria:Landroid/location/Criteria;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    const-string v0, "SOS-LocationService"

    const-string/jumbo v1, "onLocationChanged !"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$6;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fputmLatitude(Lcom/android/settings/emergency/service/LocationService;D)V

    .line 610
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$6;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fputmLongitude(Lcom/android/settings/emergency/service/LocationService;D)V

    .line 612
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService$6;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmWorkingHandler(Lcom/android/settings/emergency/service/LocationService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 613
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService$6;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmWorkingHandler(Lcom/android/settings/emergency/service/LocationService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/settings/emergency/service/LocationService$6$1;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/service/LocationService$6$1;-><init>(Lcom/android/settings/emergency/service/LocationService$6;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

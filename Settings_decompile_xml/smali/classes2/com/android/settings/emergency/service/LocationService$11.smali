.class Lcom/android/settings/emergency/service/LocationService$11;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/android/settings/emergency/service/LocationService$ISosSnapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/emergency/service/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/service/LocationService;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/service/LocationService;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService$11;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeSendSnap(Ljava/lang/String;)V
    .locals 3

    .line 854
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$11;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0, p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fputmBitmapPath(Lcom/android/settings/emergency/service/LocationService;Ljava/lang/String;)V

    .line 855
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService$11;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmMobileDataEnable(Lcom/android/settings/emergency/service/LocationService;)Z

    move-result p1

    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 856
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$11;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmWorkingHandler(Lcom/android/settings/emergency/service/LocationService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 858
    :cond_0
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$11;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmWorkingHandler(Lcom/android/settings/emergency/service/LocationService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

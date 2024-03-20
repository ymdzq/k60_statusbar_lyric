.class Lcom/android/settings/emergency/service/LocationService$4;
.super Landroid/content/BroadcastReceiver;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/service/LocationService;->initPhoneState()V
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

    .line 431
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService$4;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "SOS-LocationService"

    const-string p2, "cdma real connected !"

    .line 435
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$4;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$mplayAudioAfterCallConnected(Lcom/android/settings/emergency/service/LocationService;)V

    return-void
.end method

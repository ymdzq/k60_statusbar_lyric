.class Lcom/android/settings/emergency/service/LocationService$8;
.super Landroid/database/ContentObserver;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/service/LocationService;->enforceLocationServiceEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/service/LocationService;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/service/LocationService;Landroid/os/Handler;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService$8;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 675
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$8;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "location_mode"

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.class public final synthetic Lcom/android/settings/emergency/service/LocationService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/emergency/service/LocationService;

.field public final synthetic f$1:Landroid/app/NotificationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/emergency/service/LocationService;Landroid/app/NotificationManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/emergency/service/LocationService;

    iput-object p2, p0, Lcom/android/settings/emergency/service/LocationService$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/emergency/service/LocationService;

    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationManager;

    invoke-static {v0, p0}, Lcom/android/settings/emergency/service/LocationService;->$r8$lambda$hi5QG9hXgDNtoZTCI4FjTcv3VZM(Lcom/android/settings/emergency/service/LocationService;Landroid/app/NotificationManager;)V

    return-void
.end method

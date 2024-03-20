.class Lcom/android/settings/emergency/ui/SosLaunchingActivity$3;
.super Ljava/lang/Object;
.source "SosLaunchingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosLaunchingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$3;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$3;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const v0, 0x3000000a

    const-string v1, "bright"

    .line 96
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 99
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

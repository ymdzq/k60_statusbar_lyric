.class Lcom/android/settings/MiuiDisplaySettings$8;
.super Ljava/lang/Object;
.source "MiuiDisplaySettings.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$8;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .line 933
    iget-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$8;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmBackgroundHandler(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settings/MiuiDisplaySettings$BackgroundHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$8;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmUpdateBrightnessSeekBarRunnable(Lcom/android/settings/MiuiDisplaySettings;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

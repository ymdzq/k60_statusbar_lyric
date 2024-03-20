.class Lcom/android/settings/MiuiDisplaySettings$11;
.super Ljava/lang/Object;
.source "MiuiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1052
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$11;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$11;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmBrightnessObserver(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->startObserving()V

    .line 1056
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$11;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmUpdateModeRunnable(Lcom/android/settings/MiuiDisplaySettings;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1057
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$11;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmUpdateBrightnessSeekBarRunnable(Lcom/android/settings/MiuiDisplaySettings;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.class Lcom/android/settings/MiuiDisplaySettings$12;
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

    .line 1061
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$12;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1064
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$12;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmBrightnessObserver(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/MiuiDisplaySettings$BrightnessObserver;->stopObserving()V

    return-void
.end method

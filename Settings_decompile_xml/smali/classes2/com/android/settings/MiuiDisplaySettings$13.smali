.class Lcom/android/settings/MiuiDisplaySettings$13;
.super Landroid/os/Handler;
.source "MiuiDisplaySettings.java"


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

    .line 1068
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$13;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1071
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 1080
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$13;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$mupdateFontSettingEnabledState(Lcom/android/settings/MiuiDisplaySettings;)V

    goto :goto_1

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$13;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmBrightnessSeekBarPreference(Lcom/android/settings/MiuiDisplaySettings;)Lcom/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    .line 1077
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/android/settings/MiuiDisplaySettings$13;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmMinimumBrightness(Lcom/android/settings/MiuiDisplaySettings;)F

    move-result v1

    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$13;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmMaximumBrightness(Lcom/android/settings/MiuiDisplaySettings;)F

    move-result p0

    .line 1076
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/settings/display/BrightnessSeekBarPreference;->updateBrightnessSeekBar(FFF)V

    goto :goto_1

    .line 1073
    :cond_2
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$13;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$mupdateAutomaticBrightnessMode(Lcom/android/settings/MiuiDisplaySettings;Z)V

    :goto_1
    return-void
.end method

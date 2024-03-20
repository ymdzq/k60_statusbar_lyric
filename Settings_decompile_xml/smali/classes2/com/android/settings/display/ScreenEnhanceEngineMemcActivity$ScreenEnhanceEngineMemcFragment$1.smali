.class Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;
.super Landroid/os/Handler;
.source "ScreenEnhanceEngineMemcActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 56
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 57
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x456

    if-ne p1, v0, :cond_2

    .line 58
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-static {p1}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->-$$Nest$fgetcontext(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->getPowerModeOpenStatus(Landroid/content/Context;)Z

    move-result p1

    .line 59
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-static {v0}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->-$$Nest$fgetcontext(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->getPowerSaveModeOpenStatus(Landroid/content/Context;)Z

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-static {v1}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->-$$Nest$fgetcontext(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->getSuperSavePowerModeOpenStatus(Landroid/content/Context;)Z

    move-result v1

    .line 61
    iget-object v2, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-static {v2}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->-$$Nest$fgetcontext(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->getExtremeAudioAndVideoStatus(Landroid/content/Context;)Z

    move-result v2

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "powerModeOpen=%s, powerSaveModeOpen=%s,superSavePowerModeOpenStatus=%s, extremeAudioAndVideoStatus=%s"

    .line 62
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScreenEnhanceMem"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const-string v5, "NON_MANUAL_SHUTDOWN_FLAG"

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    iget-object v7, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-static {v7}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->-$$Nest$fgetcontext(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/settings/MiuiUtils;->setExtremeAudioAndVideoStatus(Landroid/content/Context;Z)Z

    const-string/jumbo v7, "set NON_MANUAL_SHUTDOWN_FLAG true"

    .line 66
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v7, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-static {v7}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->-$$Nest$fgetcontext(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5, v3}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    if-nez v2, :cond_2

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-static {p1}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->-$$Nest$fgetcontext(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5, v6}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 70
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-static {p1}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->-$$Nest$fgetcontext(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/android/settings/MiuiUtils;->setExtremeAudioAndVideoStatus(Landroid/content/Context;Z)Z

    const-string/jumbo p1, "set NON_MANUAL_SHUTDOWN_FLAG false"

    .line 71
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;->this$0:Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;

    invoke-static {p0}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->-$$Nest$fgetcontext(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v5, v6}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

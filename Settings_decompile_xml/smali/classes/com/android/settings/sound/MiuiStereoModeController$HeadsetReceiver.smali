.class Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiStereoModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/MiuiStereoModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetReceiver"
.end annotation


# instance fields
.field private isHeadsetConnected:Z

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/sound/MiuiStereoModeController;


# direct methods
.method public constructor <init>(Lcom/android/settings/sound/MiuiStereoModeController;Landroid/content/Context;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->this$0:Lcom/android/settings/sound/MiuiStereoModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->isHeadsetConnected:Z

    .line 126
    iput-object p2, p0, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isHeadsetConnected()Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->isHeadsetConnected:Z

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v0, p2

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->isHeadsetConnected:Z

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive action: android.intent.action.HEADSET_PLUG state="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->isHeadsetConnected:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiStereoMode"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p0, p0, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->this$0:Lcom/android/settings/sound/MiuiStereoModeController;

    invoke-static {p0}, Lcom/android/settings/sound/MiuiStereoModeController;->-$$Nest$mupdateUI(Lcom/android/settings/sound/MiuiStereoModeController;)V

    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

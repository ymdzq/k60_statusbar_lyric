.class Lcom/android/settings/MiuiSoundSettingsBase$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSoundSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSoundSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSoundSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSoundSettingsBase;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettingsBase$1;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettingsBase$1;->this$0:Lcom/android/settings/MiuiSoundSettingsBase;

    invoke-static {p0, p2}, Lcom/android/settings/MiuiSoundSettingsBase;->-$$Nest$mhandleDockChange(Lcom/android/settings/MiuiSoundSettingsBase;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

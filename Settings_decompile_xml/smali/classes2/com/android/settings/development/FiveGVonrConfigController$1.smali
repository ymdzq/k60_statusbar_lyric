.class Lcom/android/settings/development/FiveGVonrConfigController$1;
.super Landroid/content/BroadcastReceiver;
.source "FiveGVonrConfigController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/FiveGVonrConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/FiveGVonrConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/FiveGVonrConfigController;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/development/FiveGVonrConfigController$1;->this$0:Lcom/android/settings/development/FiveGVonrConfigController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DevelopmentVonrPreferenceController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "ACTION_AIRPLANE_MODE_CHANGED"

    .line 76
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrConfigController$1;->this$0:Lcom/android/settings/development/FiveGVonrConfigController;

    invoke-static {p0}, Lcom/android/settings/development/FiveGVonrConfigController;->-$$Nest$mupdateState(Lcom/android/settings/development/FiveGVonrConfigController;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ACTION_CARRIER_CONFIG_CHANGED"

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrConfigController$1;->this$0:Lcom/android/settings/development/FiveGVonrConfigController;

    invoke-static {p0}, Lcom/android/settings/development/FiveGVonrConfigController;->-$$Nest$mupdateState(Lcom/android/settings/development/FiveGVonrConfigController;)V

    :cond_1
    :goto_0
    return-void
.end method

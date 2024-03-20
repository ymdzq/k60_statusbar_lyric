.class Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseBatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController$1;->this$0:Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController$1;->this$0:Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;

    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;->onBatteryChange(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "miui.intent.action.ACTION_QUICK_CHARGE_TYPE"

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 29
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController$1;->this$0:Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;

    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/aboutphone/BaseBatteryController;->wireQuickCharge(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

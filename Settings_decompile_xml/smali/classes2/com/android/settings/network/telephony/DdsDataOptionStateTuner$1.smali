.class Lcom/android/settings/network/telephony/DdsDataOptionStateTuner$1;
.super Landroid/content/BroadcastReceiver;
.source "DdsDataOptionStateTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner$1;->this$0:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner$1;->this$0:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->-$$Nest$fputmDefaultDataSubId(Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;I)V

    .line 49
    iget-object p0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner$1;->this$0:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    invoke-static {p0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->-$$Nest$mupdate(Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;)V

    :cond_0
    return-void
.end method

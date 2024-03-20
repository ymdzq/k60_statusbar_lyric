.class Lcom/android/settings/msim/SimFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "SimFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/msim/SimFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/msim/SimFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/msim/SimFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settings/msim/SimFragment$2;->this$0:Lcom/android/settings/msim/SimFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo p2, "message"

    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SmsCbMessage;

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result p2

    const/16 v0, 0x32

    if-ne p2, v0, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object p0, p0, Lcom/android/settings/msim/SimFragment$2;->this$0:Lcom/android/settings/msim/SimFragment;

    invoke-static {p0, p1}, Lcom/android/settings/msim/SimFragment;->-$$Nest$mupdateAreaInfo(Lcom/android/settings/msim/SimFragment;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

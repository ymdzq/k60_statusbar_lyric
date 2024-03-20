.class Lcom/android/settings/network/apn/ApnSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ApnSettings"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ss"

    .line 262
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ABSENT"

    .line 263
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_8

    .line 265
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Due to SIM absent, closes APN settings page"

    .line 266
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_0

    .line 269
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-static {}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$sfgetmRestoreDefaultApnMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "android.telephony.extra.SUBSCRIPTION_ID"

    const/4 v1, -0x1

    .line 274
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 276
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmPhoneId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result v0

    .line 277
    invoke-static {p1, p2}, Lcom/android/settings/network/SubscriptionUtil;->getPhoneId(Landroid/content/Context;I)I

    move-result p1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p1

    if-eq p2, p1, :cond_2

    .line 280
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmSubId(Lcom/android/settings/network/apn/ApnSettings;I)V

    .line 281
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mgetSubscriptionInfo(Lcom/android/settings/network/apn/ApnSettings;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmSubscriptionInfo(Lcom/android/settings/network/apn/ApnSettings;Landroid/telephony/SubscriptionInfo;)V

    .line 282
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mrestartPhoneStateListener(Lcom/android/settings/network/apn/ApnSettings;I)V

    .line 284
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V

    goto/16 :goto_0

    .line 285
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "org.codeaurora.intent.action.ACTION_ENHANCE_4G_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 286
    invoke-static {}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$sfgetmRestoreDefaultApnMode()Z

    move-result p1

    if-nez p1, :cond_4

    .line 287
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V

    goto/16 :goto_0

    .line 289
    :cond_4
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mshowRestoreDefaultApnDialog(Lcom/android/settings/network/apn/ApnSettings;)V

    goto/16 :goto_0

    .line 292
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v0, "state"

    if-eqz p1, :cond_6

    .line 293
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "apnType"

    .line 294
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apnType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "CONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "default"

    .line 297
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 298
    invoke-static {}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$sfgetmRestoreDefaultApnMode()Z

    move-result p1

    if-nez p1, :cond_8

    .line 299
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V

    goto :goto_0

    .line 302
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 303
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$fputmIsAirplaneEnabled(Lcom/android/settings/network/apn/ApnSettings;Z)V

    .line 304
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mupdateApnListEnableState(Lcom/android/settings/network/apn/ApnSettings;)V

    goto :goto_0

    .line 307
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "miui.intent.action.ACTION_UPDATE_CLOUD_APN_COMPLETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "on Receive: cloud apn complete action ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$sfgetmRestoreDefaultApnMode()Z

    move-result p1

    if-nez p1, :cond_8

    .line 310
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$2;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V

    :cond_8
    :goto_0
    return-void
.end method

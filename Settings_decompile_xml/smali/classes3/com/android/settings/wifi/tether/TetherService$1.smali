.class Lcom/android/settings/wifi/tether/TetherService$1;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 330
    invoke-static {}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    const-string v0, "TetherService"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got provision result "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$fgetmExpectedProvisionResponseAction(Lcom/android/settings/wifi/tether/TetherService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received provisioning response for unexpected action="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", expected="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$fgetmExpectedProvisionResponseAction(Lcom/android/settings/wifi/tether/TetherService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 333
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$fgetmInProvisionCheck(Lcom/android/settings/wifi/tether/TetherService;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 339
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected provisioning response when not in provisioning check"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 343
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$fgetmCurrentTethers(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$fgetmCurrentTypeIndex(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 344
    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$fputmInProvisionCheck(Lcom/android/settings/wifi/tether/TetherService;Z)V

    const-string v1, "EntitlementResult"

    .line 345
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 347
    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 349
    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v3}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$mgetTetherServiceWrapper(Lcom/android/settings/wifi/tether/TetherService;)Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;->getActiveDataSubscriptionId()I

    move-result v3

    .line 350
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "44020"

    .line 351
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p2, "Not operator sim! Default result is RESULT_OK!"

    .line 352
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v2

    :cond_3
    if-eq p2, v2, :cond_4

    .line 357
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$mdisableTethering(Lcom/android/settings/wifi/tether/TetherService;I)V

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$mfireCallbacksForType(Lcom/android/settings/wifi/tether/TetherService;II)V

    .line 360
    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$fgetmCurrentTypeIndex(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$fputmCurrentTypeIndex(Lcom/android/settings/wifi/tether/TetherService;I)V

    iget-object p1, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$fgetmCurrentTethers(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_5

    .line 362
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 365
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService$1;->this$0:Lcom/android/settings/wifi/tether/TetherService;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$fgetmCurrentTypeIndex(Lcom/android/settings/wifi/tether/TetherService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->-$$Nest$mstartProvisioning(Lcom/android/settings/wifi/tether/TetherService;I)V

    :goto_0
    return-void
.end method

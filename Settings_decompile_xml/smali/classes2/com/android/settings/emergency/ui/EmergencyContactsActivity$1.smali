.class Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;
.super Ljava/lang/Object;
.source "EmergencyContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/EmergencyContactsActivity;

.field final synthetic val$contactsInfo:Ljava/util/List;

.field final synthetic val$subInfo:Lmiui/telephony/SubscriptionInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/EmergencyContactsActivity;Ljava/util/List;Lmiui/telephony/SubscriptionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 409
    iput-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;->this$0:Lcom/android/settings/emergency/ui/EmergencyContactsActivity;

    iput-object p2, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;->val$contactsInfo:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;->val$subInfo:Lmiui/telephony/SubscriptionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 412
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;->this$0:Lcom/android/settings/emergency/ui/EmergencyContactsActivity;

    invoke-static {p1}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->-$$Nest$mregisterSmsReceiver(Lcom/android/settings/emergency/ui/EmergencyContactsActivity;)V

    const/4 p1, 0x0

    move p2, p1

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;->val$contactsInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;->val$contactsInfo:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 415
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELIVERED_SMS_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "number"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    iget-object v2, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;->this$0:Lcom/android/settings/emergency/ui/EmergencyContactsActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0xc000000

    invoke-static {v2, p1, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 420
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;->this$0:Lcom/android/settings/emergency/ui/EmergencyContactsActivity;

    sget v3, Lcom/android/settings/R$string;->miui_sos_remind_infocontent:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;->val$subInfo:Lmiui/telephony/SubscriptionInfo;

    .line 421
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    .line 420
    invoke-static {v0, v2, v1, v3}, Lcom/android/settings/emergency/util/CommonUtils;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;
.super Landroid/database/ContentObserver;
.source "SimStatusDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/os/Handler;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 711
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmSlotId(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)I

    move-result p1

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 712
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmContext(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5g_icon_group_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmSlotId(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fputmIsShow5GNsaType(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Z)V

    .line 714
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmContext(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmSlotId(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v3, v1

    :cond_1
    invoke-static {p1, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fputmIsShow5GSaType(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Z)V

    .line 716
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$mupdateNetworkType(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    .line 717
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange mIsShow5GNsaType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmIsShow5GNsaType(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsShow5GSaType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmIsShow5GSaType(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mSlotId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmSlotId(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimStatusDialogCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

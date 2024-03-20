.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAtUiInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$callbackData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4586
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->val$callbackData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "MiuiHeadsetFragment"

    .line 4590
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->val$callbackData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4593
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->val$callbackData:Ljava/lang/String;

    const-string v2, "\\|"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 4594
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 4597
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at indicate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->val$callbackData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mInitedAtUi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-boolean v3, v3, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInitedAtUi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 4598
    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4599
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    aget-object v4, v1, v2

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmAncLevelMap(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x2

    .line 4601
    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    aget-object v4, v1, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 4602
    :cond_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    aget-object v6, v1, v5

    invoke-static {v4, v6}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmAncCached(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    .line 4603
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v4, v4, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    if-eqz v4, :cond_4

    .line 4604
    aget-object v3, v1, v3

    invoke-virtual {v4, v3}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->onBatteryChanged(Ljava/lang/String;)V

    .line 4606
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmWindNoiseAncLevel(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    .line 4607
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isHfpConnected()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v4

    .line 4608
    invoke-static {v1, v3, v4}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4609
    :cond_5
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-boolean v3, v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInitedAtUi:Z

    if-nez v3, :cond_6

    const-string v3, ""

    .line 4610
    invoke-virtual {v1, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshStatusUi(Ljava/lang/String;)V

    .line 4612
    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-boolean v3, v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInitedAtUi:Z

    if-nez v3, :cond_8

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAncCached(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4613
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$misSupportWindNoise(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWindNoiseAncLevel(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v1

    .line 4614
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWindNoiseAncLevel(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "01"

    .line 4615
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAncCached(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    .line 4616
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4617
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const-string v3, "0104"

    invoke-virtual {v1, v3, v5}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncUi(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4619
    :cond_7
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAncCached(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mgetDefaultAncLevel(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncUi(Ljava/lang/String;Z)V

    .line 4622
    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInitedAtUi:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_9
    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 4626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    return-void
.end method

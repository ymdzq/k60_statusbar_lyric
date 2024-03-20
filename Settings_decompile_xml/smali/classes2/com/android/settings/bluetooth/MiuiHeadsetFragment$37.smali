.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleOtaInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$deviceAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4865
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->val$deviceAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4868
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->val$deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4870
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmFwVersionCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, "MiuiHeadsetFragment"

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLastOnlineVersionCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmFwVersionCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLastOnlineVersionCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)I

    move-result v2

    if-ge v0, v2, :cond_3

    const-string/jumbo v0, "the version is not last"

    .line 4872
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSilentUpgradeStatus:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgradeStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgradeStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4875
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/android/settings/R$id;->red_dot:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4878
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4879
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object v1

    .line 4880
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->miheadset_network_not_available:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4879
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    .line 4884
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWorkHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWorkHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    move-result-object v1

    const/16 v2, 0x6e

    .line 4885
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4884
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4891
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->red_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4893
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmFwVersion(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "the version has been the last"

    .line 4894
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4895
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/android/settings/R$id;->red_dot:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const-string v0, "handleOtaInfo() some error occur!"

    .line 4897
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    :goto_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmOtaIndicate(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/Boolean;)V

    :cond_5
    :goto_1
    return-void
.end method

.class Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;
.super Ljava/lang/Object;
.source "MiuiHeadsetBattery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->updateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "MiuiHeadsetBattery"

    :try_start_0
    const-string/jumbo v1, "update Ui "

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$misDeviceHfpConnected(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v3}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmDeviceID(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "device is not connected"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetINVALID_BATTERY(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fputmLeftBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;I)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetINVALID_BATTERY(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fputmRightBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;I)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetINVALID_BATTERY(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fputmBoxBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;I)V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmLeftBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetINVALID_BATTERY(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "%"

    const-string v4, "-"

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x0

    if-eq v1, v2, :cond_3

    .line 192
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmLeftBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetBATTERY_CHARGE_FLAG(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetBATTERY_CHARGE_FLAG(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    if-ne v1, v2, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    move v1, v7

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmLeftBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    iget-object v8, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v8}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetBATTERY_VALUE_FLAG(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v8

    and-int/2addr v2, v8

    if-ltz v2, :cond_4

    if-gt v2, v6, :cond_4

    .line 195
    iget-object v8, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v8}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget v9, Lcom/android/settings/R$id;->leftBattery:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v8, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    sget v9, Lcom/android/settings/R$id;->imageLeftBattery:I

    invoke-static {v8, v9, v2, v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$mupdateBatteryIcon(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;IIZ)V

    goto :goto_1

    :cond_3
    const-string v1, " mLeftBattery is INVALID_BATTERY"

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->leftBattery:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    sget v2, Lcom/android/settings/R$id;->imageLeftBattery:I

    invoke-static {v1, v2, v6, v7}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$mupdateBatteryIcon(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;IIZ)V

    .line 205
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRightBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetINVALID_BATTERY(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 206
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRightBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetBATTERY_CHARGE_FLAG(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetBATTERY_CHARGE_FLAG(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v5

    goto :goto_2

    :cond_5
    move v1, v7

    .line 207
    :goto_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRightBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    iget-object v8, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v8}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetBATTERY_VALUE_FLAG(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v8

    and-int/2addr v2, v8

    if-ltz v2, :cond_7

    if-gt v2, v6, :cond_7

    .line 209
    iget-object v8, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v8}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    sget v9, Lcom/android/settings/R$id;->rightBattery:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v8, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    sget v9, Lcom/android/settings/R$id;->imageRightBattery:I

    invoke-static {v8, v9, v2, v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$mupdateBatteryIcon(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;IIZ)V

    goto :goto_3

    .line 214
    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->rightBattery:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    sget v2, Lcom/android/settings/R$id;->imageRightBattery:I

    invoke-static {v1, v2, v6, v7}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$mupdateBatteryIcon(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;IIZ)V

    .line 218
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmBoxBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetINVALID_BATTERY(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    if-eq v1, v2, :cond_9

    .line 219
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmBoxBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetBATTERY_CHARGE_FLAG(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetBATTERY_CHARGE_FLAG(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    if-ne v1, v2, :cond_8

    goto :goto_4

    :cond_8
    move v5, v7

    .line 220
    :goto_4
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmBoxBattery(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetBATTERY_VALUE_FLAG(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)I

    move-result v2

    and-int/2addr v1, v2

    if-ltz v1, :cond_b

    if-gt v1, v6, :cond_b

    .line 222
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->boxBattery:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    sget v2, Lcom/android/settings/R$id;->imageBoxBattery:I

    invoke-static {p0, v2, v1, v5}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$mupdateBatteryIcon(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;IIZ)V

    goto :goto_6

    .line 227
    :cond_9
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->boxBattery:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$3;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    sget v1, Lcom/android/settings/R$id;->imageBoxBattery:I

    invoke-static {p0, v1, v6, v7}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$mupdateBatteryIcon(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;IIZ)V

    goto :goto_6

    :cond_a
    :goto_5
    const-string/jumbo p0, "weakprefernce is null"

    .line 179
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    return-void
.end method

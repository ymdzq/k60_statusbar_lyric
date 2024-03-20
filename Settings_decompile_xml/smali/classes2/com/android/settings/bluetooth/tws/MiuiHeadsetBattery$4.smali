.class Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;
.super Ljava/lang/Object;
.source "MiuiHeadsetBattery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->onDeviceDisconnectted()V
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

    .line 242
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "MiuiHeadsetBattery"

    const-string v1, "-"

    .line 246
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->leftBattery:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->rightBattery:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->boxBattery:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    sget v2, Lcom/android/settings/R$id;->imageLeftBattery:I

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-static {v1, v2, v4, v3}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$mupdateBatteryIcon(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;IIZ)V

    .line 255
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    sget v2, Lcom/android/settings/R$id;->imageBoxBattery:I

    invoke-static {v1, v2, v4, v3}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$mupdateBatteryIcon(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;IIZ)V

    .line 256
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    sget v1, Lcom/android/settings/R$id;->imageRightBattery:I

    invoke-static {p0, v1, v4, v3}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$mupdateBatteryIcon(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;IIZ)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo p0, "weakprefernce is null"

    .line 248
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

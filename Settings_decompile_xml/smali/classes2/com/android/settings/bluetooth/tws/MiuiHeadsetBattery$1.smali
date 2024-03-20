.class Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;
.super Ljava/lang/Object;
.source "MiuiHeadsetBattery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->updateBatteryIcon(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

.field final synthetic val$battery:I

.field final synthetic val$charge:Z

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->val$charge:Z

    iput p3, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->val$id:I

    iput p4, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->val$battery:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "MiuiHeadsetBattery"

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 101
    sget v3, Lcom/android/settings/R$drawable;->battery10:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/android/settings/R$drawable;->battery20:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Lcom/android/settings/R$drawable;->battery30:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sget v3, Lcom/android/settings/R$drawable;->battery40:I

    const/4 v7, 0x3

    aput v3, v2, v7

    sget v3, Lcom/android/settings/R$drawable;->battery50:I

    const/4 v8, 0x4

    aput v3, v2, v8

    sget v3, Lcom/android/settings/R$drawable;->battery60:I

    const/4 v9, 0x5

    aput v3, v2, v9

    sget v3, Lcom/android/settings/R$drawable;->battery70:I

    const/4 v10, 0x6

    aput v3, v2, v10

    sget v3, Lcom/android/settings/R$drawable;->battery80:I

    const/4 v11, 0x7

    aput v3, v2, v11

    sget v3, Lcom/android/settings/R$drawable;->battery90:I

    const/16 v12, 0x8

    aput v3, v2, v12

    sget v3, Lcom/android/settings/R$drawable;->battery100:I

    const/16 v13, 0x9

    aput v3, v2, v13

    new-array v3, v1, [I

    .line 114
    sget v14, Lcom/android/settings/R$drawable;->battery10_charge:I

    aput v14, v3, v4

    sget v4, Lcom/android/settings/R$drawable;->battery20_charge:I

    aput v4, v3, v5

    sget v4, Lcom/android/settings/R$drawable;->battery30_charge:I

    aput v4, v3, v6

    sget v4, Lcom/android/settings/R$drawable;->battery40_charge:I

    aput v4, v3, v7

    sget v4, Lcom/android/settings/R$drawable;->battery50_charge:I

    aput v4, v3, v8

    sget v4, Lcom/android/settings/R$drawable;->battery60_charge:I

    aput v4, v3, v9

    sget v4, Lcom/android/settings/R$drawable;->battery70_charge:I

    aput v4, v3, v10

    sget v4, Lcom/android/settings/R$drawable;->battery80_charge:I

    aput v4, v3, v11

    sget v4, Lcom/android/settings/R$drawable;->battery90_charge:I

    aput v4, v3, v12

    sget v4, Lcom/android/settings/R$drawable;->battery100_charge:I

    aput v4, v3, v13

    .line 127
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->val$charge:Z

    if-eqz v4, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v4, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->val$id:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v4}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    .line 129
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->val$battery:I

    sub-int/2addr p0, v5

    div-int/2addr p0, v1

    aget p0, v3, p0

    .line 130
    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 129
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v3}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget v4, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->val$id:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-static {v4}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    .line 133
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery$1;->val$battery:I

    sub-int/2addr p0, v5

    div-int/2addr p0, v1

    aget p0, v2, p0

    .line 134
    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 133
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo p0, "weakprefernce is null"

    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 136
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

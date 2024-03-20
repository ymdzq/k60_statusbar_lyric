.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$51;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateOtaTextViewLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 6483
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$51;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 6486
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$51;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6488
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$51;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->sim_red_dot_size:I

    .line 6489
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6490
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$51;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->headset_version_renameLayout_checkversion_red_margin:I

    .line 6491
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6493
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$51;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/settings/R$id;->updateTextViewParent:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    .line 6494
    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 6495
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 6498
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$51;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/view/View;

    move-result-object p0

    sget v4, Lcom/android/settings/R$id;->updateTextView:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 6499
    invoke-virtual {p0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 6500
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 6501
    move-object v4, p0

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6502
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const-string v4, "MiuiHeadsetFragment"

    if-nez v2, :cond_0

    const-string/jumbo p0, "parents is 0"

    .line 6504
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    int-to-float v5, v0

    add-float/2addr v3, v5

    mul-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    add-float/2addr v3, v5

    int-to-float v5, v2

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 6511
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6512
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6514
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6515
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6517
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update to ota paraments "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6519
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6520
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6522
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6523
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const-string/jumbo p0, "set ota WRAP_CONTENT  "

    .line 6525
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

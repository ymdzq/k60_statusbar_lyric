.class Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;
.super Ljava/lang/Object;
.source "MiuiHeadsetFitnessFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->updateIconMargin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

.field final synthetic val$tempView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 531
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;->val$tempView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmSummaryTV(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    const/16 v1, 0xb4

    if-lt v0, v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmHeadSetAct(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->headset_fitness_icon_margin_top:I

    .line 537
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 538
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;->val$tempView:Landroid/widget/ImageView;

    .line 539
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x87

    .line 541
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v0, v1, :cond_0

    .line 542
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 543
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;->val$tempView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;->val$tempView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmIconLeftIV(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmIconRightIV(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

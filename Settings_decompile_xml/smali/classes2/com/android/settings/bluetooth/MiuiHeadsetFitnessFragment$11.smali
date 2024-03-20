.class Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$11;
.super Ljava/lang/Object;
.source "MiuiHeadsetFitnessFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->updateUIToCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmProgressLL(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmCheckBtn(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmCheckBtn(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "check"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmCheckBtn(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miheadset_fitness_check_start:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 587
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$fgetmSummaryTV(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->miheadset_fitness_check_summary2:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

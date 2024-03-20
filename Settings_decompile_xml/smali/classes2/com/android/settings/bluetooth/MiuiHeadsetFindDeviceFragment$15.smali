.class Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;
.super Ljava/lang/Object;
.source "MiuiHeadsetFindDeviceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->updateConnetedItemView(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

.field final synthetic val$leftConnected:Z

.field final synthetic val$rightConnected:Z


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 590
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->val$leftConnected:Z

    iput-boolean p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->val$rightConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 592
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmFindDeviceView(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->view_corner_both:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 593
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->val$leftConnected:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->val$rightConnected:Z

    if-eqz v1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$mupdateConnectedView(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)V

    .line 595
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$color;->headset_find_device_80:I

    .line 596
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 595
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 597
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 598
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 597
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->headset_find_connected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 600
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothIcon(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothIcon(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 603
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$color;->headset_find_device_30:I

    .line 604
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 603
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 605
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 606
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 605
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 607
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->headset_find_disconnect:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 608
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmBothIcon(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v1

    sget v4, Lcom/android/settings/R$drawable;->headset_play_bell:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$color;->headset_find_device_gray:I

    .line 610
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 609
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 613
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->val$leftConnected:Z

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftIcon(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 616
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$color;->headset_find_device_80:I

    .line 617
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 616
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 618
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 619
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 618
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 620
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->headset_find_connected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftIcon(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 624
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$color;->headset_find_device_30:I

    .line 625
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 624
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 626
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 627
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 626
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 628
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->headset_find_disconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmLeftIcon(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->headset_play_bell:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 630
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmFindDeviceView(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->view_corner_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 631
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$color;->headset_find_device_gray:I

    .line 632
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 631
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 635
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->val$rightConnected:Z

    if-eqz v0, :cond_3

    .line 636
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightPlaying(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 637
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$color;->headset_find_device_80:I

    .line 638
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 637
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 639
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 640
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 639
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 641
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->headset_find_connected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 642
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightIcon(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 645
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightIcon(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 646
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->headset_find_device_30:I

    .line 647
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 646
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 649
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 648
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 650
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->headset_find_disconnect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 651
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightIcon(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->headset_play_bell:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmFindDeviceView(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->view_corner_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 653
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$15;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->headset_find_device_gray:I

    .line 654
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 653
    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :cond_4
    :goto_2
    return-void
.end method

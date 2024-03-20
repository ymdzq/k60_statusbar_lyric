.class Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;
.super Ljava/lang/Object;
.source "MiuiHeadsetFindDeviceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->updateUIRight(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

.field final synthetic val$isStart:Z


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 865
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->val$isStart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 867
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmFindDeviceView(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->view_corner_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 868
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->val$isStart:Z

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->headset_find_device_white:I

    .line 870
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 869
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 871
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->headset_find_playing:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 872
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 873
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 872
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 874
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightIcon(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->headset_earphone_right:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 875
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->headset_find_device_blue:I

    .line 876
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 875
    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_0

    .line 878
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->headset_find_device_80:I

    .line 879
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 878
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 880
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->headset_find_connected:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 881
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightStateText(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 882
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 881
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 883
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmRightIcon(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->headset_play_bell:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 884
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->headset_find_device_gray:I

    .line 885
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 884
    invoke-virtual {v0, p0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :goto_0
    return-void
.end method

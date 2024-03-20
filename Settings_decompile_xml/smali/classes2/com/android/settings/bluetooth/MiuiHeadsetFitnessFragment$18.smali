.class Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$18;
.super Ljava/lang/Object;
.source "MiuiHeadsetFitnessFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 879
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$18;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    iget p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 880
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const-string p1, "0000"

    .line 881
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 883
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const-string p1, "0202"

    .line 884
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v1, :cond_2

    .line 886
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const-string p1, "0102"

    .line 887
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v0, :cond_3

    .line 889
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const-string p1, "0201"

    .line 890
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v1, :cond_4

    .line 892
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const-string p1, "0101"

    .line 893
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne p1, v0, :cond_5

    .line 895
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const-string p1, "0303"

    .line 896
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    if-ne p1, v1, :cond_6

    .line 898
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const-string p1, "0100"

    .line 899
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne p1, v0, :cond_7

    .line 901
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const-string p1, "0001"

    .line 902
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/16 v0, 0x9

    if-ne p1, v1, :cond_8

    .line 904
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const-string p1, "0200"

    .line 905
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/16 v1, 0xa

    if-ne p1, v0, :cond_9

    .line 907
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const-string p1, "0002"

    .line 908
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    if-ne p1, v1, :cond_a

    const/4 p1, 0x0

    .line 910
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    const-string p1, "0909"

    .line 911
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->-$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method

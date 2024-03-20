.class Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;
.super Ljava/lang/Object;
.source "MiuiHeadsetPressKeyFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->showNoiseControlList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .line 481
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmTitle(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "FF"

    const-string v1, "gesture"

    const/4 v2, 0x2

    const-string v3, "0"

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    .line 482
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmTransparent(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmClose(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 484
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iput-boolean p2, p1, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftOpenAnc:Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 488
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmOpenAnc(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 492
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iput-boolean v4, p1, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftOpenAnc:Z

    .line 495
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iget-boolean v4, p2, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTransparent:Z

    invoke-static {p2, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mbooleanToString(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iget-boolean v4, p2, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftOpenAnc:Z

    invoke-static {p2, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mbooleanToString(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iget-boolean v4, p2, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftClose:Z

    .line 496
    invoke-static {p2, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mbooleanToString(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 497
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 498
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;

    move-result-object p2

    .line 499
    invoke-static {v1, p2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 505
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p0, p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mupdateANCConfig(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 500
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iget-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftOpenAnc:Z

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightOpenAnc:Z

    .line 501
    iget-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTransparent:Z

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTransparent:Z

    .line 502
    iget-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftClose:Z

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightClose:Z

    .line 503
    invoke-static {p0, p1, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mupdateANCConfig(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 508
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmTransparent(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmClose(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 510
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iput-boolean p2, p1, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightOpenAnc:Z

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 514
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmOpenAnc(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 518
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iput-boolean v4, p1, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightOpenAnc:Z

    .line 521
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iget-boolean v4, p2, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTransparent:Z

    invoke-static {p2, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mbooleanToString(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iget-boolean v4, p2, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightOpenAnc:Z

    invoke-static {p2, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mbooleanToString(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iget-boolean v4, p2, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightClose:Z

    .line 522
    invoke-static {p2, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mbooleanToString(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 523
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 524
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;

    move-result-object p2

    .line 525
    invoke-static {v1, p2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    .line 531
    :cond_7
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p0, v0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mupdateANCConfig(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 526
    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iget-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightOpenAnc:Z

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftOpenAnc:Z

    .line 527
    iget-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightTransparent:Z

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftTransparent:Z

    .line 528
    iget-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightClose:Z

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftClose:Z

    .line 529
    invoke-static {p0, p1, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mupdateANCConfig(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 535
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OpenAnc onCheckedChanged error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiHeadsetPressKeyFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

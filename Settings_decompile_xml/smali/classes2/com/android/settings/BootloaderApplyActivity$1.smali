.class Lcom/android/settings/BootloaderApplyActivity$1;
.super Landroid/os/Handler;
.source "BootloaderApplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BootloaderApplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BootloaderApplyActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/BootloaderApplyActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 70
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p1}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmAutoNextStepTime(Lcom/android/settings/BootloaderApplyActivity;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fputmAutoNextStepTime(Lcom/android/settings/BootloaderApplyActivity;I)V

    .line 71
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p1}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmCurrentStep(Lcom/android/settings/BootloaderApplyActivity;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p1}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmAutoNextStepTime(Lcom/android/settings/BootloaderApplyActivity;)I

    move-result p1

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p1}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmAcceptButton(Lcom/android/settings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->button_text_accept:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 73
    iget-object p0, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p0}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmAcceptButton(Lcom/android/settings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p1}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmAutoNextStepTime(Lcom/android/settings/BootloaderApplyActivity;)I

    move-result p1

    if-nez p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p1}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmAcceptButton(Lcom/android/settings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->button_text_next_step:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 78
    iget-object p0, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p0}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmAcceptButton(Lcom/android/settings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p1}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmCurrentStep(Lcom/android/settings/BootloaderApplyActivity;)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 81
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p1}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmAcceptButton(Lcom/android/settings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    sget v1, Lcom/android/settings/R$string;->button_text_accept_timer:I

    invoke-static {v0}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmAutoNextStepTime(Lcom/android/settings/BootloaderApplyActivity;)I

    move-result v2

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p1}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmAcceptButton(Lcom/android/settings/BootloaderApplyActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    sget v1, Lcom/android/settings/R$string;->button_text_next_step_timer:I

    invoke-static {v0}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmAutoNextStepTime(Lcom/android/settings/BootloaderApplyActivity;)I

    move-result v2

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p1}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmHandler(Lcom/android/settings/BootloaderApplyActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    iget-object p0, p0, Lcom/android/settings/BootloaderApplyActivity$1;->this$0:Lcom/android/settings/BootloaderApplyActivity;

    invoke-static {p0}, Lcom/android/settings/BootloaderApplyActivity;->-$$Nest$fgetmHandler(Lcom/android/settings/BootloaderApplyActivity;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method

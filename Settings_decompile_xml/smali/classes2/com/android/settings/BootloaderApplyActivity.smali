.class public Lcom/android/settings/BootloaderApplyActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "BootloaderApplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAcceptButton:Landroid/widget/Button;

.field private mAppLabel:Ljava/lang/CharSequence;

.field private mAutoNextStepTime:I

.field private mCurrentStep:I

.field private mHandler:Landroid/os/Handler;

.field private mRejectButton:Landroid/widget/Button;

.field private mWarningInfoView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAcceptButton(Lcom/android/settings/BootloaderApplyActivity;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/BootloaderApplyActivity;->mAcceptButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoNextStepTime(Lcom/android/settings/BootloaderApplyActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/BootloaderApplyActivity;->mAutoNextStepTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentStep(Lcom/android/settings/BootloaderApplyActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/BootloaderApplyActivity;->mCurrentStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/BootloaderApplyActivity;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAutoNextStepTime(Lcom/android/settings/BootloaderApplyActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mAutoNextStepTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mCurrentStep:I

    const/4 v0, 0x5

    .line 46
    iput v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mAutoNextStepTime:I

    .line 68
    new-instance v0, Lcom/android/settings/BootloaderApplyActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BootloaderApplyActivity$1;-><init>(Lcom/android/settings/BootloaderApplyActivity;)V

    iput-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private acceptApply()V
    .locals 0

    const/4 p0, 0x1

    .line 149
    invoke-static {p0}, Lcom/android/settings/BootloaderApplyActivity;->setEnabled(Z)V

    return-void
.end method

.method private getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 170
    :cond_0
    sget p1, Lcom/android/settings/R$string;->bootloader_apply_step_5:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 168
    :cond_1
    sget p1, Lcom/android/settings/R$string;->bootloader_apply_step_4:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 166
    :cond_2
    sget p1, Lcom/android/settings/R$string;->bootloader_apply_step_3:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 164
    :cond_3
    sget p1, Lcom/android/settings/R$string;->bootloader_apply_step_2:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_4
    sget p1, Lcom/android/settings/R$string;->bootloader_apply_step_1:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private rejectApply()V
    .locals 0

    const/4 p0, 0x0

    .line 145
    invoke-static {p0}, Lcom/android/settings/BootloaderApplyActivity;->setEnabled(Z)V

    return-void
.end method

.method public static setEnabled(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string/jumbo v0, "persist.fastboot.enable"

    .line 182
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 155
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 109
    sget v0, Lcom/android/settings/R$id;->reject:I

    const/16 v1, 0x64

    if-ne p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/BootloaderApplyActivity;->rejectApply()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/BootloaderApplyActivity;->finish()V

    goto :goto_1

    .line 115
    :cond_0
    sget v0, Lcom/android/settings/R$id;->accept:I

    if-ne p1, v0, :cond_3

    .line 116
    iget p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mCurrentStep:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 117
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/BootloaderApplyActivity;->acceptApply()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/BootloaderApplyActivity;->finish()V

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 123
    iput p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mCurrentStep:I

    .line 124
    iput v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mAutoNextStepTime:I

    .line 126
    iget-object v2, p0, Lcom/android/settings/BootloaderApplyActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/BootloaderApplyActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v3}, Lcom/android/settings/BootloaderApplyActivity;->getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mCurrentStep:I

    if-ne p1, v0, :cond_2

    .line 129
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mAcceptButton:Landroid/widget/Button;

    sget v0, Lcom/android/settings/R$string;->button_text_accept_timer:I

    iget v2, p0, Lcom/android/settings/BootloaderApplyActivity;->mAutoNextStepTime:I

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 129
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mAcceptButton:Landroid/widget/Button;

    sget v0, Lcom/android/settings/R$string;->button_text_next_step_timer:I

    iget v2, p0, Lcom/android/settings/BootloaderApplyActivity;->mAutoNextStepTime:I

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 132
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_0
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mAcceptButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object p0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget p1, Lcom/android/settings/R$layout;->bootloader_apply:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 53
    sget p1, Lcom/android/settings/R$id;->warning_info:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mWarningInfoView:Landroid/widget/TextView;

    .line 55
    sget p1, Lcom/android/settings/R$id;->reject:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mRejectButton:Landroid/widget/Button;

    .line 56
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget p1, Lcom/android/settings/R$id;->accept:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mAcceptButton:Landroid/widget/Button;

    .line 58
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mCurrentStep:I

    iget-object v1, p0, Lcom/android/settings/BootloaderApplyActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/BootloaderApplyActivity;->getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mAcceptButton:Landroid/widget/Button;

    sget v0, Lcom/android/settings/R$string;->button_text_next_step_timer:I

    iget v1, p0, Lcom/android/settings/BootloaderApplyActivity;->mAutoNextStepTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/android/settings/BootloaderApplyActivity;->mAcceptButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 65
    iget-object p0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x64

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/settings/BootloaderApplyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

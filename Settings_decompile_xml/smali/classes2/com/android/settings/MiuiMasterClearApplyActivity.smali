.class public Lcom/android/settings/MiuiMasterClearApplyActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "MiuiMasterClearApplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static COUNT_DOWN_SAVE_KEY:Ljava/lang/String; = "COUNT_DOWN_SAVE_KEY"

.field private static CURRENT_STEP_SAVE_KEY:Ljava/lang/String; = "CURRENT_STEP_SAVE_KEY"

.field private static STEP_RES:[I


# instance fields
.field private mAcceptButton:Landroid/widget/Button;

.field private mAutoNextStepTime:I

.field private mCurrentStep:I

.field private mHandler:Landroid/os/Handler;

.field private mNextStepTime:I

.field private mRejectButton:Landroid/widget/Button;

.field private mWarningInfoView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoNextStepTime(Lcom/android/settings/MiuiMasterClearApplyActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAutoNextStepTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAutoNextStepTime(Lcom/android/settings/MiuiMasterClearApplyActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAutoNextStepTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAcceptButtonStatus(Lcom/android/settings/MiuiMasterClearApplyActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->updateAcceptButtonStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 33
    sput-object v0, Lcom/android/settings/MiuiMasterClearApplyActivity;->STEP_RES:[I

    const/4 v1, 0x1

    .line 39
    sget v2, Lcom/android/settings/R$string;->master_clear_apply_step_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 40
    sget v2, Lcom/android/settings/R$string;->master_clear_apply_step_2:I

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/android/settings/MiuiMasterClearApplyActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiMasterClearApplyActivity$1;-><init>(Lcom/android/settings/MiuiMasterClearApplyActivity;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getWarningInfo(I)Ljava/lang/CharSequence;
    .locals 1

    .line 155
    sget-object v0, Lcom/android/settings/MiuiMasterClearApplyActivity;->STEP_RES:[I

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private resetNextStepTime()V
    .locals 1

    .line 44
    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mNextStepTime:I

    iput v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAutoNextStepTime:I

    return-void
.end method

.method private updateAcceptButtonStatus()V
    .locals 4

    .line 87
    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mCurrentStep:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAutoNextStepTime:I

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAcceptButton:Landroid/widget/Button;

    sget v2, Lcom/android/settings/R$string;->button_text_ok:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 89
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 91
    :cond_0
    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAutoNextStepTime:I

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAcceptButton:Landroid/widget/Button;

    sget v2, Lcom/android/settings/R$string;->button_text_next_step:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 93
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAcceptButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mCurrentStep:I

    if-ne v0, v2, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAcceptButton:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->button_text_ok_timer:I

    iget v2, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAutoNextStepTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAcceptButton:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->button_text_next_step_timer:I

    iget v2, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAutoNextStepTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 150
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 151
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

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 120
    sget v0, Lcom/android/settings/R$id;->cancel:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne p1, v0, :cond_0

    .line 121
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->finish()V

    goto :goto_1

    .line 124
    :cond_0
    sget v0, Lcom/android/settings/R$id;->ok:I

    if-ne p1, v0, :cond_3

    .line 125
    iget p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mCurrentStep:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 126
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, -0x1

    .line 127
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->finish()V

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 130
    iput p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mCurrentStep:I

    .line 131
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->resetNextStepTime()V

    .line 132
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mCurrentStep:I

    invoke-direct {p0, v3}, Lcom/android/settings/MiuiMasterClearApplyActivity;->getWarningInfo(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mCurrentStep:I

    if-ne p1, v0, :cond_2

    .line 134
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAcceptButton:Landroid/widget/Button;

    sget v0, Lcom/android/settings/R$string;->button_text_ok_timer:I

    iget v3, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAutoNextStepTime:I

    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 134
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAcceptButton:Landroid/widget/Button;

    sget v0, Lcom/android/settings/R$string;->button_text_next_step_timer:I

    iget v3, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAutoNextStepTime:I

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 137
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_0
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 49
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "format_internal_storage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "1217"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 55
    :goto_0
    iput v1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mNextStepTime:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    .line 56
    :goto_1
    iput v2, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mCurrentStep:I

    .line 57
    sget v0, Lcom/android/settings/R$layout;->master_clear_apply:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->resetNextStepTime()V

    if-eqz p1, :cond_2

    .line 62
    sget-object v0, Lcom/android/settings/MiuiMasterClearApplyActivity;->CURRENT_STEP_SAVE_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mCurrentStep:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mCurrentStep:I

    .line 63
    sget-object v0, Lcom/android/settings/MiuiMasterClearApplyActivity;->COUNT_DOWN_SAVE_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mNextStepTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAutoNextStepTime:I

    .line 66
    :cond_2
    sget p1, Lcom/android/settings/R$id;->warning_info:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mWarningInfoView:Landroid/widget/TextView;

    .line 68
    sget p1, Lcom/android/settings/R$id;->cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mRejectButton:Landroid/widget/Button;

    .line 69
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget p1, Lcom/android/settings/R$id;->ok:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAcceptButton:Landroid/widget/Button;

    .line 71
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mCurrentStep:I

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->getWarningInfo(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->updateAcceptButtonStatus()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 113
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 114
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    sget-object v0, Lcom/android/settings/MiuiMasterClearApplyActivity;->CURRENT_STEP_SAVE_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mCurrentStep:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    sget-object v0, Lcom/android/settings/MiuiMasterClearApplyActivity;->COUNT_DOWN_SAVE_KEY:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity;->mAutoNextStepTime:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.class Lmiuix/appcompat/app/AlertController$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 4
    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 6
    const/4 v3, 0x0

    .line 8
    if-ne p1, v2, :cond_1

    .line 9
    iget-object v0, v1, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 15
    move-result-object v3

    .line 18
    :cond_0
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 22
    if-ne p1, v2, :cond_2

    .line 24
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 26
    if-eqz v1, :cond_6

    .line 28
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 30
    move-result-object v3

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 35
    if-ne p1, v2, :cond_3

    .line 37
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 39
    if-eqz v1, :cond_6

    .line 41
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 43
    move-result-object v3

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 48
    if-eqz v1, :cond_5

    .line 50
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 52
    move-result v1

    .line 55
    if-nez v1, :cond_5

    .line 56
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 58
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v1

    .line 65
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v2

    .line 69
    if-eqz v2, :cond_5

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 75
    check-cast v2, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 76
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 78
    move-result-object v4

    .line 81
    if-ne p1, v4, :cond_4

    .line 82
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$500(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/os/Message;

    .line 84
    move-result-object v1

    .line 87
    move-object v3, v1

    .line 88
    :cond_5
    instance-of v1, p1, Lmiuix/internal/widget/GroupButton;

    .line 89
    if-eqz v1, :cond_6

    .line 91
    move-object v1, p1

    .line 93
    check-cast v1, Lmiuix/internal/widget/GroupButton;

    .line 94
    iget-boolean v1, v1, Lmiuix/internal/widget/GroupButton;->mPrimary:Z

    .line 96
    if-eqz v1, :cond_6

    .line 98
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 100
    :cond_6
    :goto_0
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    .line 102
    invoke-static {p1, v1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    .line 104
    if-eqz v3, :cond_7

    .line 107
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 109
    :cond_7
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 112
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 114
    const p1, -0x626d435d

    .line 116
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    return-void
    .line 122
.end method

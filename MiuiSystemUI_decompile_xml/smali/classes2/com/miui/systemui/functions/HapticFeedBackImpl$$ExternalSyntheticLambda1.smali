.class public final synthetic Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/systemui/functions/HapticFeedBackImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/systemui/functions/HapticFeedBackImpl;IILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;->f$0:Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 5
    iput p2, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    iput p3, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    iput-object p4, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 11
    iput p5, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;->f$0:Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 2
    iget v1, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    iget v2, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    iget-object v3, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 8
    iget p0, p0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    iget-object v4, v0, Lcom/miui/systemui/functions/HapticFeedBackImpl;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 12
    if-ltz v1, :cond_0

    .line 14
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->isSupportV2HapticFeedback(I)Z

    .line 16
    move-result v5

    .line 19
    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v4, v1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    .line 22
    goto :goto_1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-ltz v2, :cond_1

    .line 28
    invoke-virtual {v0, v2}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->isSupportExtHapticFeedback(I)Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {v4, v2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    .line 36
    goto :goto_1

    .line 39
    :cond_1
    sget-boolean v1, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 40
    if-eqz v1, :cond_2

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    const/4 p0, 0x0

    .line 50
    invoke-virtual {v4, v3, p0}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 51
    goto :goto_1

    .line 54
    :cond_2
    if-lez p0, :cond_3

    .line 55
    iget-object v0, v0, Lcom/miui/systemui/functions/HapticFeedBackImpl;->mVibrator:Landroid/os/Vibrator;

    .line 57
    int-to-long v1, p0

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_1

    .line 63
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_3
    :goto_1
    return-void
    .line 67
.end method

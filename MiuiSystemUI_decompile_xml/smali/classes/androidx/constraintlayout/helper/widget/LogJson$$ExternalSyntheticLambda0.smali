.class public final synthetic Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/constraintlayout/helper/widget/LogJson;


# direct methods
.method public synthetic constructor <init>(Landroidx/constraintlayout/helper/widget/LogJson;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;->f$0:Landroidx/constraintlayout/helper/widget/LogJson;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x2

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;->f$0:Landroidx/constraintlayout/helper/widget/LogJson;

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/LogJson;->writeLog()V

    .line 11
    return-void

    .line 14
    :pswitch_1
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;->f$0:Landroidx/constraintlayout/helper/widget/LogJson;

    .line 15
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mPeriodic:Z

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/LogJson;->writeLog()V

    .line 21
    new-instance v0, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/helper/widget/LogJson;I)V

    .line 26
    iget v1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mDelay:I

    .line 29
    int-to-long v1, v1

    .line 31
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    :cond_0
    return-void

    .line 35
    :goto_0
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;->f$0:Landroidx/constraintlayout/helper/widget/LogJson;

    .line 36
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mPeriodic:Z

    .line 38
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/LogJson;->writeLog()V

    .line 42
    new-instance v0, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;

    .line 45
    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/helper/widget/LogJson$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/helper/widget/LogJson;I)V

    .line 47
    iget v1, p0, Landroidx/constraintlayout/helper/widget/LogJson;->mDelay:I

    .line 50
    int-to-long v1, v1

    .line 52
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    :cond_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 58
.end method

.class public final synthetic Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Landroidx/activity/ComponentActivity;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 12
    return-void

    .line 15
    :goto_0
    iget-object p0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 16
    check-cast p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;

    .line 18
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mRunnable:Ljava/lang/Runnable;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 24
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mRunnable:Ljava/lang/Runnable;

    .line 28
    :cond_0
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method

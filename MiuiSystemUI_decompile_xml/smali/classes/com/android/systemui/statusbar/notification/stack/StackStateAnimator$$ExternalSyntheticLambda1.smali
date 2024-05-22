.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const-string v1, "StackScroll"

    .line 4
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 11
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 15
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    sget-object v4, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 24
    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$disappearAnimationEnded$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$disappearAnimationEnded$2;

    .line 26
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 28
    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 30
    move-result-object v1

    .line 33
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 37
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    .line 44
    return-void

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;

    .line 48
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 52
    check-cast p0, Ljava/lang/Runnable;

    .line 54
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    sget-object v4, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 61
    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$disappearAnimationEnded$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$disappearAnimationEnded$2;

    .line 63
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 65
    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 67
    move-result-object v1

    .line 70
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 74
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 78
    if-eqz p0, :cond_0

    .line 81
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 83
    :cond_0
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 88
.end method

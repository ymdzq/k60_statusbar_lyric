.class public final Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$2;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$2;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$2;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 10
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 13
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 15
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 17
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 21
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 24
    check-cast p0, Lcom/miui/clock/classic/ClassicClockView;

    .line 26
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicClockView;->updateColor(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 30
    return-void

    .line 33
    :goto_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 34
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 37
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 39
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 41
    move-result p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 45
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContainer:Landroid/view/View;

    .line 48
    check-cast p0, Lcom/miui/clock/classic/ClassicClockView;

    .line 50
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicClockView;->updateColor(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 54
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 58
.end method

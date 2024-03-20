.class public final Lcom/android/keyguard/clock/animation/DoodleClockAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/DoodleClockAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/DoodleClockAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/DoodleClockAnimation;

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
    iget v0, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$1;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/DoodleClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/DoodleClockAnimation;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 10
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 13
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 15
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 17
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 21
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mContainer:Landroid/view/View;

    .line 24
    check-cast p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 26
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 30
    return-void

    .line 33
    :goto_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 34
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 37
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 39
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 41
    move-result p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 45
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mContainer:Landroid/view/View;

    .line 48
    check-cast p0, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;

    .line 50
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/DoodleClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/clock/graffiti/MiuiGraffitiClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 54
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 58
.end method

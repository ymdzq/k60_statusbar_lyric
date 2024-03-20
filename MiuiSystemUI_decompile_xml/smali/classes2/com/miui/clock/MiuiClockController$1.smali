.class public final Lcom/miui/clock/MiuiClockController$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/MiuiClockController$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/miui/clock/MiuiClockController$1;->this$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/miui/clock/MiuiClockController$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController$1;->this$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/miui/clock/MiuiClockController;

    .line 10
    iget-object v0, v0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 12
    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0}, Lcom/miui/clock/MiuiClockController$IClockView;->updateTime()V

    .line 16
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$1;->this$0:Ljava/lang/Object;

    .line 19
    check-cast p0, Lcom/miui/clock/MiuiClockController;

    .line 21
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mUpdateTimeListener:Lcom/miui/clock/MiuiClockController$TimeUpdateListener;

    .line 23
    if-eqz p0, :cond_3

    .line 25
    check-cast p0, Lcom/android/keyguard/clock/animation/AnimationHelper$1;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v1, "updateTime mToAod:"

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper$1;->this$0:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 37
    iget-boolean v1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mToAod:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, " mHasNotification: "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean v1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mHasNotification:Z

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", mClockType: "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockType:Ljava/lang/String;

    .line 59
    const-string v2, "AnimationHelper"

    .line 61
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "rhombus"

    .line 66
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockType:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 76
    iget-object v0, v0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 78
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 80
    move-result v0

    .line 83
    const/16 v1, 0xa

    .line 84
    if-ne v0, v1, :cond_0

    .line 86
    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 89
    invoke-virtual {v0}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->resetColorForTimeChanged()V

    .line 91
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mToAod:Z

    .line 94
    const/4 v1, 0x0

    .line 96
    const/4 v2, 0x1

    .line 97
    if-eqz v0, :cond_1

    .line 98
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mHasNotification:Z

    .line 100
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->doAnimationToAod(ZZZ)V

    .line 102
    goto :goto_0

    .line 105
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mHasNotification:Z

    .line 106
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/animation/AnimationHelper;->doAnimationToNotification(ZZ)V

    .line 110
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 113
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->resetSvgPropertyForTimeChanged()V

    .line 115
    :cond_3
    :goto_0
    return-void

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController$1;->this$0:Ljava/lang/Object;

    .line 119
    check-cast v0, Lcom/miui/clock/MiuiClockController$4;

    .line 121
    iget-object v0, v0, Lcom/miui/clock/MiuiClockController$4;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 123
    iget-boolean v1, v0, Lcom/miui/clock/MiuiClockController;->mHasRegisterTimeListener:Z

    .line 125
    if-nez v1, :cond_4

    .line 127
    goto :goto_2

    .line 129
    :cond_4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 130
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 137
    iput-object v1, v0, Lcom/miui/clock/MiuiClockController;->mCurrentTimezone:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController$1;->this$0:Ljava/lang/Object;

    .line 140
    check-cast v0, Lcom/miui/clock/MiuiClockController$4;

    .line 142
    iget-object v0, v0, Lcom/miui/clock/MiuiClockController$4;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 144
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockController;->updateDualClock()V

    .line 146
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$1;->this$0:Ljava/lang/Object;

    .line 149
    check-cast p0, Lcom/miui/clock/MiuiClockController$4;

    .line 151
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$4;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 153
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 155
    if-eqz v0, :cond_5

    .line 157
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mCurrentTimezone:Ljava/lang/String;

    .line 159
    invoke-interface {v0, p0}, Lcom/miui/clock/MiuiClockController$IClockView;->updateTimeZone(Ljava/lang/String;)V

    .line 161
    :cond_5
    :goto_2
    return-void

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 166
.end method

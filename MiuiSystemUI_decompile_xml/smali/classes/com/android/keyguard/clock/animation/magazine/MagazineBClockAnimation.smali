.class public final Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;
.super Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAodState:Lmiuix/animation/controller/AnimState;

.field public mDateWeekLockState:Lmiuix/animation/controller/AnimState;

.field public mDateWeekNoticeState:Lmiuix/animation/controller/AnimState;

.field public mLockState:Lmiuix/animation/controller/AnimState;

.field public mNotificationTransX:F

.field public mTimeLockState:Lmiuix/animation/controller/AnimState;

.field public mTimeNoticeState:Lmiuix/animation/controller/AnimState;


# virtual methods
.method public final doAnimationToAod(ZZ)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->doAnimationToAod(ZZ)V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->updateAnimationState()V

    .line 5
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 12
    filled-new-array {p1}, [Landroid/view/View;

    .line 14
    move-result-object p1

    .line 17
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 18
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 22
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 26
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 31
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 32
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 35
    filled-new-array {p1}, [Landroid/view/View;

    .line 37
    move-result-object p1

    .line 40
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 41
    move-result-object p1

    .line 44
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 45
    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mHideEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 49
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 51
    filled-new-array {v1, p2}, [Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 56
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 57
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullTime:Landroid/view/View;

    .line 60
    filled-new-array {p1}, [Landroid/view/View;

    .line 62
    move-result-object p1

    .line 65
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 66
    move-result-object p1

    .line 69
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 70
    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mTimeLockState:Lmiuix/animation/controller/AnimState;

    .line 74
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 76
    move-result-object p2

    .line 79
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 80
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 83
    filled-new-array {p1}, [Landroid/view/View;

    .line 85
    move-result-object p1

    .line 88
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 89
    move-result-object p1

    .line 92
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 93
    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mDateWeekLockState:Lmiuix/animation/controller/AnimState;

    .line 97
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 99
    move-result-object p2

    .line 102
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 103
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 106
    filled-new-array {p1}, [Landroid/view/View;

    .line 108
    move-result-object p1

    .line 111
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 112
    move-result-object p1

    .line 115
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 116
    move-result-object p1

    .line 119
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mDateWeekLockState:Lmiuix/animation/controller/AnimState;

    .line 120
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 122
    move-result-object p0

    .line 125
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 126
    goto/16 :goto_0

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    .line 131
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullTime:Landroid/view/View;

    .line 133
    filled-new-array {p1}, [Landroid/view/View;

    .line 135
    move-result-object p1

    .line 138
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 139
    move-result-object p1

    .line 142
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 143
    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mTimeNoticeState:Lmiuix/animation/controller/AnimState;

    .line 147
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 149
    move-result-object p2

    .line 152
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 153
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 156
    filled-new-array {p1}, [Landroid/view/View;

    .line 158
    move-result-object p1

    .line 161
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 162
    move-result-object p1

    .line 165
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 166
    move-result-object p1

    .line 169
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mDateWeekNoticeState:Lmiuix/animation/controller/AnimState;

    .line 170
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 172
    move-result-object p2

    .line 175
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 176
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 179
    filled-new-array {p1}, [Landroid/view/View;

    .line 181
    move-result-object p1

    .line 184
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 185
    move-result-object p1

    .line 188
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 189
    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mDateWeekNoticeState:Lmiuix/animation/controller/AnimState;

    .line 193
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 195
    move-result-object p2

    .line 198
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 202
    filled-new-array {p1}, [Landroid/view/View;

    .line 204
    move-result-object p1

    .line 207
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 208
    move-result-object p1

    .line 211
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 212
    move-result-object p1

    .line 215
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 216
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 218
    move-result-object p2

    .line 221
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 222
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 225
    filled-new-array {p1}, [Landroid/view/View;

    .line 227
    move-result-object p1

    .line 230
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 231
    move-result-object p1

    .line 234
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 235
    move-result-object p1

    .line 238
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    .line 239
    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 244
    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 246
    move-result-object p2

    .line 249
    const-wide/16 v0, 0x12c

    .line 250
    invoke-virtual {p2, v0, v1}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 252
    move-result-object p2

    .line 255
    filled-new-array {p2}, [Lmiuix/animation/base/AnimConfig;

    .line 256
    move-result-object p2

    .line 259
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 260
    invoke-interface {p1, p0, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 262
    :goto_0
    return-void
    .line 265
.end method

.method public final doAnimationToNotification(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->updateAnimationState()V

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 7
    filled-new-array {v0}, [Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 13
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 17
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mShowEase:Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    .line 21
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 23
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 29
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 32
    filled-new-array {v0}, [Landroid/view/View;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 38
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 42
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 46
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mTransEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 48
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 54
    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullTime:Landroid/view/View;

    .line 59
    filled-new-array {p1}, [Landroid/view/View;

    .line 61
    move-result-object p1

    .line 64
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 65
    move-result-object p1

    .line 68
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 69
    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mTimeNoticeState:Lmiuix/animation/controller/AnimState;

    .line 73
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 78
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 79
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 82
    filled-new-array {p1}, [Landroid/view/View;

    .line 84
    move-result-object p1

    .line 87
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 88
    move-result-object p1

    .line 91
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 92
    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mDateWeekNoticeState:Lmiuix/animation/controller/AnimState;

    .line 96
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 101
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 102
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 105
    filled-new-array {p1}, [Landroid/view/View;

    .line 107
    move-result-object p1

    .line 110
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 111
    move-result-object p1

    .line 114
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 115
    move-result-object p1

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mDateWeekNoticeState:Lmiuix/animation/controller/AnimState;

    .line 119
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    .line 121
    move-result-object p0

    .line 124
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 125
    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullTime:Landroid/view/View;

    .line 129
    filled-new-array {p1}, [Landroid/view/View;

    .line 131
    move-result-object p1

    .line 134
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 135
    move-result-object p1

    .line 138
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 139
    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mTimeLockState:Lmiuix/animation/controller/AnimState;

    .line 143
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 145
    move-result-object v0

    .line 148
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 149
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 152
    filled-new-array {p1}, [Landroid/view/View;

    .line 154
    move-result-object p1

    .line 157
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 158
    move-result-object p1

    .line 161
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 162
    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mDateWeekLockState:Lmiuix/animation/controller/AnimState;

    .line 166
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 168
    move-result-object v0

    .line 171
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 172
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 175
    filled-new-array {p1}, [Landroid/view/View;

    .line 177
    move-result-object p1

    .line 180
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 181
    move-result-object p1

    .line 184
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 185
    move-result-object p1

    .line 188
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mDateWeekLockState:Lmiuix/animation/controller/AnimState;

    .line 189
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    .line 191
    move-result-object p0

    .line 194
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 195
    :goto_0
    return-void
    .line 198
.end method

.method public final getClockTranslationForAod()F
    .locals 1

    .line 1
    const/high16 v0, 0x42d00000    # 104.0f

    .line 2
    iget p0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 4
    mul-float/2addr p0, v0

    .line 6
    return p0
    .line 7
.end method

.method public final initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->initView()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 10
    const v1, 0x7f070712    # @dimen/magazineB_notification_trans_x '0.0dp'

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    iput v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mNotificationTransX:F

    .line 19
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isRTL()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    iget v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mNotificationTransX:F

    .line 27
    neg-float v0, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mNotificationTransX:F

    .line 31
    :goto_0
    iput v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mNotificationTransX:F

    .line 33
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->doAnimationToNotification(Z)V

    .line 37
    return-void
    .line 40
.end method

.method public final updateAnimationState()V
    .locals 9

    .line 1
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 2
    const-string v1, "lock"

    .line 4
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 6
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 9
    const-wide/16 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 13
    move-result-object v0

    .line 16
    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 17
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 19
    invoke-virtual {v0, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 21
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mLockState:Lmiuix/animation/controller/AnimState;

    .line 25
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 27
    const-string v7, "aod"

    .line 29
    invoke-direct {v0, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 31
    const/high16 v7, 0x42d00000    # 104.0f

    .line 34
    iget v8, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mDensity:F

    .line 36
    mul-float/2addr v8, v7

    .line 38
    float-to-double v7, v8

    .line 39
    invoke-virtual {v0, v1, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {v0, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 44
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mAodState:Lmiuix/animation/controller/AnimState;

    .line 48
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 50
    const-string/jumbo v4, "timeLock"

    .line 52
    invoke-direct {v0, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 55
    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 58
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 60
    move-result-object v0

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 64
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mTimeLockState:Lmiuix/animation/controller/AnimState;

    .line 68
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 70
    const-string/jumbo v5, "timeNotice"

    .line 72
    invoke-direct {v0, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 75
    iget v5, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mNotificationTransX:F

    .line 78
    float-to-double v5, v5

    .line 80
    invoke-virtual {v0, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 81
    move-result-object v0

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 85
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mTimeNoticeState:Lmiuix/animation/controller/AnimState;

    .line 89
    const-string v0, "dateLock"

    .line 91
    invoke-static {v0, v4, v2, v3}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 93
    move-result-object v0

    .line 96
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 97
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mDateWeekLockState:Lmiuix/animation/controller/AnimState;

    .line 101
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 103
    const-string v5, "dateNotice"

    .line 105
    invoke-direct {v0, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 107
    iget v5, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mNotificationTransX:F

    .line 110
    neg-float v5, v5

    .line 112
    float-to-double v5, v5

    .line 113
    invoke-virtual {v0, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 114
    move-result-object v0

    .line 117
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 118
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mDateWeekNoticeState:Lmiuix/animation/controller/AnimState;

    .line 122
    return-void
    .line 124
.end method

.method public final updateMagazineView(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/miui/clock/module/ClockViewType;->MAGAZINE_INFO:Lcom/miui/clock/module/ClockViewType;

    .line 7
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 9
    invoke-virtual {v0, p1}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mMagazineInfo:Landroid/view/View;

    .line 15
    :goto_0
    return-void
    .line 17
.end method

.method public final updateTimeViewAlpha(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 2
    const-string v1, " updateTimeViewAlpha alpha: "

    .line 4
    const-string v2, "ClockBaseAnimation"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string/jumbo v3, "top"

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    cmpl-float v0, p1, v0

    .line 21
    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " mAodPosition[top]: "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 44
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 56
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 60
    const-string v1, "aodPosition"

    .line 62
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 64
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 67
    float-to-double v4, p1

    .line 69
    invoke-virtual {v0, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 70
    move-result-object v0

    .line 73
    sget-object v1, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 74
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mAodPosition:Ljava/util/Map;

    .line 76
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/Integer;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v2

    .line 87
    int-to-double v2, v2

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 89
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 93
    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 113
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 117
    const-string v1, "alpha"

    .line 119
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 121
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 124
    float-to-double v2, p1

    .line 126
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 127
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 133
    filled-new-array {v0}, [Landroid/view/View;

    .line 135
    move-result-object v0

    .line 138
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 139
    move-result-object v0

    .line 142
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 143
    move-result-object v0

    .line 146
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->aodPositionState:Lmiuix/animation/controller/AnimState;

    .line 147
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    move-result-object p1

    .line 152
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 153
    move-result-object p0

    .line 156
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 157
    return-void
    .line 160
.end method

.method public final updateTimeViewByConfigChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 7
    const v0, 0x7f070712    # @dimen/magazineB_notification_trans_x '0.0dp'

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result p1

    .line 14
    int-to-float p1, p1

    .line 15
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mNotificationTransX:F

    .line 16
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isRTL()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mNotificationTransX:F

    .line 24
    neg-float p1, p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mNotificationTransX:F

    .line 28
    :goto_0
    iput p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;->mNotificationTransX:F

    .line 30
    iget-boolean p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 32
    if-eqz p1, :cond_1

    .line 34
    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mContainer:Landroid/view/View;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 39
    move-result-object p1

    .line 42
    new-instance v0, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation$1;

    .line 43
    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation$1;-><init>(Lcom/android/keyguard/clock/animation/magazine/MagazineBClockAnimation;)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 48
    return-void
    .line 51
.end method

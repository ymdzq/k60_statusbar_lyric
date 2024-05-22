.class public final Lcom/miui/clock/MiuiClockController$2;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/miui/clock/MiuiClockController;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/clock/MiuiClockController;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/miui/clock/MiuiClockController$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/clock/MiuiClockController$2;->$r8$classId:I

    .line 2
    const-string v1, "MiuiClockController"

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto/16 :goto_4

    .line 11
    :pswitch_0
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 13
    iget-object p1, p1, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 17
    move-result p1

    .line 20
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 21
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mAccessibilityHighTextEnabled:Z

    .line 23
    if-eq v0, p1, :cond_1

    .line 25
    iput-boolean p1, p0, Lcom/miui/clock/MiuiClockController;->mAccessibilityHighTextEnabled:Z

    .line 27
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mMiuiClockInfoListener:Lcom/miui/clock/MiuiClockController$MiuiClockInfoListener;

    .line 29
    if-eqz v0, :cond_0

    .line 31
    check-cast v0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;

    .line 33
    iget-object v0, v0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 35
    iget-object v0, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 37
    if-eqz v0, :cond_0

    .line 39
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 41
    iput-boolean p1, v0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHighTextEnable:Z

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 45
    if-eqz p0, :cond_1

    .line 47
    invoke-interface {p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->onHighTextContrastEnabledChanged(Z)V

    .line 49
    :cond_1
    return-void

    .line 52
    :pswitch_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 53
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 56
    iget-boolean v0, p1, Lcom/miui/clock/MiuiClockController;->mHasRegisterTimeListener:Z

    .line 58
    if-nez v0, :cond_2

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 63
    move-result v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/miui/clock/MiuiClockController;->getResidentTimezone(Z)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 70
    iput-object v0, p1, Lcom/miui/clock/MiuiClockController;->mResidentTimezone:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 73
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockController;->updateDualClock()V

    .line 75
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 78
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 80
    if-eqz p1, :cond_3

    .line 82
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mResidentTimezone:Ljava/lang/String;

    .line 84
    invoke-interface {p1, p0}, Lcom/miui/clock/MiuiClockController$IClockView;->updateResidentTimeZone(Ljava/lang/String;)V

    .line 86
    :cond_3
    :goto_0
    return-void

    .line 89
    :pswitch_2
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 90
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 93
    iget-boolean v0, p1, Lcom/miui/clock/MiuiClockController;->mHasRegisterTimeListener:Z

    .line 95
    if-nez v0, :cond_4

    .line 97
    goto :goto_2

    .line 99
    :cond_4
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 100
    move-result v0

    .line 103
    invoke-virtual {p1, v0}, Lcom/miui/clock/MiuiClockController;->getAutoDualClock(Z)I

    .line 104
    move-result v0

    .line 107
    if-eqz v0, :cond_5

    .line 108
    goto :goto_1

    .line 110
    :cond_5
    move v2, v3

    .line 111
    :goto_1
    iput-boolean v2, p1, Lcom/miui/clock/MiuiClockController;->mDualClockOpen:Z

    .line 112
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 114
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->updateDualClock()V

    .line 116
    :goto_2
    return-void

    .line 119
    :pswitch_3
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 120
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockController;->isWallpaperSupportDepth()Z

    .line 122
    move-result p1

    .line 125
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 126
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->wallpaperSupportDepth:Z

    .line 128
    if-eq v0, p1, :cond_6

    .line 130
    iput-boolean p1, p0, Lcom/miui/clock/MiuiClockController;->wallpaperSupportDepth:Z

    .line 132
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 134
    if-eqz p0, :cond_6

    .line 136
    invoke-interface {p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->setWallpaperSupportDepth(Z)V

    .line 138
    :cond_6
    return-void

    .line 141
    :pswitch_4
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 142
    iget-object p1, p1, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 144
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->isBackgroundBlurEnabled(Landroid/content/Context;)I

    .line 146
    move-result p1

    .line 149
    sput p1, Lcom/miui/clock/utils/DeviceConfig;->mBackgroundBlurEnabled:I

    .line 150
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 152
    iget v1, v0, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnabled:I

    .line 154
    if-eq v1, p1, :cond_a

    .line 156
    iput p1, v0, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnabled:I

    .line 158
    iget-object v0, v0, Lcom/miui/clock/MiuiClockController;->mMiuiClockInfoListener:Lcom/miui/clock/MiuiClockController$MiuiClockInfoListener;

    .line 160
    if-eqz v0, :cond_8

    .line 162
    if-ne p1, v2, :cond_7

    .line 164
    move v3, v2

    .line 166
    :cond_7
    check-cast v0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;

    .line 167
    iget-object p1, v0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 169
    iget-object p1, p1, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 171
    if-eqz p1, :cond_8

    .line 173
    iget-object p1, p1, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 175
    invoke-virtual {p1, v3}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->setBackgroundBlurEnableChange(Z)V

    .line 177
    :cond_8
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 180
    iget-object v0, p1, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 182
    if-eqz v0, :cond_a

    .line 184
    iget p1, p1, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnabled:I

    .line 186
    if-eq p1, v2, :cond_9

    .line 188
    invoke-interface {v0}, Lcom/miui/clock/MiuiClockController$IClockView;->clearPassBlur()V

    .line 190
    :cond_9
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 193
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockController;->isWallpaperSupportDepth()Z

    .line 195
    move-result p1

    .line 198
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 199
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 201
    iget v1, p0, Lcom/miui/clock/MiuiClockController;->mChoosePaletteType:I

    .line 203
    iget-boolean v2, p0, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 205
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mPalette:Ljava/util/Map;

    .line 207
    invoke-interface {v0, v1, v2, p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->setClockPalette(IZLjava/util/Map;Z)V

    .line 209
    :cond_a
    return-void

    .line 212
    :pswitch_5
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 213
    iget-object v0, p1, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 217
    move-result-object v0

    .line 220
    const-string v4, "power_supersave_mode_open"

    .line 221
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 223
    move-result v0

    .line 226
    if-eqz v0, :cond_b

    .line 227
    goto :goto_3

    .line 229
    :cond_b
    move v2, v3

    .line 230
    :goto_3
    iput-boolean v2, p1, Lcom/miui/clock/MiuiClockController;->isSurperSaveOpen:Z

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    .line 233
    const-string v0, "isSurperSaveOpen on change "

    .line 235
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 240
    iget-boolean v0, v0, Lcom/miui/clock/MiuiClockController;->isSurperSaveOpen:Z

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object p1

    .line 250
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 254
    iget-object v0, p1, Lcom/miui/clock/MiuiClockController;->mMiuiClockInfoListener:Lcom/miui/clock/MiuiClockController$MiuiClockInfoListener;

    .line 256
    if-eqz v0, :cond_c

    .line 258
    iget-boolean p1, p1, Lcom/miui/clock/MiuiClockController;->isSurperSaveOpen:Z

    .line 260
    check-cast v0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;

    .line 262
    iget-object v0, v0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->this$0:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 264
    iget-object v0, v0, Lcom/android/keyguard/clock/KeyguardClockContainer;->mAnimationHelper:Lcom/android/keyguard/clock/animation/AnimationHelper;

    .line 266
    if-eqz v0, :cond_c

    .line 268
    iget-object v0, v0, Lcom/android/keyguard/clock/animation/AnimationHelper;->mClockAnima:Lcom/android/keyguard/clock/animation/ClockBaseAnimation;

    .line 270
    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->resetColorOnSuperSaveChange(Z)V

    .line 272
    :cond_c
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 275
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 277
    if-eqz p1, :cond_d

    .line 279
    iget-boolean p0, p0, Lcom/miui/clock/MiuiClockController;->isSurperSaveOpen:Z

    .line 281
    invoke-interface {p1, p0}, Lcom/miui/clock/MiuiClockController$IClockView;->setSuperSaveOpen(Z)V

    .line 283
    :cond_d
    return-void

    .line 286
    :goto_4
    const-string p1, "mClockInfoListener on change"

    .line 287
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController$2;->this$0:Lcom/miui/clock/MiuiClockController;

    .line 292
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 294
    move-result p1

    .line 297
    invoke-static {p0, p1, v3}, Lcom/miui/clock/MiuiClockController;->access$1800(Lcom/miui/clock/MiuiClockController;ZZ)V

    .line 298
    return-void

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 302
.end method

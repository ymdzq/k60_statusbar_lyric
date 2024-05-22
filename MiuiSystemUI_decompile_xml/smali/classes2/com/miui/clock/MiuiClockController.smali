.class public final Lcom/miui/clock/MiuiClockController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public isSurperSaveOpen:Z

.field public mAccessibilityHighTextContrastObserver:Lcom/miui/clock/MiuiClockController$2;

.field public mAccessibilityHighTextEnabled:Z

.field public mAutoDualClock:Z

.field public mAutoUpdateTime:Z

.field public mBackgroundBlurEnableObserver:Lcom/miui/clock/MiuiClockController$2;

.field public mBackgroundBlurEnabled:I

.field public mChoosePaletteType:I

.field public mClockBean:Lcom/miui/clock/module/ClockBean;

.field public mClockInfoListener:Lcom/miui/clock/MiuiClockController$2;

.field public mClockPaletteChangeListener:Lcom/miui/clock/MiuiClockController$ClockPaletteChangeListener;

.field public mClockStyle:I

.field public mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

.field public final mContainer:Landroid/view/ViewGroup;

.field public final mContext:Landroid/content/Context;

.field public mCurrentJson:Ljava/lang/String;

.field public mCurrentTimezone:Ljava/lang/String;

.field public mCurrentUserId:I

.field public final mDisplayType:I

.field public mDualClockOpen:Z

.field public mDualClockOpenObserver:Lcom/miui/clock/MiuiClockController$2;

.field public mGson:Lcom/google/gson/Gson;

.field public final mHandler:Landroid/os/Handler;

.field public mHasRegisterClockInfoListener:Z

.field public mHasRegisterTimeListener:Z

.field public mHasTopMargin:Z

.field public final mInClockBean:Lcom/miui/clock/module/ClockBean;

.field public mInfoTextDark:Z

.field public mLastClockPosition:I

.field public mMiuiClockInfoListener:Lcom/miui/clock/MiuiClockController$MiuiClockInfoListener;

.field public final mNeedRegisterClockInfoListener:Z

.field public mOwnerString:Ljava/lang/String;

.field public mPalette:Ljava/util/Map;

.field public mResidentTimezone:Ljava/lang/String;

.field public mResidentTimezoneObserver:Lcom/miui/clock/MiuiClockController$2;

.field public mScaleRatio:F

.field public mSelectedClockPosition:I

.field public mShowDualClock:Z

.field public mShowLunarCalendar:I

.field public mSurperSaveOpenObserver:Lcom/miui/clock/MiuiClockController$2;

.field public mTextDark:Z

.field public mTimezoneChangeReceiver:Lcom/miui/clock/MiuiClockController$4;

.field public mUpdateTimeListener:Lcom/miui/clock/MiuiClockController$TimeUpdateListener;

.field public mUpdateTimeReceiver:Lcom/miui/clock/MiuiClockController$4;

.field public final mUpdateTimeRunnable:Lcom/miui/clock/MiuiClockController$1;

.field public mUserAllHandle:Landroid/os/UserHandle;

.field public mUserSwitchBroadcastReceiver:Lcom/miui/clock/MiuiClockController$4;

.field public mWallpaperSupportDepthObserver:Lcom/miui/clock/MiuiClockController$2;

.field public wallpaperSupportDepth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/miui/clock/module/ClockBean;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/miui/clock/MiuiClockController;->mCurrentTimezone:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mAutoDualClock:Z

    .line 16
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->mDualClockOpen:Z

    .line 19
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 21
    iput-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mHasTopMargin:Z

    .line 23
    const/4 v2, 0x0

    .line 25
    iput-object v2, p0, Lcom/miui/clock/MiuiClockController;->mOwnerString:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/miui/clock/MiuiClockController;->mClockStyle:I

    .line 28
    iput v1, p0, Lcom/miui/clock/MiuiClockController;->mSelectedClockPosition:I

    .line 30
    iput v1, p0, Lcom/miui/clock/MiuiClockController;->mLastClockPosition:I

    .line 32
    const/4 v2, -0x1

    .line 34
    iput v2, p0, Lcom/miui/clock/MiuiClockController;->mShowLunarCalendar:I

    .line 35
    const/high16 v3, 0x3f800000    # 1.0f

    .line 37
    iput v3, p0, Lcom/miui/clock/MiuiClockController;->mScaleRatio:F

    .line 39
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 41
    iput v1, p0, Lcom/miui/clock/MiuiClockController;->mChoosePaletteType:I

    .line 43
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->mInfoTextDark:Z

    .line 45
    new-instance v3, Landroid/os/Handler;

    .line 47
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 49
    iput-object v3, p0, Lcom/miui/clock/MiuiClockController;->mHandler:Landroid/os/Handler;

    .line 52
    iput-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mAutoUpdateTime:Z

    .line 54
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->isSurperSaveOpen:Z

    .line 56
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->wallpaperSupportDepth:Z

    .line 58
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->mAccessibilityHighTextEnabled:Z

    .line 60
    iput v2, p0, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnabled:I

    .line 62
    new-instance v2, Lcom/miui/clock/MiuiClockController$1;

    .line 64
    invoke-direct {v2, v1, p0}, Lcom/miui/clock/MiuiClockController$1;-><init>(ILjava/lang/Object;)V

    .line 66
    iput-object v2, p0, Lcom/miui/clock/MiuiClockController;->mUpdateTimeRunnable:Lcom/miui/clock/MiuiClockController$1;

    .line 69
    iput-object p1, p0, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/miui/clock/MiuiClockController;->mContainer:Landroid/view/ViewGroup;

    .line 73
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 75
    move-result p2

    .line 78
    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->updateCurrentUserId()V

    .line 81
    :cond_0
    iput v1, p0, Lcom/miui/clock/MiuiClockController;->mDisplayType:I

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    const-string v3, "new MiuiClockController setClockBean = "

    .line 88
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const-string v3, ", type = 0"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 104
    const-string v3, "MiuiClockController"

    .line 105
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->initData()V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    const-string v4, "pkg name = "

    .line 115
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 123
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 130
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez p3, :cond_2

    .line 134
    iput-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mNeedRegisterClockInfoListener:Z

    .line 136
    invoke-virtual {p0, p2}, Lcom/miui/clock/MiuiClockController;->getClockInfoJson(Z)Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 141
    if-eqz p2, :cond_1

    .line 142
    iput-object p1, p0, Lcom/miui/clock/MiuiClockController;->mCurrentJson:Ljava/lang/String;

    .line 144
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiClockController;->getClockBeanFromSetting(Ljava/lang/String;)Lcom/miui/clock/module/ClockBean;

    .line 146
    move-result-object p3

    .line 149
    goto :goto_0

    .line 150
    :cond_2
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->mNeedRegisterClockInfoListener:Z

    .line 151
    :goto_0
    iput-object p3, p0, Lcom/miui/clock/MiuiClockController;->mInClockBean:Lcom/miui/clock/module/ClockBean;

    .line 153
    return-void
    .line 155
.end method

.method public static access$1800(Lcom/miui/clock/MiuiClockController;ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->initData()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiClockController;->getClockInfoJson(Z)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mCurrentJson:Ljava/lang/String;

    .line 11
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    const-string p0, "MiuiClockController"

    .line 19
    const-string p1, "last json equals current json"

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    iput-object v0, p0, Lcom/miui/clock/MiuiClockController;->mCurrentJson:Ljava/lang/String;

    .line 27
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiClockController;->getClockBeanFromSetting(Ljava/lang/String;)Lcom/miui/clock/module/ClockBean;

    .line 29
    move-result-object p1

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/clock/MiuiClockController;->setClockBean(Lcom/miui/clock/module/ClockBean;ZZ)V

    .line 34
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mMiuiClockInfoListener:Lcom/miui/clock/MiuiClockController$MiuiClockInfoListener;

    .line 37
    if-eqz p0, :cond_2

    .line 39
    check-cast p0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->onMiuiClockInfoChange(Lcom/miui/clock/module/ClockBean;)V

    .line 43
    :cond_2
    :goto_0
    return-void
    .line 46
.end method


# virtual methods
.method public final addClockView(Lcom/miui/clock/module/ClockBean;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 8
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    const-string v2, "magazine_c_date_only"

    .line 17
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v1

    .line 28
    :goto_0
    if-nez v0, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getDualClockLocalCity()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    new-instance v0, Lcom/miui/clock/module/ClockBean;

    .line 35
    const-string v2, "dual"

    .line 37
    invoke-direct {v0, v2}, Lcom/miui/clock/module/ClockBean;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p1}, Lcom/miui/clock/module/ClockBean;->setDualClockLocalCity(Ljava/lang/String;)V

    .line 42
    move-object p1, v0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 46
    check-cast v0, Landroid/view/View;

    .line 48
    iget-object v2, p0, Lcom/miui/clock/MiuiClockController;->mContainer:Landroid/view/ViewGroup;

    .line 50
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 52
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 58
    const-string v3, "old"

    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 64
    const/4 v3, 0x1

    .line 65
    iget-object v4, p0, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 66
    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->getClockPosition()I

    .line 70
    move-result p1

    .line 73
    if-eq p1, v3, :cond_8

    .line 74
    const/4 v0, 0x2

    .line 76
    if-eq p1, v0, :cond_7

    .line 77
    const/4 v0, 0x3

    .line 79
    if-eq p1, v0, :cond_6

    .line 80
    const/4 v0, 0x4

    .line 82
    if-eq p1, v0, :cond_5

    .line 83
    const/16 v0, 0x65

    .line 85
    if-eq p1, v0, :cond_4

    .line 87
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    move-result-object p1

    .line 92
    const-string v0, "com.android.systemui"

    .line 93
    const/16 v5, 0x80

    .line 95
    invoke-virtual {p1, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 97
    move-result-object p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 103
    if-eqz p1, :cond_3

    .line 105
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 107
    if-eqz p1, :cond_3

    .line 109
    const-string v0, "miui.systemui_base_version"

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 113
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_1

    .line 117
    :catch_0
    move-exception p1

    .line 118
    const-string v0, "MiuiClockController"

    .line 119
    const-string v5, "Context.getPackageManager().getPackageInfo not found"

    .line 121
    invoke-static {v0, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :cond_3
    move p1, v1

    .line 126
    :goto_1
    const/16 v0, 0xb

    .line 127
    if-ge p1, v0, :cond_5

    .line 129
    goto :goto_2

    .line 131
    :cond_4
    const p1, 0x7f0d01ab    # @layout/miui_dual_clock 'res/layout/miui_dual_clock.xml'

    .line 132
    goto :goto_3

    .line 135
    :cond_5
    const p1, 0x7f0d01be    # @layout/miui_left_top_large_clock 'res/layout/miui_left_top_large_clock.xml'

    .line 136
    goto :goto_3

    .line 139
    :cond_6
    const p1, 0x7f0d01d9    # @layout/miui_vertical_clock 'res/layout/miui_vertical_clock.xml'

    .line 140
    goto :goto_3

    .line 143
    :cond_7
    const p1, 0x7f0d01bd    # @layout/miui_left_top_clock 'res/layout/miui_left_top_clock.xml'

    .line 144
    goto :goto_3

    .line 147
    :cond_8
    :goto_2
    const p1, 0x7f0d0191    # @layout/miui_center_horizontal_clock 'res/layout/miui_center_horizontal_clock.xml'

    .line 148
    :goto_3
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 151
    move-result-object v0

    .line 154
    invoke-virtual {v0, p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 155
    move-result-object p1

    .line 158
    const/4 v0, 0x0

    .line 159
    goto :goto_4

    .line 160
    :cond_9
    iget v0, p0, Lcom/miui/clock/MiuiClockController;->mDisplayType:I

    .line 161
    invoke-static {v4, p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->convertInfoFromClockBean(Landroid/content/Context;Lcom/miui/clock/module/ClockBean;I)Lcom/miui/clock/module/ClockStyleInfo;

    .line 163
    move-result-object v0

    .line 166
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 167
    move-result-object p1

    .line 170
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getLayoutId()I

    .line 171
    move-result v5

    .line 174
    invoke-virtual {p1, v5, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 175
    move-result-object p1

    .line 178
    :goto_4
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    check-cast p1, Lcom/miui/clock/MiuiClockController$IClockView;

    .line 182
    iput-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 184
    if-eqz p1, :cond_e

    .line 186
    iget v2, p0, Lcom/miui/clock/MiuiClockController;->mCurrentUserId:I

    .line 188
    invoke-interface {p1, v2}, Lcom/miui/clock/MiuiClockController$IClockView;->setCurrentUserId(I)V

    .line 190
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 193
    invoke-interface {p1}, Lcom/miui/clock/MiuiClockController$IClockView;->ignoreAccessibilityScale()V

    .line 195
    if-eqz v0, :cond_a

    .line 198
    iget-boolean p1, p0, Lcom/miui/clock/MiuiClockController;->isSurperSaveOpen:Z

    .line 200
    iput-boolean p1, v0, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 202
    :cond_a
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 204
    invoke-interface {p1, v0}, Lcom/miui/clock/MiuiClockController$IClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 206
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->isWallpaperSupportDepth()Z

    .line 209
    move-result p1

    .line 212
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 213
    iget v2, p0, Lcom/miui/clock/MiuiClockController;->mChoosePaletteType:I

    .line 215
    iget-boolean v5, p0, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 217
    iget-object v6, p0, Lcom/miui/clock/MiuiClockController;->mPalette:Ljava/util/Map;

    .line 219
    invoke-interface {v0, v2, v5, v6, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->setClockPalette(IZLjava/util/Map;Z)V

    .line 221
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 224
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mInfoTextDark:Z

    .line 226
    invoke-interface {p1, v0}, Lcom/miui/clock/MiuiClockController$IClockView;->setInfoTextColorDark(Z)V

    .line 228
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 231
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mResidentTimezone:Ljava/lang/String;

    .line 233
    invoke-interface {p1, v0}, Lcom/miui/clock/MiuiClockController$IClockView;->updateResidentTimeZone(Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 238
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mCurrentTimezone:Ljava/lang/String;

    .line 240
    invoke-interface {p1, v0}, Lcom/miui/clock/MiuiClockController$IClockView;->updateTimeZone(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 245
    iget v0, p0, Lcom/miui/clock/MiuiClockController;->mShowLunarCalendar:I

    .line 247
    const/4 v2, -0x1

    .line 249
    if-eq v0, v2, :cond_b

    .line 250
    if-eq v0, v3, :cond_c

    .line 252
    goto :goto_5

    .line 254
    :cond_b
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 255
    move-result-object v0

    .line 258
    const-string/jumbo v2, "show_lunar_calendar"

    .line 259
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 262
    move-result v0

    .line 265
    if-ne v0, v3, :cond_d

    .line 266
    :cond_c
    move v1, v3

    .line 268
    :cond_d
    :goto_5
    invoke-interface {p1, v1}, Lcom/miui/clock/MiuiClockController$IClockView;->setShowLunarCalendar(Z)V

    .line 269
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 272
    iget v0, p0, Lcom/miui/clock/MiuiClockController;->mScaleRatio:F

    .line 274
    invoke-interface {p1, v0}, Lcom/miui/clock/MiuiClockController$IClockView;->setScaleRatio(F)V

    .line 276
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 279
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 281
    invoke-interface {p1, v0}, Lcom/miui/clock/MiuiClockController$IClockView;->setTextColorDark(Z)V

    .line 283
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 286
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mHasTopMargin:Z

    .line 288
    invoke-interface {p1, v0}, Lcom/miui/clock/MiuiClockController$IClockView;->updateViewTopMargin(Z)V

    .line 290
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 293
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mOwnerString:Ljava/lang/String;

    .line 295
    invoke-interface {p1, v0}, Lcom/miui/clock/MiuiClockController$IClockView;->setOwnerInfo(Ljava/lang/String;)V

    .line 297
    :cond_e
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mMiuiClockInfoListener:Lcom/miui/clock/MiuiClockController$MiuiClockInfoListener;

    .line 300
    if-eqz p1, :cond_f

    .line 302
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 304
    check-cast p1, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;

    .line 306
    invoke-virtual {p1, p0}, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->onClockBeanChange(Lcom/miui/clock/module/ClockBean;)V

    .line 308
    :cond_f
    return-void
    .line 311
.end method

.method public final getAutoDualClock(Z)I
    .locals 10

    .line 1
    const-string v0, "auto_dual_clock"

    .line 2
    iget-object v1, p0, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    const-class p1, Landroid/provider/Settings$System;

    .line 9
    const-string v3, "getIntForUser"

    .line 11
    const/4 v4, 0x4

    .line 13
    new-array v5, v4, [Ljava/lang/Class;

    .line 14
    const-class v6, Landroid/content/ContentResolver;

    .line 16
    aput-object v6, v5, v2

    .line 18
    const-class v6, Ljava/lang/String;

    .line 20
    const/4 v7, 0x1

    .line 22
    aput-object v6, v5, v7

    .line 23
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    const/4 v8, 0x2

    .line 27
    aput-object v6, v5, v8

    .line 28
    const/4 v9, 0x3

    .line 30
    aput-object v6, v5, v9

    .line 31
    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    move-result-object p1

    .line 36
    new-array v3, v4, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    move-result-object v1

    .line 42
    aput-object v1, v3, v2

    .line 43
    aput-object v0, v3, v7

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 50
    aput-object v0, v3, v8

    .line 51
    iget p0, p0, Lcom/miui/clock/MiuiClockController;->mCurrentUserId:I

    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p0

    .line 58
    aput-object p0, v3, v9

    .line 59
    const/4 p0, 0x0

    .line 61
    invoke-virtual {p1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/Integer;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 68
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    const-string p1, "MiuiClockController"

    .line 74
    const-string v0, "getIntForUser fail"

    .line 76
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :goto_0
    return v2

    .line 81
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 82
    move-result-object p0

    .line 85
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 86
    move-result p0

    .line 89
    return p0
    .line 90
.end method

.method public final getClockBeanFromSetting(Ljava/lang/String;)Lcom/miui/clock/module/ClockBean;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string p1, "clockInfo"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mGson:Lcom/google/gson/Gson;

    .line 13
    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/google/gson/Gson;

    .line 17
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/miui/clock/MiuiClockController;->mGson:Lcom/google/gson/Gson;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mGson:Lcom/google/gson/Gson;

    .line 24
    const-class v1, Lcom/miui/clock/module/ClockBean;

    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 31
    check-cast p1, Lcom/miui/clock/module/ClockBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const-string v0, "getClockBeanFromSetting fail, msg = "

    .line 36
    const-string v1, "MiuiClockController"

    .line 38
    invoke-static {v0, p1, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {p0}, Lcom/miui/clock/module/ClockBean;->getClassicDefaultBean(Landroid/content/Context;)Lcom/miui/clock/module/ClockBean;

    .line 45
    move-result-object p1

    .line 48
    :goto_0
    return-object p1
    .line 49
.end method

.method public final getClockInfoJson(Z)Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "MiuiClockController"

    .line 2
    const-string v1, "getStringForUser, mCurrentUserId = "

    .line 4
    const-string v2, "constant_lockscreen_info"

    .line 6
    iget-object v3, p0, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const-string p1, ""

    .line 12
    :try_start_0
    const-class v4, Landroid/provider/Settings$Secure;

    .line 14
    const-string v5, "getStringForUser"

    .line 16
    const/4 v6, 0x3

    .line 18
    new-array v7, v6, [Ljava/lang/Class;

    .line 19
    const-class v8, Landroid/content/ContentResolver;

    .line 21
    const/4 v9, 0x0

    .line 23
    aput-object v8, v7, v9

    .line 24
    const-class v8, Ljava/lang/String;

    .line 26
    const/4 v10, 0x1

    .line 28
    aput-object v8, v7, v10

    .line 29
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    const/4 v11, 0x2

    .line 33
    aput-object v8, v7, v11

    .line 34
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v4

    .line 39
    new-array v5, v6, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    move-result-object v3

    .line 45
    aput-object v3, v5, v9

    .line 46
    aput-object v2, v5, v10

    .line 48
    iget v2, p0, Lcom/miui/clock/MiuiClockController;->mCurrentUserId:I

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v2

    .line 55
    aput-object v2, v5, v11

    .line 56
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget p0, p0, Lcom/miui/clock/MiuiClockController;->mCurrentUserId:I

    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string p0, ", json = "

    .line 75
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    goto :goto_1

    .line 90
    :catch_0
    move-exception p0

    .line 91
    move-object p1, v2

    .line 92
    goto :goto_0

    .line 93
    :catch_1
    move-exception p0

    .line 94
    :goto_0
    const-string v1, "getStringForUser fail"

    .line 95
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    move-object v2, p1

    .line 100
    :goto_1
    return-object v2

    .line 101
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    move-result-object p0

    .line 105
    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 109
    return-object p0
.end method

.method public final getClockPosition()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/16 p0, 0x65

    .line 6
    return p0

    .line 8
    :cond_0
    iget v0, p0, Lcom/miui/clock/MiuiClockController;->mClockStyle:I

    .line 9
    if-eqz v0, :cond_1

    .line 11
    return v0

    .line 13
    :cond_1
    iget p0, p0, Lcom/miui/clock/MiuiClockController;->mSelectedClockPosition:I

    .line 14
    if-eqz p0, :cond_2

    .line 16
    return p0

    .line 18
    :cond_2
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 19
    const-string v0, "davinci"

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_4

    .line 27
    const-string v0, "davinciin"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-nez v0, :cond_4

    .line 35
    const-string v0, "raphael"

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 42
    if-nez v0, :cond_4

    .line 43
    const-string v0, "raphaelin"

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 50
    if-nez v0, :cond_4

    .line 51
    const-string v0, "chiron"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 58
    if-nez v0, :cond_4

    .line 59
    const-string v0, "polaris"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p0

    .line 66
    if-eqz p0, :cond_3

    .line 67
    goto :goto_0

    .line 69
    :cond_3
    const/4 p0, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 72
    :goto_1
    return p0
    .line 73
.end method

.method public final getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 2
    invoke-interface {p0}, Lcom/miui/clock/MiuiClockController$IClockView;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/miui/clock/MiuiClockController$IClockView;->getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V

    .line 4
    return-void
    .line 7
.end method

.method public final getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 2
    invoke-interface {p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 2
    invoke-interface {p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getMagazinePositionY(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 2
    invoke-interface {p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->getMagazinePositionY(Z)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getResidentTimezone(Z)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "resident_timezone"

    .line 2
    iget-object v1, p0, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    const-class p1, Landroid/provider/Settings$System;

    .line 8
    const-string v2, "getStringForUser"

    .line 10
    const/4 v3, 0x3

    .line 12
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    const-class v5, Landroid/content/ContentResolver;

    .line 15
    const/4 v6, 0x0

    .line 17
    aput-object v5, v4, v6

    .line 18
    const-class v5, Ljava/lang/String;

    .line 20
    const/4 v7, 0x1

    .line 22
    aput-object v5, v4, v7

    .line 23
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    const/4 v8, 0x2

    .line 27
    aput-object v5, v4, v8

    .line 28
    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object p1

    .line 33
    new-array v2, v3, [Ljava/lang/Object;

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    move-result-object v1

    .line 39
    aput-object v1, v2, v6

    .line 40
    aput-object v0, v2, v7

    .line 42
    iget p0, p0, Lcom/miui/clock/MiuiClockController;->mCurrentUserId:I

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p0

    .line 49
    aput-object p0, v2, v8

    .line 50
    const/4 p0, 0x0

    .line 52
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const-string p1, "MiuiClockController"

    .line 61
    const-string v0, "getIntForUser fail"

    .line 63
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    const-string p0, ""

    .line 68
    :goto_0
    return-object p0

    .line 70
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    move-result-object p0

    .line 74
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 78
    return-object p0
    .line 79
.end method

.method public final initData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v1

    .line 7
    const-string/jumbo v2, "selected_keyguard_clock_position"

    .line 8
    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    move-result v1

    .line 15
    iput v1, p0, Lcom/miui/clock/MiuiClockController;->mSelectedClockPosition:I

    .line 16
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 18
    move-result v1

    .line 21
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiClockController;->getAutoDualClock(Z)I

    .line 22
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    move v1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v1, v3

    .line 31
    :goto_0
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->mDualClockOpen:Z

    .line 32
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 34
    move-result v1

    .line 37
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiClockController;->getResidentTimezone(Z)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/miui/clock/MiuiClockController;->mResidentTimezone:Ljava/lang/String;

    .line 42
    iget-boolean v4, p0, Lcom/miui/clock/MiuiClockController;->mDualClockOpen:Z

    .line 44
    if-eqz v4, :cond_1

    .line 46
    if-eqz v1, :cond_1

    .line 48
    iget-object v4, p0, Lcom/miui/clock/MiuiClockController;->mCurrentTimezone:Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    move v1, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v1, v3

    .line 60
    :goto_1
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    move-result-object v1

    .line 66
    const-string v4, "power_supersave_mode_open"

    .line 67
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 69
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    move v3, v2

    .line 75
    :cond_2
    iput-boolean v3, p0, Lcom/miui/clock/MiuiClockController;->isSurperSaveOpen:Z

    .line 76
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->isWallpaperSupportDepth()Z

    .line 78
    move-result v1

    .line 81
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->wallpaperSupportDepth:Z

    .line 82
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 84
    move-result v1

    .line 87
    iput-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->mAccessibilityHighTextEnabled:Z

    .line 88
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->isBackgroundBlurEnabled(Landroid/content/Context;)I

    .line 90
    move-result v0

    .line 93
    iput v0, p0, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnabled:I

    .line 94
    sput v0, Lcom/miui/clock/utils/DeviceConfig;->mBackgroundBlurEnabled:I

    .line 96
    return-void
    .line 98
.end method

.method public final isCrossUser()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "com.android.systemui"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    const-string v0, "com.miui.aod"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    :goto_1
    return p0
.end method

.method public final isWallpaperSupportDepth()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "MiuiClockController"

    .line 8
    const-string/jumbo v4, "wallpaper_matting_support_2"

    .line 10
    iget-object v5, p0, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    :try_start_0
    const-class v0, Landroid/provider/Settings$Secure;

    .line 17
    const-string v6, "getIntForUser"

    .line 19
    const/4 v7, 0x4

    .line 21
    new-array v8, v7, [Ljava/lang/Class;

    .line 22
    const-class v9, Landroid/content/ContentResolver;

    .line 24
    aput-object v9, v8, v2

    .line 26
    const-class v9, Ljava/lang/String;

    .line 28
    aput-object v9, v8, v1

    .line 30
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 32
    const/4 v10, 0x2

    .line 34
    aput-object v9, v8, v10

    .line 35
    const/4 v11, 0x3

    .line 37
    aput-object v9, v8, v11

    .line 38
    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    move-result-object v0

    .line 43
    new-array v6, v7, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    move-result-object v5

    .line 49
    aput-object v5, v6, v2

    .line 50
    aput-object v4, v6, v1

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v4

    .line 57
    aput-object v4, v6, v10

    .line 58
    iget p0, p0, Lcom/miui/clock/MiuiClockController;->mCurrentUserId:I

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p0

    .line 65
    aput-object p0, v6, v11

    .line 66
    const/4 p0, 0x0

    .line 68
    invoke-virtual {v0, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 72
    check-cast p0, Ljava/lang/Integer;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    if-ne p0, v1, :cond_1

    .line 79
    goto :goto_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    const-string v0, "getIntForUser fail"

    .line 83
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    move-result-object p0

    .line 92
    invoke-static {p0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 93
    move-result p0

    .line 96
    if-ne p0, v1, :cond_1

    .line 97
    goto :goto_0

    .line 99
    :cond_1
    move v1, v2

    .line 100
    :goto_0
    move v2, v1

    .line 101
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 102
    const-string v0, "isWallpaperSupportDepth on change "

    .line 104
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 115
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v2
    .line 119
.end method

.method public final onAttachedToWindow()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    iget v0, v1, Lcom/miui/clock/MiuiClockController;->mDisplayType:I

    .line 4
    const/16 v2, 0x8

    .line 6
    and-int/2addr v0, v2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    move v0, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v4

    .line 15
    :goto_0
    if-nez v0, :cond_14

    .line 16
    iget-boolean v0, v1, Lcom/miui/clock/MiuiClockController;->mHasRegisterTimeListener:Z

    .line 18
    const/4 v2, 0x0

    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x3

    .line 22
    const-string v7, "USER_ALL"

    .line 23
    const/4 v8, 0x4

    .line 25
    const-string v9, "registerContentObserverAsUser"

    .line 26
    const-string v10, "register content observer as user fail"

    .line 28
    const-string v11, "constructor user handler fail"

    .line 30
    const-string v12, "MiuiClockController"

    .line 32
    iget-object v13, v1, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 34
    if-eqz v0, :cond_1

    .line 36
    const-string v0, "registerTimeListener, has register return"

    .line 38
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    goto/16 :goto_4

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    const-string v14, "registerTimeListener, this = "

    .line 47
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 58
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-boolean v3, v1, Lcom/miui/clock/MiuiClockController;->mHasRegisterTimeListener:Z

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    .line 64
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    const-string v14, "android.intent.action.TIMEZONE_CHANGED"

    .line 69
    invoke-virtual {v0, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v14, v1, Lcom/miui/clock/MiuiClockController;->mTimezoneChangeReceiver:Lcom/miui/clock/MiuiClockController$4;

    .line 74
    if-nez v14, :cond_2

    .line 76
    new-instance v14, Lcom/miui/clock/MiuiClockController$4;

    .line 78
    invoke-direct {v14, v1, v4}, Lcom/miui/clock/MiuiClockController$4;-><init>(Lcom/miui/clock/MiuiClockController;I)V

    .line 80
    iput-object v14, v1, Lcom/miui/clock/MiuiClockController;->mTimezoneChangeReceiver:Lcom/miui/clock/MiuiClockController$4;

    .line 83
    :cond_2
    iget-object v14, v1, Lcom/miui/clock/MiuiClockController;->mTimezoneChangeReceiver:Lcom/miui/clock/MiuiClockController$4;

    .line 85
    invoke-virtual {v13, v14, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    iget-boolean v0, v1, Lcom/miui/clock/MiuiClockController;->mAutoUpdateTime:Z

    .line 90
    if-eqz v0, :cond_4

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    .line 94
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    const-string v14, "android.intent.action.TIME_TICK"

    .line 99
    invoke-virtual {v0, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v14, "android.intent.action.TIME_SET"

    .line 104
    invoke-virtual {v0, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v14, "---registerReceiver---"

    .line 109
    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v14, v1, Lcom/miui/clock/MiuiClockController;->mUpdateTimeReceiver:Lcom/miui/clock/MiuiClockController$4;

    .line 114
    if-nez v14, :cond_3

    .line 116
    new-instance v14, Lcom/miui/clock/MiuiClockController$4;

    .line 118
    invoke-direct {v14, v1, v5}, Lcom/miui/clock/MiuiClockController$4;-><init>(Lcom/miui/clock/MiuiClockController;I)V

    .line 120
    iput-object v14, v1, Lcom/miui/clock/MiuiClockController;->mUpdateTimeReceiver:Lcom/miui/clock/MiuiClockController$4;

    .line 123
    :cond_3
    iget-object v14, v1, Lcom/miui/clock/MiuiClockController;->mUpdateTimeReceiver:Lcom/miui/clock/MiuiClockController$4;

    .line 125
    invoke-virtual {v13, v14, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockController;->updateCurrentUserId()V

    .line 130
    const-class v0, Landroid/os/UserHandle;

    .line 133
    :try_start_0
    new-array v14, v3, [Ljava/lang/Class;

    .line 135
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 137
    aput-object v15, v14, v4

    .line 139
    invoke-virtual {v0, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 141
    move-result-object v14

    .line 144
    new-array v15, v3, [Ljava/lang/Object;

    .line 145
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 147
    move-result-object v0

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v0

    .line 154
    aput-object v0, v15, v4

    .line 155
    invoke-virtual {v14, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-result-object v0

    .line 160
    check-cast v0, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    move-object v14, v0

    .line 163
    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-static {v12, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    move-object v14, v2

    .line 169
    :goto_1
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 170
    move-result-object v15

    .line 173
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mDualClockOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 174
    if-nez v0, :cond_5

    .line 176
    new-instance v0, Lcom/miui/clock/MiuiClockController$2;

    .line 178
    new-instance v2, Landroid/os/Handler;

    .line 180
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 182
    invoke-direct {v0, v1, v2, v6}, Lcom/miui/clock/MiuiClockController$2;-><init>(Lcom/miui/clock/MiuiClockController;Landroid/os/Handler;I)V

    .line 185
    iput-object v0, v1, Lcom/miui/clock/MiuiClockController;->mDualClockOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 188
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 190
    move-result v0

    .line 193
    const-string v2, "auto_dual_clock"

    .line 194
    if-eqz v0, :cond_6

    .line 196
    if-eqz v14, :cond_6

    .line 198
    :try_start_1
    const-class v0, Landroid/content/ContentResolver;

    .line 200
    new-array v6, v8, [Ljava/lang/Class;

    .line 202
    const-class v17, Landroid/net/Uri;

    .line 204
    aput-object v17, v6, v4

    .line 206
    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 208
    aput-object v17, v6, v3

    .line 210
    const-class v17, Landroid/database/ContentObserver;

    .line 212
    aput-object v17, v6, v5

    .line 214
    const-class v17, Landroid/os/UserHandle;

    .line 216
    const/16 v16, 0x3

    .line 218
    aput-object v17, v6, v16

    .line 220
    invoke-virtual {v0, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 222
    move-result-object v0

    .line 225
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 226
    move-result-object v6

    .line 229
    new-array v5, v8, [Ljava/lang/Object;

    .line 230
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 232
    move-result-object v2

    .line 235
    aput-object v2, v5, v4

    .line 236
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 238
    aput-object v2, v5, v3

    .line 240
    iget-object v2, v1, Lcom/miui/clock/MiuiClockController;->mDualClockOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 242
    const/16 v17, 0x2

    .line 244
    aput-object v2, v5, v17

    .line 246
    const/4 v2, 0x3

    .line 248
    aput-object v14, v5, v2

    .line 249
    invoke-virtual {v0, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    goto :goto_2

    .line 254
    :catch_1
    move-exception v0

    .line 255
    invoke-static {v12, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    goto :goto_2

    .line 259
    :cond_6
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 260
    move-result-object v0

    .line 263
    iget-object v2, v1, Lcom/miui/clock/MiuiClockController;->mDualClockOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 264
    invoke-virtual {v15, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    :goto_2
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mDualClockOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 269
    invoke-virtual {v0, v4}, Lcom/miui/clock/MiuiClockController$2;->onChange(Z)V

    .line 271
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mResidentTimezoneObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 274
    if-nez v0, :cond_7

    .line 276
    new-instance v0, Lcom/miui/clock/MiuiClockController$2;

    .line 278
    new-instance v2, Landroid/os/Handler;

    .line 280
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 282
    invoke-direct {v0, v1, v2, v8}, Lcom/miui/clock/MiuiClockController$2;-><init>(Lcom/miui/clock/MiuiClockController;Landroid/os/Handler;I)V

    .line 285
    iput-object v0, v1, Lcom/miui/clock/MiuiClockController;->mResidentTimezoneObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 288
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 290
    move-result v0

    .line 293
    const-string v2, "resident_timezone"

    .line 294
    if-eqz v0, :cond_8

    .line 296
    if-eqz v14, :cond_8

    .line 298
    :try_start_2
    const-class v0, Landroid/content/ContentResolver;

    .line 300
    new-array v5, v8, [Ljava/lang/Class;

    .line 302
    const-class v6, Landroid/net/Uri;

    .line 304
    aput-object v6, v5, v4

    .line 306
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 308
    aput-object v6, v5, v3

    .line 310
    const-class v6, Landroid/database/ContentObserver;

    .line 312
    const/4 v15, 0x2

    .line 314
    aput-object v6, v5, v15

    .line 315
    const-class v6, Landroid/os/UserHandle;

    .line 317
    const/4 v15, 0x3

    .line 319
    aput-object v6, v5, v15

    .line 320
    invoke-virtual {v0, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 322
    move-result-object v0

    .line 325
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 326
    move-result-object v5

    .line 329
    new-array v6, v8, [Ljava/lang/Object;

    .line 330
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 332
    move-result-object v2

    .line 335
    aput-object v2, v6, v4

    .line 336
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 338
    aput-object v2, v6, v3

    .line 340
    iget-object v2, v1, Lcom/miui/clock/MiuiClockController;->mResidentTimezoneObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 342
    const/4 v15, 0x2

    .line 344
    aput-object v2, v6, v15

    .line 345
    const/4 v2, 0x3

    .line 347
    aput-object v14, v6, v2

    .line 348
    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 350
    goto :goto_3

    .line 353
    :catch_2
    move-exception v0

    .line 354
    invoke-static {v12, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    goto :goto_3

    .line 358
    :cond_8
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 359
    move-result-object v0

    .line 362
    iget-object v2, v1, Lcom/miui/clock/MiuiClockController;->mResidentTimezoneObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 363
    invoke-virtual {v15, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 365
    :goto_3
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mResidentTimezoneObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 368
    invoke-virtual {v0, v4}, Lcom/miui/clock/MiuiClockController$2;->onChange(Z)V

    .line 370
    :goto_4
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mSurperSaveOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 373
    if-nez v0, :cond_9

    .line 375
    new-instance v0, Lcom/miui/clock/MiuiClockController$2;

    .line 377
    new-instance v2, Landroid/os/Handler;

    .line 379
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 381
    invoke-direct {v0, v1, v2, v4}, Lcom/miui/clock/MiuiClockController$2;-><init>(Lcom/miui/clock/MiuiClockController;Landroid/os/Handler;I)V

    .line 384
    iput-object v0, v1, Lcom/miui/clock/MiuiClockController;->mSurperSaveOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 387
    :cond_9
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 389
    move-result-object v0

    .line 392
    const-string v2, "power_supersave_mode_open"

    .line 393
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 395
    move-result-object v2

    .line 398
    iget-object v5, v1, Lcom/miui/clock/MiuiClockController;->mSurperSaveOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 399
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 401
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mSurperSaveOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 404
    invoke-virtual {v0, v4}, Lcom/miui/clock/MiuiClockController$2;->onChange(Z)V

    .line 406
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mWallpaperSupportDepthObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 409
    if-nez v0, :cond_a

    .line 411
    new-instance v0, Lcom/miui/clock/MiuiClockController$2;

    .line 413
    new-instance v2, Landroid/os/Handler;

    .line 415
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 417
    const/4 v5, 0x2

    .line 420
    invoke-direct {v0, v1, v2, v5}, Lcom/miui/clock/MiuiClockController$2;-><init>(Lcom/miui/clock/MiuiClockController;Landroid/os/Handler;I)V

    .line 421
    iput-object v0, v1, Lcom/miui/clock/MiuiClockController;->mWallpaperSupportDepthObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 424
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockController;->updateCurrentUserId()V

    .line 426
    const-class v0, Landroid/os/UserHandle;

    .line 429
    :try_start_3
    new-array v2, v3, [Ljava/lang/Class;

    .line 431
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 433
    aput-object v5, v2, v4

    .line 435
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 437
    move-result-object v2

    .line 440
    new-array v5, v3, [Ljava/lang/Object;

    .line 441
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 443
    move-result-object v0

    .line 446
    const/4 v6, 0x0

    .line 447
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    move-result-object v0

    .line 451
    aput-object v0, v5, v4

    .line 452
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    move-result-object v0

    .line 457
    check-cast v0, Landroid/os/UserHandle;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 458
    goto :goto_5

    .line 460
    :catch_3
    move-exception v0

    .line 461
    invoke-static {v12, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    const/4 v0, 0x0

    .line 465
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 466
    move-result v2

    .line 469
    const-string/jumbo v5, "wallpaper_matting_support_2"

    .line 470
    if-eqz v2, :cond_b

    .line 473
    if-eqz v0, :cond_b

    .line 475
    :try_start_4
    const-class v2, Landroid/content/ContentResolver;

    .line 477
    new-array v6, v8, [Ljava/lang/Class;

    .line 479
    const-class v14, Landroid/net/Uri;

    .line 481
    aput-object v14, v6, v4

    .line 483
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 485
    aput-object v14, v6, v3

    .line 487
    const-class v14, Landroid/database/ContentObserver;

    .line 489
    const/4 v15, 0x2

    .line 491
    aput-object v14, v6, v15

    .line 492
    const-class v14, Landroid/os/UserHandle;

    .line 494
    const/4 v15, 0x3

    .line 496
    aput-object v14, v6, v15

    .line 497
    invoke-virtual {v2, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 499
    move-result-object v2

    .line 502
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 503
    move-result-object v6

    .line 506
    new-array v14, v8, [Ljava/lang/Object;

    .line 507
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 509
    move-result-object v5

    .line 512
    aput-object v5, v14, v4

    .line 513
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 515
    aput-object v5, v14, v3

    .line 517
    iget-object v5, v1, Lcom/miui/clock/MiuiClockController;->mWallpaperSupportDepthObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 519
    const/4 v15, 0x2

    .line 521
    aput-object v5, v14, v15

    .line 522
    const/4 v5, 0x3

    .line 524
    aput-object v0, v14, v5

    .line 525
    invoke-virtual {v2, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 527
    goto :goto_6

    .line 530
    :catch_4
    move-exception v0

    .line 531
    invoke-static {v12, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    goto :goto_6

    .line 535
    :cond_b
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 536
    move-result-object v0

    .line 539
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 540
    move-result-object v2

    .line 543
    iget-object v5, v1, Lcom/miui/clock/MiuiClockController;->mWallpaperSupportDepthObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 544
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 546
    :goto_6
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mWallpaperSupportDepthObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 549
    invoke-virtual {v0, v4}, Lcom/miui/clock/MiuiClockController$2;->onChange(Z)V

    .line 551
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mAccessibilityHighTextContrastObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 554
    const/4 v2, 0x5

    .line 556
    if-nez v0, :cond_c

    .line 557
    new-instance v0, Lcom/miui/clock/MiuiClockController$2;

    .line 559
    new-instance v5, Landroid/os/Handler;

    .line 561
    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 563
    invoke-direct {v0, v1, v5, v2}, Lcom/miui/clock/MiuiClockController$2;-><init>(Lcom/miui/clock/MiuiClockController;Landroid/os/Handler;I)V

    .line 566
    iput-object v0, v1, Lcom/miui/clock/MiuiClockController;->mAccessibilityHighTextContrastObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 569
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockController;->updateCurrentUserId()V

    .line 571
    const-class v0, Landroid/os/UserHandle;

    .line 574
    :try_start_5
    new-array v5, v3, [Ljava/lang/Class;

    .line 576
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 578
    aput-object v6, v5, v4

    .line 580
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 582
    move-result-object v5

    .line 585
    new-array v6, v3, [Ljava/lang/Object;

    .line 586
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 588
    move-result-object v0

    .line 591
    const/4 v14, 0x0

    .line 592
    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    move-result-object v0

    .line 596
    aput-object v0, v6, v4

    .line 597
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    move-result-object v0

    .line 602
    check-cast v0, Landroid/os/UserHandle;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 603
    goto :goto_7

    .line 605
    :catch_5
    move-exception v0

    .line 606
    invoke-static {v12, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    const/4 v0, 0x0

    .line 610
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 611
    move-result v5

    .line 614
    const-string v6, "high_text_contrast_enabled"

    .line 615
    if-eqz v5, :cond_d

    .line 617
    if-eqz v0, :cond_d

    .line 619
    :try_start_6
    const-class v5, Landroid/content/ContentResolver;

    .line 621
    new-array v14, v8, [Ljava/lang/Class;

    .line 623
    const-class v15, Landroid/net/Uri;

    .line 625
    aput-object v15, v14, v4

    .line 627
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 629
    aput-object v15, v14, v3

    .line 631
    const-class v15, Landroid/database/ContentObserver;

    .line 633
    const/16 v17, 0x2

    .line 635
    aput-object v15, v14, v17

    .line 637
    const-class v15, Landroid/os/UserHandle;

    .line 639
    const/16 v16, 0x3

    .line 641
    aput-object v15, v14, v16

    .line 643
    invoke-virtual {v5, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 645
    move-result-object v5

    .line 648
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 649
    move-result-object v14

    .line 652
    new-array v15, v8, [Ljava/lang/Object;

    .line 653
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 655
    move-result-object v6

    .line 658
    aput-object v6, v15, v4

    .line 659
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 661
    aput-object v6, v15, v3

    .line 663
    iget-object v6, v1, Lcom/miui/clock/MiuiClockController;->mAccessibilityHighTextContrastObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 665
    const/16 v17, 0x2

    .line 667
    aput-object v6, v15, v17

    .line 669
    const/4 v6, 0x3

    .line 671
    aput-object v0, v15, v6

    .line 672
    invoke-virtual {v5, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 674
    goto :goto_8

    .line 677
    :catch_6
    move-exception v0

    .line 678
    invoke-static {v12, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    goto :goto_8

    .line 682
    :cond_d
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 683
    move-result-object v0

    .line 686
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 687
    move-result-object v5

    .line 690
    iget-object v6, v1, Lcom/miui/clock/MiuiClockController;->mAccessibilityHighTextContrastObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 691
    invoke-virtual {v0, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 693
    :goto_8
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mAccessibilityHighTextContrastObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 696
    invoke-virtual {v0, v4}, Lcom/miui/clock/MiuiClockController$2;->onChange(Z)V

    .line 698
    sget-boolean v0, Lcom/miui/clock/utils/DeviceConfig;->BACKGROUND_BLUR_SUPPORTED_2:Z

    .line 701
    if-eqz v0, :cond_10

    .line 703
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnableObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 705
    if-nez v0, :cond_e

    .line 707
    new-instance v0, Lcom/miui/clock/MiuiClockController$2;

    .line 709
    new-instance v5, Landroid/os/Handler;

    .line 711
    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 713
    invoke-direct {v0, v1, v5, v3}, Lcom/miui/clock/MiuiClockController$2;-><init>(Lcom/miui/clock/MiuiClockController;Landroid/os/Handler;I)V

    .line 716
    iput-object v0, v1, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnableObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 719
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockController;->updateCurrentUserId()V

    .line 721
    const-class v0, Landroid/os/UserHandle;

    .line 724
    :try_start_7
    new-array v5, v3, [Ljava/lang/Class;

    .line 726
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 728
    aput-object v6, v5, v4

    .line 730
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 732
    move-result-object v5

    .line 735
    new-array v6, v3, [Ljava/lang/Object;

    .line 736
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 738
    move-result-object v0

    .line 741
    const/4 v14, 0x0

    .line 742
    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    move-result-object v0

    .line 746
    aput-object v0, v6, v4

    .line 747
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    move-result-object v0

    .line 752
    check-cast v0, Landroid/os/UserHandle;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 753
    goto :goto_9

    .line 755
    :catch_7
    move-exception v0

    .line 756
    invoke-static {v12, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    const/4 v0, 0x0

    .line 760
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 761
    move-result v5

    .line 764
    const-string v6, "background_blur_enable"

    .line 765
    if-eqz v5, :cond_f

    .line 767
    if-eqz v0, :cond_f

    .line 769
    :try_start_8
    const-class v5, Landroid/content/ContentResolver;

    .line 771
    new-array v14, v8, [Ljava/lang/Class;

    .line 773
    const-class v15, Landroid/net/Uri;

    .line 775
    aput-object v15, v14, v4

    .line 777
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 779
    aput-object v15, v14, v3

    .line 781
    const-class v15, Landroid/database/ContentObserver;

    .line 783
    const/16 v17, 0x2

    .line 785
    aput-object v15, v14, v17

    .line 787
    const-class v15, Landroid/os/UserHandle;

    .line 789
    const/16 v16, 0x3

    .line 791
    aput-object v15, v14, v16

    .line 793
    invoke-virtual {v5, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 795
    move-result-object v5

    .line 798
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 799
    move-result-object v14

    .line 802
    new-array v15, v8, [Ljava/lang/Object;

    .line 803
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 805
    move-result-object v6

    .line 808
    aput-object v6, v15, v4

    .line 809
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 811
    aput-object v6, v15, v3

    .line 813
    iget-object v6, v1, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnableObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 815
    const/16 v17, 0x2

    .line 817
    aput-object v6, v15, v17

    .line 819
    const/4 v6, 0x3

    .line 821
    aput-object v0, v15, v6

    .line 822
    invoke-virtual {v5, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 824
    goto :goto_a

    .line 827
    :catch_8
    move-exception v0

    .line 828
    invoke-static {v12, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    goto :goto_a

    .line 832
    :cond_f
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 833
    move-result-object v0

    .line 836
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 837
    move-result-object v5

    .line 840
    iget-object v6, v1, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnableObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 841
    invoke-virtual {v0, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 843
    :goto_a
    iget-object v0, v1, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnableObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 846
    invoke-virtual {v0, v4}, Lcom/miui/clock/MiuiClockController$2;->onChange(Z)V

    .line 848
    :cond_10
    iget-boolean v0, v1, Lcom/miui/clock/MiuiClockController;->mNeedRegisterClockInfoListener:Z

    .line 851
    if-eqz v0, :cond_14

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockController;->isCrossUser()Z

    .line 855
    move-result v0

    .line 858
    iget-boolean v5, v1, Lcom/miui/clock/MiuiClockController;->mHasRegisterClockInfoListener:Z

    .line 859
    if-eqz v5, :cond_11

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    .line 863
    const-string v2, "registerClockInfoListener has register, return isCrossUser = "

    .line 865
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 873
    move-result-object v0

    .line 876
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    goto/16 :goto_d

    .line 880
    :cond_11
    iput-boolean v3, v1, Lcom/miui/clock/MiuiClockController;->mHasRegisterClockInfoListener:Z

    .line 882
    new-instance v5, Ljava/lang/StringBuilder;

    .line 884
    const-string v6, "registerClockInfoListener isCrossUser = "

    .line 886
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 891
    const-string v6, ", this = "

    .line 894
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    move-result-object v5

    .line 905
    invoke-static {v12, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v5, v1, Lcom/miui/clock/MiuiClockController;->mClockInfoListener:Lcom/miui/clock/MiuiClockController$2;

    .line 909
    if-nez v5, :cond_12

    .line 911
    new-instance v5, Lcom/miui/clock/MiuiClockController$2;

    .line 913
    iget-object v6, v1, Lcom/miui/clock/MiuiClockController;->mHandler:Landroid/os/Handler;

    .line 915
    const/4 v14, 0x6

    .line 917
    invoke-direct {v5, v1, v6, v14}, Lcom/miui/clock/MiuiClockController$2;-><init>(Lcom/miui/clock/MiuiClockController;Landroid/os/Handler;I)V

    .line 918
    iput-object v5, v1, Lcom/miui/clock/MiuiClockController;->mClockInfoListener:Lcom/miui/clock/MiuiClockController$2;

    .line 921
    :cond_12
    const-string v5, "constant_lockscreen_info"

    .line 923
    if-eqz v0, :cond_13

    .line 925
    new-instance v0, Lcom/miui/clock/MiuiClockController$4;

    .line 927
    invoke-direct {v0, v1, v3}, Lcom/miui/clock/MiuiClockController$4;-><init>(Lcom/miui/clock/MiuiClockController;I)V

    .line 929
    iput-object v0, v1, Lcom/miui/clock/MiuiClockController;->mUserSwitchBroadcastReceiver:Lcom/miui/clock/MiuiClockController$4;

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/MiuiClockController;->updateCurrentUserId()V

    .line 934
    const-class v6, Landroid/os/UserHandle;

    .line 937
    :try_start_9
    new-array v0, v3, [Ljava/lang/Class;

    .line 939
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 941
    aput-object v14, v0, v4

    .line 943
    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 945
    move-result-object v0

    .line 948
    new-array v14, v3, [Ljava/lang/Object;

    .line 949
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 951
    move-result-object v7

    .line 954
    const/4 v15, 0x0

    .line 955
    invoke-virtual {v7, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    move-result-object v7

    .line 959
    aput-object v7, v14, v4

    .line 960
    invoke-virtual {v0, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    move-result-object v0

    .line 965
    check-cast v0, Landroid/os/UserHandle;

    .line 966
    iput-object v0, v1, Lcom/miui/clock/MiuiClockController;->mUserAllHandle:Landroid/os/UserHandle;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 968
    goto :goto_b

    .line 970
    :catch_9
    move-exception v0

    .line 971
    invoke-static {v12, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    :goto_b
    :try_start_a
    const-class v0, Landroid/content/Context;

    .line 975
    const-string v7, "registerReceiverAsUser"

    .line 977
    new-array v11, v2, [Ljava/lang/Class;

    .line 979
    const-class v14, Landroid/content/BroadcastReceiver;

    .line 981
    aput-object v14, v11, v4

    .line 983
    aput-object v6, v11, v3

    .line 985
    const-class v6, Landroid/content/IntentFilter;

    .line 987
    const/4 v14, 0x2

    .line 989
    aput-object v6, v11, v14

    .line 990
    const-class v6, Ljava/lang/String;

    .line 992
    const/4 v14, 0x3

    .line 994
    aput-object v6, v11, v14

    .line 995
    const-class v6, Landroid/os/Handler;

    .line 997
    aput-object v6, v11, v8

    .line 999
    invoke-virtual {v0, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1001
    move-result-object v0

    .line 1004
    new-array v2, v2, [Ljava/lang/Object;

    .line 1005
    iget-object v6, v1, Lcom/miui/clock/MiuiClockController;->mUserSwitchBroadcastReceiver:Lcom/miui/clock/MiuiClockController$4;

    .line 1007
    aput-object v6, v2, v4

    .line 1009
    iget-object v6, v1, Lcom/miui/clock/MiuiClockController;->mUserAllHandle:Landroid/os/UserHandle;

    .line 1011
    aput-object v6, v2, v3

    .line 1013
    new-instance v6, Landroid/content/IntentFilter;

    .line 1015
    const-string v7, "android.intent.action.USER_SWITCHED"

    .line 1017
    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1019
    const/4 v7, 0x2

    .line 1022
    aput-object v6, v2, v7

    .line 1023
    const/4 v6, 0x0

    .line 1025
    const/4 v7, 0x3

    .line 1026
    aput-object v6, v2, v7

    .line 1027
    aput-object v6, v2, v8

    .line 1029
    invoke-virtual {v0, v13, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 1031
    goto :goto_c

    .line 1034
    :catch_a
    move-exception v0

    .line 1035
    const-string v2, "register receiver as user fail"

    .line 1036
    invoke-static {v12, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    :goto_c
    :try_start_b
    const-class v0, Landroid/content/ContentResolver;

    .line 1041
    new-array v2, v8, [Ljava/lang/Class;

    .line 1043
    const-class v6, Landroid/net/Uri;

    .line 1045
    aput-object v6, v2, v4

    .line 1047
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 1049
    aput-object v6, v2, v3

    .line 1051
    const-class v6, Landroid/database/ContentObserver;

    .line 1053
    const/4 v7, 0x2

    .line 1055
    aput-object v6, v2, v7

    .line 1056
    const-class v6, Landroid/os/UserHandle;

    .line 1058
    const/4 v7, 0x3

    .line 1060
    aput-object v6, v2, v7

    .line 1061
    invoke-virtual {v0, v9, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1063
    move-result-object v0

    .line 1066
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1067
    move-result-object v2

    .line 1070
    new-array v6, v8, [Ljava/lang/Object;

    .line 1071
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1073
    move-result-object v5

    .line 1076
    aput-object v5, v6, v4

    .line 1077
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1079
    aput-object v4, v6, v3

    .line 1081
    iget-object v3, v1, Lcom/miui/clock/MiuiClockController;->mClockInfoListener:Lcom/miui/clock/MiuiClockController$2;

    .line 1083
    const/4 v4, 0x2

    .line 1085
    aput-object v3, v6, v4

    .line 1086
    iget-object v1, v1, Lcom/miui/clock/MiuiClockController;->mUserAllHandle:Landroid/os/UserHandle;

    .line 1088
    const/4 v3, 0x3

    .line 1090
    aput-object v1, v6, v3

    .line 1091
    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 1093
    goto :goto_d

    .line 1096
    :catch_b
    move-exception v0

    .line 1097
    invoke-static {v12, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1098
    goto :goto_d

    .line 1101
    :cond_13
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1102
    move-result-object v0

    .line 1105
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1106
    move-result-object v2

    .line 1109
    iget-object v1, v1, Lcom/miui/clock/MiuiClockController;->mClockInfoListener:Lcom/miui/clock/MiuiClockController$2;

    .line 1110
    invoke-virtual {v0, v2, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1112
    :cond_14
    :goto_d
    return-void
    .line 1115
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/clock/MiuiClockController;->mDisplayType:I

    .line 2
    const/16 v1, 0x8

    .line 4
    and-int/2addr v0, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-nez v0, :cond_c

    .line 13
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mHasRegisterTimeListener:Z

    .line 15
    const-string v1, "MiuiClockController"

    .line 17
    iget-object v3, p0, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 19
    if-nez v0, :cond_1

    .line 21
    const-string v0, "removeTimeListener, un register return"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    goto :goto_1

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v4, "removeTimeListener, this = "

    .line 31
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-boolean v2, p0, Lcom/miui/clock/MiuiClockController;->mHasRegisterTimeListener:Z

    .line 46
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mTimezoneChangeReceiver:Lcom/miui/clock/MiuiClockController$4;

    .line 48
    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v3, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    :cond_2
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mAutoUpdateTime:Z

    .line 55
    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mUpdateTimeReceiver:Lcom/miui/clock/MiuiClockController$4;

    .line 59
    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {v3, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    :cond_3
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    move-result-object v0

    .line 69
    iget-object v4, p0, Lcom/miui/clock/MiuiClockController;->mDualClockOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 70
    if-eqz v4, :cond_4

    .line 72
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 74
    :cond_4
    iget-object v4, p0, Lcom/miui/clock/MiuiClockController;->mResidentTimezoneObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 77
    if-eqz v4, :cond_5

    .line 79
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mSurperSaveOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 84
    if-eqz v0, :cond_6

    .line 86
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    move-result-object v0

    .line 91
    iget-object v4, p0, Lcom/miui/clock/MiuiClockController;->mSurperSaveOpenObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 92
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 94
    :cond_6
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mWallpaperSupportDepthObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 97
    if-eqz v0, :cond_7

    .line 99
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    move-result-object v0

    .line 104
    iget-object v4, p0, Lcom/miui/clock/MiuiClockController;->mWallpaperSupportDepthObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 105
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    :cond_7
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mAccessibilityHighTextContrastObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 110
    if-eqz v0, :cond_8

    .line 112
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 114
    move-result-object v0

    .line 117
    iget-object v4, p0, Lcom/miui/clock/MiuiClockController;->mAccessibilityHighTextContrastObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 118
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    :cond_8
    sget-boolean v0, Lcom/miui/clock/utils/DeviceConfig;->BACKGROUND_BLUR_SUPPORTED_2:Z

    .line 123
    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnableObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 127
    if-eqz v0, :cond_9

    .line 129
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 131
    move-result-object v0

    .line 134
    iget-object v4, p0, Lcom/miui/clock/MiuiClockController;->mBackgroundBlurEnableObserver:Lcom/miui/clock/MiuiClockController$2;

    .line 135
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 137
    :cond_9
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mNeedRegisterClockInfoListener:Z

    .line 140
    if-eqz v0, :cond_c

    .line 142
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mHasRegisterClockInfoListener:Z

    .line 144
    if-nez v0, :cond_a

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    const-string v2, "removeClockInfoListener un register, return, this = "

    .line 150
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p0

    .line 161
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    goto :goto_2

    .line 165
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    const-string v4, "removeClockInfoListener, this = "

    .line 168
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 179
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-boolean v2, p0, Lcom/miui/clock/MiuiClockController;->mHasRegisterClockInfoListener:Z

    .line 183
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mClockInfoListener:Lcom/miui/clock/MiuiClockController$2;

    .line 185
    if-eqz v0, :cond_b

    .line 187
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 189
    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/miui/clock/MiuiClockController;->mClockInfoListener:Lcom/miui/clock/MiuiClockController$2;

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 195
    :cond_b
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mUserSwitchBroadcastReceiver:Lcom/miui/clock/MiuiClockController$4;

    .line 198
    if-eqz p0, :cond_c

    .line 200
    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    :cond_c
    :goto_2
    return-void
    .line 205
.end method

.method public final setClockBean(Lcom/miui/clock/module/ClockBean;ZZ)V
    .locals 2

    .line 1
    const-string v0, "MiuiClockController"

    .line 2
    if-nez p1, :cond_0

    .line 4
    const-string p0, "bean is null"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void

    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 14
    invoke-virtual {p1, p2}, Lcom/miui/clock/module/ClockBean;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    if-nez p3, :cond_1

    .line 22
    const-string p0, "bean is same with now value"

    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 29
    :cond_1
    if-eqz p3, :cond_2

    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiClockController;->addClockView(Lcom/miui/clock/module/ClockBean;)V

    .line 32
    return-void

    .line 35
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo p3, "setClockBean = "

    .line 38
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string p3, ", mClockBean = "

    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object p3, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 60
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 67
    iget-object p3, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 68
    invoke-virtual {p3}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 70
    move-result-object p3

    .line 73
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 74
    move-result p2

    .line 77
    if-eqz p2, :cond_5

    .line 78
    iput-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 80
    iget-boolean p2, p0, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 82
    const-string p3, "dual"

    .line 84
    if-eqz p2, :cond_3

    .line 86
    const-string p2, "magazine_c_date_only"

    .line 88
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p2

    .line 97
    if-nez p2, :cond_3

    .line 98
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getDualClockLocalCity()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 103
    new-instance p2, Lcom/miui/clock/module/ClockBean;

    .line 104
    invoke-direct {p2, p3}, Lcom/miui/clock/module/ClockBean;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2, p1}, Lcom/miui/clock/module/ClockBean;->setDualClockLocalCity(Ljava/lang/String;)V

    .line 109
    move-object p1, p2

    .line 112
    :cond_3
    iget-object p2, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 113
    instance-of p2, p2, Lcom/miui/clock/MiuiDualClock;

    .line 115
    if-eqz p2, :cond_4

    .line 117
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 119
    move-result-object p2

    .line 122
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result p2

    .line 126
    if-nez p2, :cond_4

    .line 127
    iget-object p2, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 129
    invoke-virtual {p0, p2}, Lcom/miui/clock/MiuiClockController;->addClockView(Lcom/miui/clock/module/ClockBean;)V

    .line 131
    :cond_4
    iget-object p2, p0, Lcom/miui/clock/MiuiClockController;->mContext:Landroid/content/Context;

    .line 134
    iget p3, p0, Lcom/miui/clock/MiuiClockController;->mDisplayType:I

    .line 136
    invoke-static {p2, p1, p3}, Lcom/miui/clock/module/ClockStyleInfo;->convertInfoFromClockBean(Landroid/content/Context;Lcom/miui/clock/module/ClockBean;I)Lcom/miui/clock/module/ClockStyleInfo;

    .line 138
    move-result-object p1

    .line 141
    iget-boolean p2, p0, Lcom/miui/clock/MiuiClockController;->isSurperSaveOpen:Z

    .line 142
    iput-boolean p2, p1, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 144
    iget-object p2, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 146
    invoke-interface {p2, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 148
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->isWallpaperSupportDepth()Z

    .line 151
    move-result p1

    .line 154
    iget-object p2, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 155
    iget p3, p0, Lcom/miui/clock/MiuiClockController;->mChoosePaletteType:I

    .line 157
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 159
    iget-object v1, p0, Lcom/miui/clock/MiuiClockController;->mPalette:Ljava/util/Map;

    .line 161
    invoke-interface {p2, p3, v0, v1, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->setClockPalette(IZLjava/util/Map;Z)V

    .line 163
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 166
    iget-boolean p2, p0, Lcom/miui/clock/MiuiClockController;->mInfoTextDark:Z

    .line 168
    invoke-interface {p1, p2}, Lcom/miui/clock/MiuiClockController$IClockView;->setInfoTextColorDark(Z)V

    .line 170
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mMiuiClockInfoListener:Lcom/miui/clock/MiuiClockController$MiuiClockInfoListener;

    .line 173
    if-eqz p1, :cond_6

    .line 175
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 177
    check-cast p1, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;

    .line 179
    invoke-virtual {p1, p0}, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->onClockBeanChange(Lcom/miui/clock/module/ClockBean;)V

    .line 181
    goto :goto_0

    .line 184
    :cond_5
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiClockController;->addClockView(Lcom/miui/clock/module/ClockBean;)V

    .line 185
    :cond_6
    :goto_0
    return-void
    .line 188
.end method

.method public final setClockPalette(IZLjava/util/Map;)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/miui/clock/MiuiClockController;->mChoosePaletteType:I

    .line 2
    iput-boolean p2, p0, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 4
    iput-object p3, p0, Lcom/miui/clock/MiuiClockController;->mPalette:Ljava/util/Map;

    .line 6
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->isWallpaperSupportDepth()Z

    .line 12
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 16
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/miui/clock/MiuiClockController$IClockView;->setClockPalette(IZLjava/util/Map;Z)V

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/miui/clock/MiuiClockController;->mClockPaletteChangeListener:Lcom/miui/clock/MiuiClockController$ClockPaletteChangeListener;

    .line 21
    if-eqz p1, :cond_2

    .line 23
    iget-object p2, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 25
    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor()Z

    .line 29
    move-result p2

    .line 32
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 33
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockBean;->isAutoSecondaryColor()Z

    .line 35
    move-result p0

    .line 38
    check-cast p1, Lcom/android/keyguard/clock/animation/AnimationHelper$1;

    .line 39
    invoke-virtual {p1, p2, p0}, Lcom/android/keyguard/clock/animation/AnimationHelper$1;->onPaletteChange(ZZ)V

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    check-cast p1, Lcom/android/keyguard/clock/animation/AnimationHelper$1;

    .line 45
    const/4 p0, 0x0

    .line 47
    invoke-virtual {p1, p0, p0}, Lcom/android/keyguard/clock/animation/AnimationHelper$1;->onPaletteChange(ZZ)V

    .line 48
    :cond_2
    :goto_0
    return-void
    .line 51
.end method

.method public final setCurrentUserId(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "set current user id = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "MiuiClockController"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput p1, p0, Lcom/miui/clock/MiuiClockController;->mCurrentUserId:I

    .line 22
    iget-object p0, p0, Lcom/miui/clock/MiuiClockController;->mClockView:Lcom/miui/clock/MiuiClockController$IClockView;

    .line 24
    if-eqz p0, :cond_0

    .line 26
    invoke-interface {p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->setCurrentUserId(I)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public final updateCurrentUserId()V
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    .line 2
    const-string v1, "getCurrentUser"

    .line 4
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    move-result-object v0

    .line 12
    new-array v1, v2, [Ljava/lang/Object;

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Integer;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiClockController;->setCurrentUserId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string v0, "MiuiClockController"

    .line 31
    const-string v1, "get current user id fail"

    .line 33
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :goto_0
    return-void
    .line 38
.end method

.method public final updateDualClock()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "updateDualClock mAutoDualClock = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->mAutoDualClock:Z

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", mDualClockOpen = "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-boolean v1, p0, Lcom/miui/clock/MiuiClockController;->mDualClockOpen:Z

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", mResidentTimezone = "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/miui/clock/MiuiClockController;->mResidentTimezone:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", mCurrentTimezone = "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/miui/clock/MiuiClockController;->mCurrentTimezone:Ljava/lang/String;

    .line 40
    const-string v2, "MiuiClockController"

    .line 42
    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mAutoDualClock:Z

    .line 47
    if-eqz v0, :cond_0

    .line 49
    iget-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mDualClockOpen:Z

    .line 51
    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mResidentTimezone:Ljava/lang/String;

    .line 55
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/miui/clock/MiuiClockController;->mCurrentTimezone:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    iput-boolean v0, p0, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 70
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->getClockPosition()I

    .line 72
    move-result v0

    .line 75
    iget v1, p0, Lcom/miui/clock/MiuiClockController;->mLastClockPosition:I

    .line 76
    if-eq v0, v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->getClockPosition()I

    .line 80
    move-result v0

    .line 83
    iput v0, p0, Lcom/miui/clock/MiuiClockController;->mLastClockPosition:I

    .line 84
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 86
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiClockController;->addClockView(Lcom/miui/clock/module/ClockBean;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/MiuiClockController;->mMiuiClockInfoListener:Lcom/miui/clock/MiuiClockController$MiuiClockInfoListener;

    .line 93
    if-eqz v0, :cond_2

    .line 95
    iget-boolean p0, p0, Lcom/miui/clock/MiuiClockController;->mShowDualClock:Z

    .line 97
    check-cast v0, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;

    .line 99
    invoke-virtual {v0, p0}, Lcom/android/keyguard/clock/KeyguardClockContainer$miuiClockInfoListener$1;->onDualClockChange(Z)V

    .line 101
    :cond_2
    return-void
    .line 104
.end method

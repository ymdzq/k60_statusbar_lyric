.class public Lcom/android/systemui/statusbar/StatusBarWifiView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# instance fields
.field public mActivityResId:I

.field public mColor:I

.field public mIconResId:I

.field public mLight:Z

.field public mRects:Ljava/util/ArrayList;

.field public mSlot:Ljava/lang/String;

.field public mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

.field public mTint:I

.field public mUseTint:Z

.field public mVisibleState:I

.field public mWifiActivityView:Landroid/widget/ImageView;

.field public mWifiGroup:Landroid/widget/FrameLayout;

.field public mWifiIcon:Landroid/widget/ImageView;

.field public mWifiStandardView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mRects:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mRects:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mRects:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mRects:Ljava/util/ArrayList;

    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x7f0d0360    # @layout/status_bar_wifi_group 'res/layout/status_bar_wifi_group.xml'

    .line 6
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setSlot(Ljava/lang/String;)V

    .line 16
    const p1, 0x7f0a0aae    # @id/wifi_group

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/FrameLayout;

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/FrameLayout;

    .line 28
    const p1, 0x7f0a0ab9    # @id/wifi_signal

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/ImageView;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    .line 39
    const p1, 0x7f0a0aa6    # @id/wifi_activity

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/ImageView;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 50
    const p1, 0x7f0a0abb    # @id/wifi_standard

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/TextView;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 61
    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setVisibleState(I)V

    .line 64
    return-object p0
    .line 67
.end method


# virtual methods
.method public final applyDarknessInternal()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mRects:Ljava/util/ArrayList;

    .line 6
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mTint:I

    .line 8
    invoke-static {v0, p0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    .line 10
    move-result v0

    .line 13
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 14
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 34
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mColor:I

    .line 36
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    :goto_0
    return-void
    .line 41
.end method

.method public final applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x8

    .line 3
    const/4 v2, 0x0

    .line 5
    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 8
    move-result p1

    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 20
    goto/16 :goto_e

    .line 22
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 24
    const/4 v4, 0x7

    .line 26
    const/16 v5, 0x55

    .line 27
    const/16 v6, 0x53

    .line 29
    const/4 v7, 0x4

    .line 31
    if-nez v3, :cond_a

    .line 32
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 34
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 38
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 45
    if-lez v3, :cond_2

    .line 47
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    .line 49
    iget-object v9, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 51
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    .line 53
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 55
    invoke-static {v3, v10, v11}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 57
    move-result v3

    .line 60
    invoke-virtual {v9, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 61
    move-result-object v3

    .line 64
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 68
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mIconResId:I

    .line 70
    :cond_2
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 72
    if-lez v3, :cond_3

    .line 74
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 76
    iget-object v8, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 78
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    .line 80
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 82
    invoke-static {v3, v9, v10}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 84
    move-result v3

    .line 87
    invoke-virtual {v8, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 88
    move-result-object v3

    .line 91
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 95
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mActivityResId:I

    .line 97
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    goto :goto_1

    .line 104
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mActivityResId:I

    .line 105
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 112
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 114
    move-result-object v3

    .line 117
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 120
    if-eqz v7, :cond_4

    .line 122
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 124
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 126
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    goto :goto_3

    .line 131
    :cond_4
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->showWifiStandard:Z

    .line 132
    if-eqz v7, :cond_6

    .line 134
    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 136
    if-ne v5, v1, :cond_5

    .line 138
    goto :goto_2

    .line 140
    :cond_5
    move v4, v5

    .line 141
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 142
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 144
    move-result-object v4

    .line 147
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 151
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 156
    if-eq v4, v6, :cond_7

    .line 158
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    goto :goto_3

    .line 167
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 168
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 173
    if-eq v4, v5, :cond_7

    .line 175
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 177
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :cond_7
    :goto_3
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 184
    if-eqz v3, :cond_8

    .line 186
    move v3, v2

    .line 188
    goto :goto_4

    .line 189
    :cond_8
    move v3, v1

    .line 190
    :goto_4
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 191
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/FrameLayout;

    .line 194
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->demoMode:Z

    .line 196
    if-eqz p1, :cond_9

    .line 198
    goto :goto_5

    .line 200
    :cond_9
    move v1, v2

    .line 201
    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyDarknessInternal()V

    .line 205
    goto/16 :goto_e

    .line 208
    :cond_a
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->equals(Ljava/lang/Object;)Z

    .line 210
    move-result v3

    .line 213
    if-nez v3, :cond_18

    .line 214
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 216
    move-result-object p1

    .line 219
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 220
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 225
    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 227
    iget v8, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 229
    if-eq v3, v8, :cond_b

    .line 231
    if-lez v8, :cond_b

    .line 233
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    .line 235
    iget-object v9, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 237
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    .line 239
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 241
    invoke-static {v8, v10, v11}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 243
    move-result v8

    .line 246
    invoke-virtual {v9, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 247
    move-result-object v8

    .line 250
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 254
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mIconResId:I

    .line 256
    :cond_b
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 258
    if-lez v3, :cond_d

    .line 260
    iget v7, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mActivityResId:I

    .line 262
    if-eq v7, v3, :cond_c

    .line 264
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 266
    iget-object v8, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 268
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    .line 270
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 272
    invoke-static {v3, v9, v10}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 274
    move-result v3

    .line 277
    invoke-virtual {v8, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 278
    move-result-object v3

    .line 281
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityResId:I

    .line 285
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mActivityResId:I

    .line 287
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 289
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    goto :goto_6

    .line 294
    :cond_d
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mActivityResId:I

    .line 295
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 297
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 302
    iget-boolean v7, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->showWifiStandard:Z

    .line 304
    iget-boolean v8, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->showWifiStandard:Z

    .line 306
    if-ne v7, v8, :cond_f

    .line 308
    iget-boolean v7, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 310
    iget-boolean v8, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 312
    if-ne v7, v8, :cond_f

    .line 314
    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 316
    iget v7, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 318
    if-eq v3, v7, :cond_e

    .line 320
    goto :goto_7

    .line 322
    :cond_e
    move v3, v2

    .line 323
    goto :goto_a

    .line 324
    :cond_f
    :goto_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 325
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 327
    move-result-object v3

    .line 330
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 331
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->meteredHint:Z

    .line 333
    if-eqz v7, :cond_10

    .line 335
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 337
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 339
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    goto :goto_9

    .line 344
    :cond_10
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->showWifiStandard:Z

    .line 345
    if-eqz v7, :cond_12

    .line 347
    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->wifiStandard:I

    .line 349
    if-ne v5, v1, :cond_11

    .line 351
    goto :goto_8

    .line 353
    :cond_11
    move v4, v5

    .line 354
    :goto_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 355
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 357
    move-result-object v4

    .line 360
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 364
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 369
    if-eq v4, v6, :cond_13

    .line 371
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 373
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 375
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    goto :goto_9

    .line 380
    :cond_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 381
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 386
    if-eq v4, v5, :cond_13

    .line 388
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 390
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 392
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    :cond_13
    :goto_9
    move v3, v0

    .line 397
    :goto_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 398
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 400
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 402
    if-eq v4, v5, :cond_15

    .line 404
    if-eqz v5, :cond_14

    .line 406
    move v3, v2

    .line 408
    goto :goto_b

    .line 409
    :cond_14
    move v3, v1

    .line 410
    :goto_b
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 411
    move v3, v0

    .line 414
    :cond_15
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 415
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->demoMode:Z

    .line 417
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->demoMode:Z

    .line 419
    if-eq v4, v5, :cond_17

    .line 421
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/FrameLayout;

    .line 423
    if-eqz v5, :cond_16

    .line 425
    goto :goto_c

    .line 427
    :cond_16
    move v1, v2

    .line 428
    :goto_c
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 429
    goto :goto_d

    .line 432
    :cond_17
    move v0, v3

    .line 433
    :goto_d
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyDarknessInternal()V

    .line 436
    goto :goto_e

    .line 439
    :cond_18
    move v0, v2

    .line 440
    :goto_e
    if-eqz v0, :cond_19

    .line 441
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 443
    :cond_19
    return-void
    .line 446
.end method

.method public final getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 5
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 9
    move-result p0

    .line 12
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 13
    int-to-float v1, v1

    .line 15
    add-float/2addr v1, v0

    .line 16
    float-to-int v1, v1

    .line 17
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 18
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 20
    int-to-float v1, v1

    .line 22
    add-float/2addr v1, v0

    .line 23
    float-to-int v0, v1

    .line 24
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 25
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 27
    int-to-float v0, v0

    .line 29
    add-float/2addr v0, p0

    .line 30
    float-to-int v0, v0

    .line 31
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 32
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 34
    int-to-float v0, v0

    .line 36
    add-float/2addr v0, p0

    .line 37
    float-to-int p0, v0

    .line 38
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 39
    return-void
    .line 41
.end method

.method public getSlot()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getVisibleState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 2
    return p0
    .line 4
.end method

.method public final isIconVisible()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 2
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final isSignalView()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mRects:Ljava/util/ArrayList;

    .line 2
    iput p3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mTint:I

    .line 4
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    .line 6
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eq p3, p6, :cond_1

    .line 10
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    .line 12
    if-nez p6, :cond_0

    .line 14
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    .line 16
    const/4 p6, 0x0

    .line 18
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 24
    :cond_0
    move p3, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move p3, v1

    .line 29
    :goto_0
    iget-boolean p6, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    .line 30
    if-nez p6, :cond_6

    .line 32
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 34
    move-result p1

    .line 37
    const/4 p6, 0x0

    .line 38
    if-eqz p1, :cond_2

    .line 39
    goto :goto_1

    .line 41
    :cond_2
    move p2, p6

    .line 42
    :goto_1
    cmpl-float p1, p2, p6

    .line 43
    if-nez p1, :cond_3

    .line 45
    move v1, v0

    .line 47
    :cond_3
    if-eqz v1, :cond_4

    .line 48
    goto :goto_2

    .line 50
    :cond_4
    move p4, p5

    .line 51
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 52
    if-ne p1, v1, :cond_5

    .line 54
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mColor:I

    .line 56
    if-eq p1, p4, :cond_6

    .line 58
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 60
    iput p4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mColor:I

    .line 62
    goto :goto_3

    .line 64
    :cond_6
    move v0, p3

    .line 65
    :goto_3
    if-eqz v0, :cond_8

    .line 66
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mIconResId:I

    .line 68
    if-lez p1, :cond_7

    .line 70
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    .line 72
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 74
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    .line 76
    iget-boolean p5, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 78
    invoke-static {p1, p4, p5}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 80
    move-result p1

    .line 83
    invoke-virtual {p3, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 84
    move-result-object p1

    .line 87
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_7
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mActivityResId:I

    .line 91
    if-lez p1, :cond_8

    .line 93
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 95
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 97
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mUseTint:Z

    .line 99
    iget-boolean p5, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mLight:Z

    .line 101
    invoke-static {p1, p4, p5}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 103
    move-result p1

    .line 106
    invoke-virtual {p3, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 107
    move-result-object p1

    .line 110
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyDarknessInternal()V

    .line 114
    return-void
    .line 117
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 17
    const v2, 0x7f071101    # @dimen/status_bar_wifi_standard_width '8.3636dp'

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result v1

    .line 24
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v1

    .line 34
    const v2, 0x7f071100    # @dimen/status_bar_wifi_standard_height '11.2727dp'

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v1

    .line 41
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 44
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f14048d    # @style/TextAppearance.StatusBar.WifiStandard

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyDarknessInternal()V

    .line 57
    :cond_0
    return-void
    .line 60
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public bridge synthetic setBlocked(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setDecorColor(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setDripEnd(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setStaticDrawableColor(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiActivityView:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiStandardView:Landroid/widget/TextView;

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    return-void
    .line 21
.end method

.method public setVisibleState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 0

    .line 2
    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    if-ne p1, p2, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "StatusBarWifiView(slot="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " state="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", measuredWidth = "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeightAndState()I

    .line 29
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ", width = "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 45
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ")"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    return-object p0
    .line 68
.end method

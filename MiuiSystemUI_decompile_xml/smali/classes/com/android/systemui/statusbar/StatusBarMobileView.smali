.class public Lcom/android/systemui/statusbar/StatusBarMobileView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# instance fields
.field public mColor:I

.field public mDripEnd:Z

.field public mLeftInOut:Landroid/widget/ImageView;

.field public mLeftInOutResId:I

.field public mLight:Z

.field public mMobile:Landroid/widget/ImageView;

.field public mMobileGroup:Landroid/widget/LinearLayout;

.field public mMobileLeftContainer:Landroid/view/View;

.field public mMobileResId:I

.field public mMobileRightContainer:Landroid/view/View;

.field public mMobileRoaming:Landroid/widget/ImageView;

.field public mMobileType:Landroid/widget/ImageView;

.field public mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

.field public mMobileTypeImage:Landroid/widget/ImageView;

.field public mMobileTypeImageResId:I

.field public mMobileTypeSingle:Landroid/widget/TextView;

.field public mRects:Ljava/util/ArrayList;

.field public mRightInOut:Landroid/widget/ImageView;

.field public mRightInOutResId:I

.field public mShowVonr:Z

.field public mSlot:Ljava/lang/String;

.field public mSlt:Landroid/widget/ImageView;

.field public mSltResId:I

.field public mSmallHd:Landroid/widget/ImageView;

.field public mSmallRoaming:Landroid/widget/ImageView;

.field public mSpeechHd:Landroid/widget/ImageView;

.field public mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

.field public mTint:I

.field public mUseTint:Z

.field public mVisibleState:I

.field public mVolte:Landroid/widget/ImageView;

.field public mVolteNoService:Landroid/widget/ImageView;

.field public mVolteResId:I

.field public mVonrResId:I

.field public mVowifi:Landroid/widget/ImageView;

.field public mVowifiResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRects:Ljava/util/ArrayList;

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mShowVonr:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRects:Ljava/util/ArrayList;

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mShowVonr:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRects:Ljava/util/ArrayList;

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mShowVonr:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRects:Ljava/util/ArrayList;

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mShowVonr:Z

    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x7f0d0355    # @layout/status_bar_mobile_signal_group 'res/layout/status_bar_mobile_signal_group.xml'

    .line 6
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setSlot(Ljava/lang/String;)V

    .line 16
    const p1, 0x7f0a05f4    # @id/mobile_group

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/LinearLayout;

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    .line 28
    const p1, 0x7f0a05fc    # @id/mobile_signal

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/ImageView;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    .line 39
    const p1, 0x7f0a0605    # @id/mobile_type

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/ImageView;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 50
    const p1, 0x7f0a05fa    # @id/mobile_roaming

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/ImageView;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 61
    const p1, 0x7f0a0608    # @id/mobile_volte

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p1

    .line 69
    check-cast p1, Landroid/widget/ImageView;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 72
    const p1, 0x7f0a05f6    # @id/mobile_left_mobile_inout

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/ImageView;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 83
    const p1, 0x7f0a05f9    # @id/mobile_right_mobile_inout

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object p1

    .line 91
    check-cast p1, Landroid/widget/ImageView;

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 94
    const p1, 0x7f0a05fe    # @id/mobile_small_hd

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p1

    .line 102
    check-cast p1, Landroid/widget/ImageView;

    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 105
    const p1, 0x7f0a05ff    # @id/mobile_small_roam

    .line 107
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/ImageView;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 116
    const p1, 0x7f0a060a    # @id/mobile_vowifi

    .line 118
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object p1

    .line 124
    check-cast p1, Landroid/widget/ImageView;

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifi:Landroid/widget/ImageView;

    .line 127
    const p1, 0x7f0a0600    # @id/mobile_speech_hd

    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object p1

    .line 135
    check-cast p1, Landroid/widget/ImageView;

    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSpeechHd:Landroid/widget/ImageView;

    .line 138
    const p1, 0x7f0a05f2    # @id/mobile_container_left

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object p1

    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 147
    const p1, 0x7f0a05f3    # @id/mobile_container_right

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 156
    const p1, 0x7f0a0606    # @id/mobile_type_image

    .line 158
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 161
    move-result-object p1

    .line 164
    check-cast p1, Landroid/widget/ImageView;

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 167
    const p1, 0x7f0a0607    # @id/mobile_type_single

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 172
    move-result-object p1

    .line 175
    check-cast p1, Landroid/widget/TextView;

    .line 176
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 178
    const p1, 0x7f0a0609    # @id/mobile_volte_no_service

    .line 180
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 183
    move-result-object p1

    .line 186
    check-cast p1, Landroid/widget/ImageView;

    .line 187
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteNoService:Landroid/widget/ImageView;

    .line 189
    const p1, 0x7f0a05fd    # @id/mobile_slt

    .line 191
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 194
    move-result-object p1

    .line 197
    check-cast p1, Landroid/widget/ImageView;

    .line 198
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 200
    new-instance p1, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 202
    invoke-direct {p1}, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 209
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileTypeDrawable()V

    .line 214
    const/4 p1, 0x0

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setVisibleState(I)V

    .line 218
    return-object p0
    .line 221
.end method

.method private getVolteResId()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVonrResId:I

    .line 2
    if-lez v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mShowVonr:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    return v0

    .line 10
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteResId:I

    .line 11
    return p0
    .line 13
.end method


# virtual methods
.method public final applyDarknessInternal()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRects:Ljava/util/ArrayList;

    .line 6
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mTint:I

    .line 8
    invoke-static {v0, p0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    .line 10
    move-result v0

    .line 13
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 14
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifi:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 25
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSpeechHd:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 30
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 35
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 40
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 45
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 50
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 58
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->setMobileTypeColor(I)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteNoService:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 85
    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 89
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mColor:I

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->setMobileTypeColor(I)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 96
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mColor:I

    .line 98
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    :goto_0
    return-void
    .line 103
.end method

.method public final applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 9

    .line 1
    const/16 v0, 0x8

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 8
    move-result v3

    .line 11
    if-eq v3, v0, :cond_0

    .line 12
    move v3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v2

    .line 16
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 21
    goto/16 :goto_17

    .line 23
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 25
    if-nez v3, :cond_30

    .line 27
    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 29
    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    .line 31
    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(I)V

    .line 33
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 36
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    .line 39
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 41
    if-eqz v5, :cond_3

    .line 43
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->airplane:Z

    .line 45
    if-eqz v5, :cond_2

    .line 47
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 49
    if-eqz v5, :cond_3

    .line 51
    :cond_2
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->demoMode:Z

    .line 53
    if-nez v5, :cond_3

    .line 55
    move v5, v2

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v5, v0

    .line 59
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 68
    const-string v6, ""

    .line 70
    if-eqz v5, :cond_4

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 79
    const-string v8, " "

    .line 81
    invoke-static {v5, v7, v8}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v5

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    move-object v5, v6

    .line 88
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 100
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vowifiId:I

    .line 104
    if-lez v4, :cond_5

    .line 106
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifiResId:I

    .line 108
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifi:Landroid/widget/ImageView;

    .line 110
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 112
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 114
    invoke-static {v4, v7, v8}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 116
    move-result v4

    .line 119
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    :cond_5
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vonrId:I

    .line 123
    if-lez v4, :cond_7

    .line 125
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVonrResId:I

    .line 127
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showVonr:Z

    .line 129
    if-eqz v4, :cond_6

    .line 131
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vonr:Z

    .line 133
    if-eqz v4, :cond_6

    .line 135
    move v4, v1

    .line 137
    goto :goto_3

    .line 138
    :cond_6
    move v4, v2

    .line 139
    :goto_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mShowVonr:Z

    .line 140
    move v4, v1

    .line 142
    goto :goto_4

    .line 143
    :cond_7
    move v4, v2

    .line 144
    :goto_4
    iget v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    .line 145
    if-lez v5, :cond_8

    .line 147
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteResId:I

    .line 149
    move v4, v1

    .line 151
    :cond_8
    if-eqz v4, :cond_9

    .line 152
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getVolteResId()I

    .line 156
    move-result v5

    .line 159
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 160
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 162
    invoke-static {v5, v7, v8}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 164
    move-result v5

    .line 167
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    :cond_9
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 171
    if-eqz v4, :cond_a

    .line 173
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateSltState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 175
    goto/16 :goto_8

    .line 178
    :cond_a
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->fiveGDrawableId:I

    .line 180
    if-lez v4, :cond_b

    .line 182
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImageResId:I

    .line 184
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 186
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 188
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 190
    invoke-static {v4, v6, v7}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 192
    move-result v4

    .line 195
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 199
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 204
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 209
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 214
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    goto :goto_8

    .line 219
    :cond_b
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeSingle:Z

    .line 220
    if-eqz v4, :cond_e

    .line 222
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 224
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 226
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 231
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 236
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 241
    if-eqz v4, :cond_d

    .line 243
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->wifiAvailable:Z

    .line 245
    if-eqz v4, :cond_c

    .line 247
    goto :goto_5

    .line 249
    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 250
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    goto :goto_7

    .line 255
    :cond_d
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 256
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    goto :goto_7

    .line 261
    :cond_e
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 262
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 264
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 269
    move-result v7

    .line 272
    if-eqz v7, :cond_f

    .line 273
    goto :goto_6

    .line 275
    :cond_f
    move-object v6, v5

    .line 276
    :goto_6
    iget-object v5, v4, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    .line 277
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 279
    move-result v5

    .line 282
    if-nez v5, :cond_10

    .line 283
    iput-object v6, v4, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    .line 285
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->measure()V

    .line 287
    :cond_10
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileTypeLayout(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 290
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 293
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 298
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 303
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    :goto_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 308
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    :goto_8
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 313
    if-eqz v4, :cond_14

    .line 315
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    .line 317
    if-eqz v4, :cond_11

    .line 319
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 321
    if-eqz v5, :cond_11

    .line 323
    const v4, 0x7f0818af    # @drawable/stat_sys_signal_inout_left 'res/drawable/stat_sys_signal_inout_left.xml'

    .line 325
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOutResId:I

    .line 328
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOutResId:I

    .line 330
    goto :goto_9

    .line 332
    :cond_11
    if-eqz v4, :cond_12

    .line 333
    const v4, 0x7f0818ac    # @drawable/stat_sys_signal_in_left 'res/drawable/stat_sys_signal_in_left.xml'

    .line 335
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOutResId:I

    .line 338
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOutResId:I

    .line 340
    goto :goto_9

    .line 342
    :cond_12
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 343
    if-eqz v4, :cond_13

    .line 345
    const v4, 0x7f0818b5    # @drawable/stat_sys_signal_out_left 'res/drawable/stat_sys_signal_out_left.xml'

    .line 347
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOutResId:I

    .line 350
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOutResId:I

    .line 352
    goto :goto_9

    .line 354
    :cond_13
    const v4, 0x7f081897    # @drawable/stat_sys_signal_data_left 'res/drawable/stat_sys_signal_data_left.xml'

    .line 355
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOutResId:I

    .line 358
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOutResId:I

    .line 360
    :goto_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 362
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOutResId:I

    .line 364
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 366
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 368
    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 370
    move-result v5

    .line 373
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 377
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOutResId:I

    .line 379
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 381
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 383
    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 385
    move-result v5

    .line 388
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    :cond_14
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    .line 392
    if-lez v4, :cond_15

    .line 394
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileResId:I

    .line 396
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    .line 398
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 400
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 402
    invoke-static {v4, v6, v7}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 404
    move-result v4

    .line 407
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    :cond_15
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 411
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 413
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 415
    const v7, 0x7f08181a    # @drawable/stat_sys_data_connected_roam 'res/drawable/stat_sys_data_connected_roam.xml'

    .line 417
    invoke-static {v7, v5, v6}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 420
    move-result v5

    .line 423
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 427
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 429
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 431
    const v7, 0x7f0818a9    # @drawable/stat_sys_signal_hd_notch 'res/drawable/stat_sys_signal_hd_notch.xml'

    .line 433
    invoke-static {v7, v5, v6}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 436
    move-result v5

    .line 439
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 443
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 445
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 447
    const v7, 0x7f08181c    # @drawable/stat_sys_data_connected_roam_small 'res/drawable/stat_sys_data_connected_roam_small.xml'

    .line 449
    invoke-static {v7, v5, v6}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 452
    move-result v5

    .line 455
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSpeechHd:Landroid/widget/ImageView;

    .line 459
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 461
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 463
    const v7, 0x7f0818e8    # @drawable/stat_sys_speech_hd 'res/drawable/stat_sys_speech_hd.xml'

    .line 465
    invoke-static {v7, v5, v6}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 468
    move-result v5

    .line 471
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteNoService:Landroid/widget/ImageView;

    .line 475
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 477
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 479
    const v7, 0x7f0818fd    # @drawable/stat_sys_volte_no_service 'res/drawable/stat_sys_volte_no_service.xml'

    .line 481
    invoke-static {v7, v5, v6}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 484
    move-result v5

    .line 487
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->wifiAvailable:Z

    .line 491
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 493
    if-eqz v5, :cond_16

    .line 495
    iget-boolean v6, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 497
    if-eqz v6, :cond_16

    .line 499
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 501
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 506
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    goto :goto_a

    .line 511
    :cond_16
    if-eqz v5, :cond_17

    .line 512
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 514
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 519
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 521
    goto :goto_a

    .line 524
    :cond_17
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeInMMS:Z

    .line 525
    if-nez v5, :cond_19

    .line 527
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 529
    if-eqz v5, :cond_18

    .line 531
    if-eqz v4, :cond_19

    .line 533
    :cond_18
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 535
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 540
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    goto :goto_a

    .line 545
    :cond_19
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 546
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 551
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    :goto_a
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 556
    if-eqz v5, :cond_1a

    .line 558
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 560
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 565
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 567
    goto/16 :goto_d

    .line 570
    :cond_1a
    sget-boolean v5, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 572
    if-eqz v5, :cond_1b

    .line 574
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 576
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 578
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 581
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 583
    goto :goto_d

    .line 586
    :cond_1b
    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 587
    if-nez v5, :cond_1d

    .line 589
    if-eqz v4, :cond_1c

    .line 591
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 593
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 598
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 600
    goto :goto_d

    .line 603
    :cond_1c
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 604
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 609
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 611
    goto :goto_d

    .line 614
    :cond_1d
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeInMMS:Z

    .line 615
    if-nez v5, :cond_22

    .line 617
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showDataTypeDataDisconnected:Z

    .line 619
    if-eqz v5, :cond_1e

    .line 621
    goto :goto_c

    .line 623
    :cond_1e
    if-nez v4, :cond_21

    .line 624
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 626
    if-nez v5, :cond_1f

    .line 628
    goto :goto_b

    .line 630
    :cond_1f
    iget v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->fiveGDrawableId:I

    .line 631
    if-lez v5, :cond_20

    .line 633
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 635
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 637
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 640
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 642
    goto :goto_d

    .line 645
    :cond_20
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 646
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 648
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 651
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 653
    goto :goto_d

    .line 656
    :cond_21
    :goto_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 657
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 662
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 664
    goto :goto_d

    .line 667
    :cond_22
    :goto_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 668
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 673
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 675
    :goto_d
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 678
    if-eqz v5, :cond_23

    .line 680
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 682
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 684
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 687
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 689
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 692
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 694
    goto/16 :goto_14

    .line 697
    :cond_23
    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 699
    if-eqz v5, :cond_27

    .line 701
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 703
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 705
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 708
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 713
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 715
    if-eqz v5, :cond_24

    .line 717
    move v5, v2

    .line 719
    goto :goto_e

    .line 720
    :cond_24
    move v5, v0

    .line 721
    :goto_e
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDripEnd:Z

    .line 725
    if-eqz v4, :cond_25

    .line 727
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->wifiAvailable:Z

    .line 729
    if-eqz v4, :cond_25

    .line 731
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 733
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    goto/16 :goto_14

    .line 738
    :cond_25
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 740
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volte:Z

    .line 742
    if-eqz v5, :cond_26

    .line 744
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVolte:Z

    .line 746
    if-nez v5, :cond_26

    .line 748
    move v5, v2

    .line 750
    goto :goto_f

    .line 751
    :cond_26
    move v5, v0

    .line 752
    :goto_f
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 753
    goto/16 :goto_14

    .line 756
    :cond_27
    sget-boolean v5, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 758
    if-nez v5, :cond_2a

    .line 760
    if-eqz v4, :cond_2a

    .line 762
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 764
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 766
    if-eqz v5, :cond_28

    .line 768
    move v5, v2

    .line 770
    goto :goto_10

    .line 771
    :cond_28
    move v5, v0

    .line 772
    :goto_10
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 773
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 776
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volte:Z

    .line 778
    if-eqz v5, :cond_29

    .line 780
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 782
    if-nez v5, :cond_29

    .line 784
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVolte:Z

    .line 786
    if-nez v5, :cond_29

    .line 788
    move v5, v2

    .line 790
    goto :goto_11

    .line 791
    :cond_29
    move v5, v0

    .line 792
    :goto_11
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 796
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 798
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 801
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 803
    goto :goto_14

    .line 806
    :cond_2a
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 807
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 812
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 814
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 817
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 819
    if-eqz v5, :cond_2b

    .line 821
    move v5, v2

    .line 823
    goto :goto_12

    .line 824
    :cond_2b
    move v5, v0

    .line 825
    :goto_12
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 826
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 829
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volte:Z

    .line 831
    if-eqz v5, :cond_2c

    .line 833
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVolte:Z

    .line 835
    if-nez v5, :cond_2c

    .line 837
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNewHD:Z

    .line 839
    if-nez v5, :cond_2c

    .line 841
    move v5, v2

    .line 843
    goto :goto_13

    .line 844
    :cond_2c
    move v5, v0

    .line 845
    :goto_13
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 846
    :goto_14
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifi:Landroid/widget/ImageView;

    .line 849
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vowifi:Z

    .line 851
    if-eqz v5, :cond_2d

    .line 853
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVowifi:Z

    .line 855
    if-nez v5, :cond_2d

    .line 857
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->demoMode:Z

    .line 859
    if-nez v5, :cond_2d

    .line 861
    move v5, v2

    .line 863
    goto :goto_15

    .line 864
    :cond_2d
    move v5, v0

    .line 865
    :goto_15
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 866
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSpeechHd:Landroid/widget/ImageView;

    .line 869
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->speechHd:Z

    .line 871
    if-eqz v5, :cond_2e

    .line 873
    move v5, v2

    .line 875
    goto :goto_16

    .line 876
    :cond_2e
    move v5, v0

    .line 877
    :goto_16
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 878
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteNoService:Landroid/widget/ImageView;

    .line 881
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteNoService:Z

    .line 883
    if-eqz v5, :cond_2f

    .line 885
    move v0, v2

    .line 887
    :cond_2f
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 888
    iput-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 891
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyDarknessInternal()V

    .line 893
    move v3, v1

    .line 896
    goto :goto_17

    .line 897
    :cond_30
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->equals(Ljava/lang/Object;)Z

    .line 898
    move-result v0

    .line 901
    if-nez v0, :cond_31

    .line 902
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 904
    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    .line 906
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(I)V

    .line 908
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copyTo(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 911
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z

    .line 914
    move-result v3

    .line 917
    goto :goto_17

    .line 918
    :cond_31
    move v3, v2

    .line 919
    :goto_17
    if-eqz p1, :cond_32

    .line 920
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 922
    move-result p1

    .line 925
    if-eqz p1, :cond_32

    .line 926
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 928
    goto :goto_18

    .line 931
    :cond_32
    move v1, v3

    .line 932
    :goto_18
    if-eqz v1, :cond_33

    .line 933
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 935
    :cond_33
    return-void
    .line 938
.end method

.method public final getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    .line 5
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

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
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 2
    return-object p0
    .line 4
.end method

.method public getVisibleState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    .line 2
    return p0
    .line 4
.end method

.method public final isIconVisible()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

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
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRects:Ljava/util/ArrayList;

    .line 2
    iput p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mTint:I

    .line 4
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 6
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eq p3, p6, :cond_1

    .line 10
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 12
    if-nez p6, :cond_0

    .line 14
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    .line 16
    const/4 p6, 0x0

    .line 18
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 24
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 27
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 29
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 34
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 39
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifi:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 44
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSpeechHd:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 54
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 59
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 64
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 69
    :cond_0
    move p3, v0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move p3, v1

    .line 74
    :goto_0
    iget-boolean p6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 75
    if-nez p6, :cond_6

    .line 77
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 79
    move-result p1

    .line 82
    const/4 p6, 0x0

    .line 83
    if-eqz p1, :cond_2

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    move p2, p6

    .line 87
    :goto_1
    cmpl-float p1, p2, p6

    .line 88
    if-nez p1, :cond_3

    .line 90
    move v1, v0

    .line 92
    :cond_3
    if-eqz v1, :cond_4

    .line 93
    goto :goto_2

    .line 95
    :cond_4
    move p4, p5

    .line 96
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 97
    if-ne p1, v1, :cond_5

    .line 99
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mColor:I

    .line 101
    if-eq p1, p4, :cond_6

    .line 103
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 105
    iput p4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mColor:I

    .line 107
    goto :goto_3

    .line 109
    :cond_6
    move v0, p3

    .line 110
    :goto_3
    if-eqz v0, :cond_e

    .line 111
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifiResId:I

    .line 113
    if-lez p1, :cond_7

    .line 115
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifi:Landroid/widget/ImageView;

    .line 117
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 119
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 121
    invoke-static {p1, p3, p4}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 123
    move-result p1

    .line 126
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getVolteResId()I

    .line 130
    move-result p1

    .line 133
    if-lez p1, :cond_8

    .line 134
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 136
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 138
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 140
    invoke-static {p1, p3, p4}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 142
    move-result p1

    .line 145
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    :cond_8
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImageResId:I

    .line 149
    if-lez p1, :cond_9

    .line 151
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 153
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 155
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 157
    invoke-static {p1, p3, p4}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 159
    move-result p1

    .line 162
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    :cond_9
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileResId:I

    .line 166
    if-lez p1, :cond_a

    .line 168
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    .line 170
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 172
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 174
    invoke-static {p1, p3, p4}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 176
    move-result p1

    .line 179
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    :cond_a
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOutResId:I

    .line 183
    if-lez p1, :cond_b

    .line 185
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 187
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 189
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 191
    invoke-static {p1, p3, p4}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 193
    move-result p1

    .line 196
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    :cond_b
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOutResId:I

    .line 200
    if-lez p1, :cond_c

    .line 202
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 204
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 206
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 208
    invoke-static {p1, p3, p4}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 210
    move-result p1

    .line 213
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :cond_c
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSltResId:I

    .line 217
    if-lez p1, :cond_d

    .line 219
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 221
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 223
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 225
    invoke-static {p1, p3, p4}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 227
    move-result p1

    .line 230
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 234
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 236
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 238
    const p4, 0x7f08181a    # @drawable/stat_sys_data_connected_roam 'res/drawable/stat_sys_data_connected_roam.xml'

    .line 240
    invoke-static {p4, p2, p3}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 243
    move-result p2

    .line 246
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 250
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 252
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 254
    const p4, 0x7f0818a9    # @drawable/stat_sys_signal_hd_notch 'res/drawable/stat_sys_signal_hd_notch.xml'

    .line 256
    invoke-static {p4, p2, p3}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 259
    move-result p2

    .line 262
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 266
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 268
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 270
    const p4, 0x7f08181c    # @drawable/stat_sys_data_connected_roam_small 'res/drawable/stat_sys_data_connected_roam_small.xml'

    .line 272
    invoke-static {p4, p2, p3}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 275
    move-result p2

    .line 278
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSpeechHd:Landroid/widget/ImageView;

    .line 282
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 284
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 286
    const p4, 0x7f0818e8    # @drawable/stat_sys_speech_hd 'res/drawable/stat_sys_speech_hd.xml'

    .line 288
    invoke-static {p4, p2, p3}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 291
    move-result p2

    .line 294
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 295
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteNoService:Landroid/widget/ImageView;

    .line 298
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 300
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 302
    const p4, 0x7f0818fd    # @drawable/stat_sys_volte_no_service 'res/drawable/stat_sys_volte_no_service.xml'

    .line 304
    invoke-static {p4, p2, p3}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 307
    move-result p2

    .line 310
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyDarknessInternal()V

    .line 314
    return-void
    .line 317
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const v1, 0x7f14047a    # @style/TextAppearance.StatusBar.Clock

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileTypeDrawable()V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileTypeLayout(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 21
    :cond_1
    return-void
.end method

.method public final onMiuiThemeChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const v0, 0x7f14047a    # @style/TextAppearance.StatusBar.Clock

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 12
    if-eqz p1, :cond_1

    .line 14
    iget-object v0, p1, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    .line 16
    iget-object p1, p1, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    .line 18
    filled-new-array {v0, p1}, [Landroid/graphics/Paint;

    .line 20
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->setMiuiStatusBarTypeface([Landroid/graphics/Paint;)V

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 27
    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileTypeDrawable()V

    .line 31
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileTypeLayout(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 36
    :cond_2
    return-void
    .line 39
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onVisibilityAggregated(Z)V

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

.method public setDripEnd(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDripEnd:Z

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDripEnd:Z

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifi:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSpeechHd:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 18
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 28
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 46
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->setMobileTypeColor(I)V

    .line 48
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 53
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 68
    return-void
    .line 71
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
    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    if-ne p1, p2, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "StatusBarMobileView(slot="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " state="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", measuredWidth = "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeightAndState()I

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
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 45
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ") , "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-super {p0}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

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

.method public final updateMobileTypeDrawable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f060895    # @color/status_bar_textColor '#e6ffffff'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 13
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v1

    .line 24
    const v2, 0x7f07110a    # @dimen/statusbar_signal_size '7.16dp'

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 32
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->setMobileTypeColor(I)V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 37
    iput v1, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeSize:I

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    .line 41
    int-to-float v1, v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    .line 47
    iget v1, p0, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeSize:I

    .line 49
    int-to-float v1, v1

    .line 51
    const v2, 0x3f547ae1    # 0.83f

    .line 52
    mul-float/2addr v1, v2

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->measure()V

    .line 59
    :cond_0
    return-void
    .line 62
.end method

.method public final updateMobileTypeLayout(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 6
    if-eqz v0, :cond_7

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 15
    const v1, 0x7f0710e7    # @dimen/status_bar_mobile_type_half_to_top_distance '6.1818dp'

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result v0

    .line 22
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v1

    .line 28
    const v2, 0x7f0710e5    # @dimen/status_bar_mobile_left_inout_over_strength '1.4545dp'

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result v1

    .line 35
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v2

    .line 41
    const v3, 0x7f0710e8    # @dimen/status_bar_mobile_type_middle_to_strength_start '1.0909dp'

    .line 42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    move-result v2

    .line 48
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 49
    if-eqz v3, :cond_1

    .line 51
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v0

    .line 58
    const v3, 0x7f0710f9    # @dimen/status_bar_slt_width '-3.33dp'

    .line 59
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    move-result v0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 67
    iget v4, v3, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mHeight:I

    .line 69
    iget v5, v3, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mWidth:I

    .line 71
    iget v3, v3, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mExtraWidth:I

    .line 73
    add-int/2addr v3, v5

    .line 75
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    move-result-object v5

    .line 81
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    div-int/lit8 v6, v4, 0x2

    .line 84
    sub-int/2addr v0, v6

    .line 86
    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 87
    if-ne v6, v3, :cond_2

    .line 89
    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 91
    if-ne v6, v4, :cond_2

    .line 93
    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 95
    if-eq v6, v0, :cond_3

    .line 97
    :cond_2
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 99
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 101
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    :cond_3
    move v0, v3

    .line 110
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 111
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 113
    move-result-object v3

    .line 116
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 117
    div-int/lit8 v0, v0, 0x2

    .line 119
    sub-int v4, v0, v1

    .line 121
    add-int/2addr v4, v2

    .line 123
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 124
    if-eqz v2, :cond_4

    .line 126
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 128
    if-eqz v2, :cond_4

    .line 130
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    move-result-object v2

    .line 137
    const v5, 0x7f0710f8    # @dimen/status_bar_slt_left_inout_margin '1.524dp'

    .line 138
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 141
    move-result v2

    .line 144
    add-int/2addr v4, v2

    .line 145
    :cond_4
    invoke-virtual {v3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    .line 146
    move-result v2

    .line 149
    if-eq v2, v4, :cond_5

    .line 150
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 155
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 160
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 162
    move-result-object v2

    .line 165
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    add-int/2addr v0, v1

    .line 168
    neg-int v0, v0

    .line 169
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 170
    if-eqz v1, :cond_6

    .line 172
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 174
    if-eqz p1, :cond_6

    .line 176
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 180
    move-result-object p1

    .line 183
    const v1, 0x7f0710f7    # @dimen/status_bar_slt_left_inout_container_margin '6.905dp'

    .line 184
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 187
    move-result p1

    .line 190
    sub-int/2addr v0, p1

    .line 191
    :cond_6
    invoke-virtual {v2}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    .line 192
    move-result p1

    .line 195
    if-eq p1, v0, :cond_7

    .line 196
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 198
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 201
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_7
    return-void
    .line 206
.end method

.method public final updateSltState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltConnected:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    const v0, 0x7f0818d9    # @drawable/stat_sys_slt_connected 'res/drawable/stat_sys_slt_connected.xml'

    .line 11
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSltResId:I

    .line 14
    goto :goto_0

    .line 16
    :cond_1
    const v0, 0x7f0818dc    # @drawable/stat_sys_slt_disconnected 'res/drawable/stat_sys_slt_disconnected.xml'

    .line 17
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSltResId:I

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 22
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSltResId:I

    .line 24
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 26
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 28
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 30
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 37
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 43
    const/16 v1, 0x8

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileTypeLayout(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 55
    return-void
    .line 58
.end method

.method public final updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 7
    const-string v2, ""

    .line 9
    if-eqz v1, :cond_0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 18
    const-string v4, " "

    .line 20
    invoke-static {v1, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v2

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->contentDescription:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 40
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 43
    const/16 v1, 0x8

    .line 45
    const/4 v3, 0x0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->airplane:Z

    .line 50
    if-eqz v0, :cond_1

    .line 52
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 54
    if-eqz v0, :cond_2

    .line 56
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->demoMode:Z

    .line 58
    if-nez v0, :cond_2

    .line 60
    move v0, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move v0, v1

    .line 64
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    .line 65
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 67
    move-result v4

    .line 70
    const/4 v5, 0x1

    .line 71
    if-eq v4, v0, :cond_3

    .line 72
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    .line 74
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    move v0, v5

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move v0, v3

    .line 81
    :goto_2
    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vowifiId:I

    .line 82
    if-lez v4, :cond_4

    .line 84
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 86
    iget v6, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vowifiId:I

    .line 88
    if-eq v6, v4, :cond_4

    .line 90
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifiResId:I

    .line 92
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifi:Landroid/widget/ImageView;

    .line 94
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 96
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 98
    invoke-static {v4, v7, v8}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 100
    move-result v4

    .line 103
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    :cond_4
    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vonrId:I

    .line 107
    if-lez v4, :cond_5

    .line 109
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 111
    iget v6, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vonrId:I

    .line 113
    if-eq v6, v4, :cond_5

    .line 115
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVonrResId:I

    .line 117
    move v4, v5

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    move v4, v3

    .line 121
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 122
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showVonr:Z

    .line 124
    iget-boolean v8, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showVonr:Z

    .line 126
    if-ne v7, v8, :cond_6

    .line 128
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vonr:Z

    .line 130
    iget-boolean v9, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vonr:Z

    .line 132
    if-eq v7, v9, :cond_8

    .line 134
    :cond_6
    if-eqz v8, :cond_7

    .line 136
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vonr:Z

    .line 138
    if-eqz v4, :cond_7

    .line 140
    move v4, v5

    .line 142
    goto :goto_4

    .line 143
    :cond_7
    move v4, v3

    .line 144
    :goto_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mShowVonr:Z

    .line 145
    move v4, v5

    .line 147
    :cond_8
    iget v7, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    .line 148
    if-lez v7, :cond_9

    .line 150
    iget v6, v6, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    .line 152
    if-eq v6, v7, :cond_9

    .line 154
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteResId:I

    .line 156
    move v4, v5

    .line 158
    :cond_9
    if-eqz v4, :cond_a

    .line 159
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getVolteResId()I

    .line 163
    move-result v6

    .line 166
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 167
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 169
    invoke-static {v6, v7, v8}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 171
    move-result v6

    .line 174
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :cond_a
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 178
    if-eqz v4, :cond_b

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateSltState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 182
    goto/16 :goto_8

    .line 185
    :cond_b
    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->fiveGDrawableId:I

    .line 187
    if-lez v4, :cond_d

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 191
    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->fiveGDrawableId:I

    .line 193
    if-eq v2, v4, :cond_c

    .line 195
    iput v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImageResId:I

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 199
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 201
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 203
    invoke-static {v4, v6, v7}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 205
    move-result v4

    .line 208
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 212
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 217
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 222
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 227
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    goto/16 :goto_8

    .line 232
    :cond_d
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeSingle:Z

    .line 234
    if-eqz v4, :cond_10

    .line 236
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 238
    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 240
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 245
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 250
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 255
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 260
    if-eqz v2, :cond_f

    .line 262
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->wifiAvailable:Z

    .line 264
    if-eqz v2, :cond_e

    .line 266
    goto :goto_5

    .line 268
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 269
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    goto :goto_8

    .line 274
    :cond_f
    :goto_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 275
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    goto :goto_8

    .line 280
    :cond_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 281
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 283
    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 285
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    move-result v4

    .line 290
    if-eqz v4, :cond_12

    .line 291
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 293
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 295
    if-eqz v4, :cond_11

    .line 297
    goto :goto_6

    .line 299
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 300
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 305
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 310
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    goto :goto_8

    .line 315
    :cond_12
    :goto_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeDrawable:Lcom/android/systemui/statusbar/views/MobileTypeDrawable;

    .line 316
    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 318
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 323
    move-result v7

    .line 326
    if-eqz v7, :cond_13

    .line 327
    goto :goto_7

    .line 329
    :cond_13
    move-object v2, v6

    .line 330
    :goto_7
    iget-object v6, v4, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    .line 331
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 333
    move-result v6

    .line 336
    if-nez v6, :cond_14

    .line 337
    iput-object v2, v4, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    .line 339
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/views/MobileTypeDrawable;->measure()V

    .line 341
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->updateMobileTypeLayout(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 344
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeImage:Landroid/widget/ImageView;

    .line 347
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileTypeSingle:Landroid/widget/TextView;

    .line 352
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 357
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlt:Landroid/widget/ImageView;

    .line 362
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    :goto_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 367
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 369
    iget-boolean v6, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 371
    if-ne v4, v6, :cond_16

    .line 373
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    .line 375
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    .line 377
    if-ne v4, v7, :cond_16

    .line 379
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 381
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 383
    if-eq v2, v4, :cond_15

    .line 385
    goto :goto_9

    .line 387
    :cond_15
    move v2, v3

    .line 388
    goto :goto_a

    .line 389
    :cond_16
    :goto_9
    move v2, v5

    .line 390
    :goto_a
    if-eqz v2, :cond_1a

    .line 391
    if-eqz v6, :cond_1a

    .line 393
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityIn:Z

    .line 395
    if-eqz v2, :cond_17

    .line 397
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 399
    if-eqz v4, :cond_17

    .line 401
    const v2, 0x7f0818af    # @drawable/stat_sys_signal_inout_left 'res/drawable/stat_sys_signal_inout_left.xml'

    .line 403
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOutResId:I

    .line 406
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOutResId:I

    .line 408
    goto :goto_b

    .line 410
    :cond_17
    if-eqz v2, :cond_18

    .line 411
    const v2, 0x7f0818ac    # @drawable/stat_sys_signal_in_left 'res/drawable/stat_sys_signal_in_left.xml'

    .line 413
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOutResId:I

    .line 416
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOutResId:I

    .line 418
    goto :goto_b

    .line 420
    :cond_18
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->activityOut:Z

    .line 421
    if-eqz v2, :cond_19

    .line 423
    const v2, 0x7f0818b5    # @drawable/stat_sys_signal_out_left 'res/drawable/stat_sys_signal_out_left.xml'

    .line 425
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOutResId:I

    .line 428
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOutResId:I

    .line 430
    goto :goto_b

    .line 432
    :cond_19
    const v2, 0x7f081897    # @drawable/stat_sys_signal_data_left 'res/drawable/stat_sys_signal_data_left.xml'

    .line 433
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOutResId:I

    .line 436
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOutResId:I

    .line 438
    :goto_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 440
    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOutResId:I

    .line 442
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 444
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 446
    invoke-static {v4, v6, v7}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 448
    move-result v4

    .line 451
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 455
    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOutResId:I

    .line 457
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 459
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 461
    invoke-static {v4, v6, v7}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 463
    move-result v4

    .line 466
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 467
    :cond_1a
    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    .line 470
    if-lez v2, :cond_1b

    .line 472
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 474
    iget v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    .line 476
    if-eq v4, v2, :cond_1b

    .line 478
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileResId:I

    .line 480
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobile:Landroid/widget/ImageView;

    .line 482
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mUseTint:Z

    .line 484
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLight:Z

    .line 486
    invoke-static {v2, v6, v7}, Lcom/android/systemui/statusbar/MiuiStatusBarIconViewHelper;->transformResId(IZZ)I

    .line 488
    move-result v2

    .line 491
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 492
    :cond_1b
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->wifiAvailable:Z

    .line 495
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 497
    if-eqz v4, :cond_1c

    .line 499
    iget-boolean v6, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 501
    if-eqz v6, :cond_1c

    .line 503
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 505
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 510
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    goto :goto_c

    .line 515
    :cond_1c
    if-eqz v4, :cond_1d

    .line 516
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 518
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 523
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    goto :goto_c

    .line 528
    :cond_1d
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeInMMS:Z

    .line 529
    if-nez v4, :cond_1f

    .line 531
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 533
    if-eqz v4, :cond_1e

    .line 535
    if-eqz v2, :cond_1f

    .line 537
    :cond_1e
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 539
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 544
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    goto :goto_c

    .line 549
    :cond_1f
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mLeftInOut:Landroid/widget/ImageView;

    .line 550
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mRightInOut:Landroid/widget/ImageView;

    .line 555
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    :goto_c
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 560
    if-eqz v4, :cond_20

    .line 562
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 564
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 569
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 571
    goto/16 :goto_e

    .line 574
    :cond_20
    sget-boolean v4, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 576
    if-eqz v4, :cond_21

    .line 578
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 580
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 585
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 587
    goto :goto_e

    .line 590
    :cond_21
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 591
    if-nez v4, :cond_23

    .line 593
    if-eqz v2, :cond_22

    .line 595
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 597
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 602
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 604
    goto :goto_e

    .line 607
    :cond_22
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 608
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 613
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    goto :goto_e

    .line 618
    :cond_23
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeInMMS:Z

    .line 619
    if-eqz v4, :cond_24

    .line 621
    if-eqz v2, :cond_25

    .line 623
    :cond_24
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showDataTypeDataDisconnected:Z

    .line 625
    if-eqz v4, :cond_26

    .line 627
    :cond_25
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 629
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 634
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    goto :goto_e

    .line 639
    :cond_26
    if-nez v2, :cond_29

    .line 640
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 642
    if-nez v4, :cond_27

    .line 644
    goto :goto_d

    .line 646
    :cond_27
    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->fiveGDrawableId:I

    .line 647
    if-lez v4, :cond_28

    .line 649
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 651
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 656
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 658
    goto :goto_e

    .line 661
    :cond_28
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 662
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 667
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 669
    goto :goto_e

    .line 672
    :cond_29
    :goto_d
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileLeftContainer:Landroid/view/View;

    .line 673
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRightContainer:Landroid/view/View;

    .line 678
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :goto_e
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 683
    if-eqz v4, :cond_2a

    .line 685
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 687
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 689
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 692
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 694
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 697
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    goto/16 :goto_15

    .line 702
    :cond_2a
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 704
    if-eqz v4, :cond_2e

    .line 706
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 708
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 713
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 715
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 718
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 720
    if-eqz v4, :cond_2b

    .line 722
    move v4, v3

    .line 724
    goto :goto_f

    .line 725
    :cond_2b
    move v4, v1

    .line 726
    :goto_f
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 727
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDripEnd:Z

    .line 730
    if-eqz v2, :cond_2c

    .line 732
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->wifiAvailable:Z

    .line 734
    if-eqz v2, :cond_2c

    .line 736
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 738
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 740
    goto/16 :goto_15

    .line 743
    :cond_2c
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 745
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volte:Z

    .line 747
    if-eqz v4, :cond_2d

    .line 749
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVolte:Z

    .line 751
    if-nez v4, :cond_2d

    .line 753
    move v4, v3

    .line 755
    goto :goto_10

    .line 756
    :cond_2d
    move v4, v1

    .line 757
    :goto_10
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 758
    goto/16 :goto_15

    .line 761
    :cond_2e
    sget-boolean v4, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 763
    if-nez v4, :cond_31

    .line 765
    if-eqz v2, :cond_31

    .line 767
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 769
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 771
    if-eqz v4, :cond_2f

    .line 773
    move v4, v3

    .line 775
    goto :goto_11

    .line 776
    :cond_2f
    move v4, v1

    .line 777
    :goto_11
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 778
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 781
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volte:Z

    .line 783
    if-eqz v4, :cond_30

    .line 785
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 787
    if-nez v4, :cond_30

    .line 789
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVolte:Z

    .line 791
    if-nez v4, :cond_30

    .line 793
    move v4, v3

    .line 795
    goto :goto_12

    .line 796
    :cond_30
    move v4, v1

    .line 797
    :goto_12
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 798
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 801
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 803
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 806
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    goto :goto_15

    .line 811
    :cond_31
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallRoaming:Landroid/widget/ImageView;

    .line 812
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 814
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSmallHd:Landroid/widget/ImageView;

    .line 817
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 819
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 822
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 824
    if-eqz v4, :cond_32

    .line 826
    move v4, v3

    .line 828
    goto :goto_13

    .line 829
    :cond_32
    move v4, v1

    .line 830
    :goto_13
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 831
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 834
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volte:Z

    .line 836
    if-eqz v4, :cond_33

    .line 838
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVolte:Z

    .line 840
    if-nez v4, :cond_33

    .line 842
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNewHD:Z

    .line 844
    if-nez v4, :cond_33

    .line 846
    move v4, v3

    .line 848
    goto :goto_14

    .line 849
    :cond_33
    move v4, v1

    .line 850
    :goto_14
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 851
    :goto_15
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVowifi:Landroid/widget/ImageView;

    .line 854
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vowifi:Z

    .line 856
    if-eqz v4, :cond_34

    .line 858
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVowifi:Z

    .line 860
    if-nez v4, :cond_34

    .line 862
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->demoMode:Z

    .line 864
    if-nez v4, :cond_34

    .line 866
    move v4, v3

    .line 868
    goto :goto_16

    .line 869
    :cond_34
    move v4, v1

    .line 870
    :goto_16
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 871
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSpeechHd:Landroid/widget/ImageView;

    .line 874
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->speechHd:Z

    .line 876
    if-eqz v4, :cond_35

    .line 878
    move v4, v3

    .line 880
    goto :goto_17

    .line 881
    :cond_35
    move v4, v1

    .line 882
    :goto_17
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 883
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteNoService:Landroid/widget/ImageView;

    .line 886
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteNoService:Z

    .line 888
    if-eqz v4, :cond_36

    .line 890
    move v1, v3

    .line 892
    :cond_36
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 893
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 896
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 898
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->visible:Z

    .line 900
    if-ne v2, v4, :cond_37

    .line 902
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 904
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    .line 906
    if-ne v2, v4, :cond_37

    .line 908
    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    .line 910
    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    .line 912
    if-ne v2, v4, :cond_37

    .line 914
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->airplane:Z

    .line 916
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->airplane:Z

    .line 918
    if-ne v2, v4, :cond_37

    .line 920
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 922
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 924
    if-ne v2, v4, :cond_37

    .line 926
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->wifiAvailable:Z

    .line 928
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->wifiAvailable:Z

    .line 930
    if-ne v2, v4, :cond_37

    .line 932
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 934
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showName:Ljava/lang/String;

    .line 936
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 938
    move-result v1

    .line 941
    if-eqz v1, :cond_37

    .line 942
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 944
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volte:Z

    .line 946
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volte:Z

    .line 948
    if-ne v2, v4, :cond_37

    .line 950
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVolte:Z

    .line 952
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVolte:Z

    .line 954
    if-ne v2, v4, :cond_37

    .line 956
    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vowifiId:I

    .line 958
    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vowifiId:I

    .line 960
    if-ne v2, v4, :cond_37

    .line 962
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vowifi:Z

    .line 964
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->vowifi:Z

    .line 966
    if-ne v2, v4, :cond_37

    .line 968
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVowifi:Z

    .line 970
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->hideVowifi:Z

    .line 972
    if-ne v2, v4, :cond_37

    .line 974
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->speechHd:Z

    .line 976
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->speechHd:Z

    .line 978
    if-ne v2, v4, :cond_37

    .line 980
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteNoService:Z

    .line 982
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteNoService:Z

    .line 984
    if-ne v2, v4, :cond_37

    .line 986
    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->fiveGDrawableId:I

    .line 988
    iget v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->fiveGDrawableId:I

    .line 990
    if-ne v2, v4, :cond_37

    .line 992
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showDataTypeDataDisconnected:Z

    .line 994
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showDataTypeDataDisconnected:Z

    .line 996
    if-ne v2, v4, :cond_37

    .line 998
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeInMMS:Z

    .line 1000
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeInMMS:Z

    .line 1002
    if-ne v2, v4, :cond_37

    .line 1004
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeSingle:Z

    .line 1006
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showMobileDataTypeSingle:Z

    .line 1008
    if-ne v2, v4, :cond_37

    .line 1010
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->demoMode:Z

    .line 1012
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->demoMode:Z

    .line 1014
    if-ne v2, v4, :cond_37

    .line 1016
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 1018
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->sltEnabled:Z

    .line 1020
    if-eq v1, v2, :cond_38

    .line 1022
    :cond_37
    move v3, v5

    .line 1024
    :cond_38
    or-int/2addr v0, v3

    .line 1025
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 1026
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyDarknessInternal()V

    .line 1028
    return v0
    .line 1031
.end method

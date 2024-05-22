.class public final Lcom/android/systemui/statusbar/views/ClickableToast;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sHandler:Landroid/os/Handler;


# instance fields
.field public final context:Landroid/content/Context;

.field public final mCancelRunnable:Lcom/android/systemui/statusbar/views/ClickableToast$2;

.field public mParams:Landroid/view/WindowManager$LayoutParams;

.field public mShowRunnable:Lcom/android/systemui/statusbar/views/ClickableToast$2;

.field public mView:Landroid/view/View;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    sput-object v0, Lcom/android/systemui/statusbar/views/ClickableToast;->sHandler:Landroid/os/Handler;

    .line 11
    return-void
    .line 13
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->context:Landroid/content/Context;

    .line 5
    const-string/jumbo v0, "window"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/WindowManager;

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    move-result-object v0

    .line 21
    const v1, 0x7f0d0064    # @layout/clickable_toast 'res/layout/clickable_toast.xml'

    .line 22
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 30
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 32
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 37
    const/4 v1, -0x2

    .line 39
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 40
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 42
    const/4 v1, -0x3

    .line 44
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 45
    const v1, 0x1030004    # @android:style/Animation.Toast

    .line 47
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 50
    const/16 v1, 0x7f6

    .line 52
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 54
    const/16 v1, 0xa8

    .line 56
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 60
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 76
    move-result-object v0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move-object v0, v2

    .line 81
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    move-result-object v1

    .line 85
    const v3, 0x10e0112    # @android:integer/config_windowOutsetBottom

    .line 86
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 89
    move-result v1

    .line 92
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 96
    move-result v0

    .line 99
    invoke-static {v1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 100
    move-result v0

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 104
    if-nez v1, :cond_1

    .line 106
    goto :goto_1

    .line 108
    :cond_1
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 109
    :goto_1
    if-nez v1, :cond_2

    .line 111
    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    move-result-object v0

    .line 117
    const v3, 0x10502fc

    .line 118
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 121
    move-result v0

    .line 124
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 125
    :goto_2
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->BACKGROUND_BLUR_SUPPORTED:Z

    .line 127
    const/4 v1, 0x0

    .line 129
    if-eqz v0, :cond_a

    .line 130
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SHADOW_SUPPORTED:Z

    .line 132
    if-eqz v0, :cond_a

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 136
    if-eqz v0, :cond_3

    .line 138
    const v3, 0x7f081976    # @drawable/toast_frame_new 'res/drawable/toast_frame_new.xml'

    .line 140
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 146
    if-nez v0, :cond_4

    .line 148
    goto :goto_3

    .line 150
    :cond_4
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v3

    .line 156
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 160
    move-result v3

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    move-result-object v4

    .line 167
    const v5, 0x7f071202    # @dimen/toast_y_offset_new '92.0dp'

    .line 168
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 171
    move-result v4

    .line 174
    add-int/2addr v4, v3

    .line 175
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 176
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 178
    if-eqz v0, :cond_5

    .line 180
    const v3, 0x7f0a01f2    # @id/click_btn_text

    .line 182
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    move-result-object v0

    .line 188
    check-cast v0, Landroid/widget/TextView;

    .line 189
    goto :goto_4

    .line 191
    :cond_5
    move-object v0, v2

    .line 192
    :goto_4
    if-eqz v0, :cond_6

    .line 193
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 195
    move-result-object v3

    .line 198
    goto :goto_5

    .line 199
    :cond_6
    move-object v3, v2

    .line 200
    :goto_5
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 201
    if-eqz v4, :cond_7

    .line 203
    move-object v2, v3

    .line 205
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 206
    :cond_7
    if-eqz v2, :cond_8

    .line 208
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 210
    :cond_8
    if-eqz v0, :cond_9

    .line 213
    const v2, 0x7f0603c6    # @color/miui_shadow_toast_text_color '#cc000000'

    .line 215
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 218
    move-result v2

    .line 221
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    :cond_9
    if-eqz v0, :cond_a

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 227
    move-result-object p1

    .line 230
    const v2, 0x7f07098c    # @dimen/miui_shadow_clickable_toast_text_size '14.0sp'

    .line 231
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 234
    move-result p1

    .line 237
    int-to-float p1, p1

    .line 238
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 239
    :cond_a
    new-instance p1, Lcom/android/systemui/statusbar/views/ClickableToast$2;

    .line 242
    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/views/ClickableToast$2;-><init>(Lcom/android/systemui/statusbar/views/ClickableToast;I)V

    .line 244
    iput-object p1, p0, Lcom/android/systemui/statusbar/views/ClickableToast;->mCancelRunnable:Lcom/android/systemui/statusbar/views/ClickableToast$2;

    .line 247
    return-void
    .line 249
.end method

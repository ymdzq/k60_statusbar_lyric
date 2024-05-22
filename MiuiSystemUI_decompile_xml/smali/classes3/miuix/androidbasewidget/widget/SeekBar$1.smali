.class public final Lmiuix/androidbasewidget/widget/SeekBar$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field public final synthetic this$0:Lmiuix/androidbasewidget/widget/SeekBar;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 2
    iget-boolean v1, v0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 13
    invoke-static {v1}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    .line 15
    move-result v1

    .line 18
    sub-int/2addr v0, v1

    .line 19
    int-to-float v1, v0

    .line 20
    const/high16 v3, 0x3f000000    # 0.5f

    .line 21
    mul-float/2addr v3, v1

    .line 23
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 24
    move-result v3

    .line 27
    if-lez v0, :cond_0

    .line 28
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 30
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    .line 32
    move-result v0

    .line 35
    sub-int v0, p2, v0

    .line 36
    int-to-float v0, v0

    .line 38
    div-float/2addr v0, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 42
    iget v4, v1, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    .line 44
    cmpl-float v4, v0, v4

    .line 46
    const-string v5, "targe"

    .line 48
    if-lez v4, :cond_1

    .line 50
    iget v4, v1, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    .line 52
    cmpg-float v0, v0, v4

    .line 54
    if-gez v0, :cond_1

    .line 56
    iput v3, v1, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 58
    goto :goto_1

    .line 60
    :cond_1
    int-to-float v0, p2

    .line 61
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 62
    move-result v0

    .line 65
    iput v0, v1, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 66
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 68
    iget-object v1, v0, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    .line 70
    iget v0, v0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v0

    .line 77
    filled-new-array {v5, v0}, [Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 81
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 82
    :goto_1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 85
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    .line 87
    move-result v0

    .line 90
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 91
    iget v3, v1, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    .line 93
    if-eq v0, v3, :cond_2

    .line 95
    iget-object v0, v1, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v1

    .line 102
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 103
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 105
    const/4 v4, 0x3

    .line 108
    new-array v4, v4, [F

    .line 109
    fill-array-data v4, :array_0

    .line 111
    invoke-virtual {v3, v2, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 114
    move-result-object v3

    .line 117
    new-instance v4, Lmiuix/androidbasewidget/widget/SeekBar$1$1;

    .line 118
    invoke-direct {v4, p0}, Lmiuix/androidbasewidget/widget/SeekBar$1$1;-><init>(Lmiuix/androidbasewidget/widget/SeekBar$1;)V

    .line 120
    filled-new-array {v4}, [Lmiuix/animation/listener/TransitionListener;

    .line 123
    move-result-object v4

    .line 126
    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 127
    move-result-object v3

    .line 130
    filled-new-array {v5, v1, v3}, [Ljava/lang/Object;

    .line 131
    move-result-object v1

    .line 134
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 135
    :cond_2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 138
    iget v1, v0, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F

    .line 140
    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    .line 142
    move-result v0

    .line 145
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 146
    iget v3, v1, Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F

    .line 148
    invoke-virtual {v1, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I

    .line 150
    move-result v1

    .line 153
    if-ge p2, v0, :cond_3

    .line 154
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 156
    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 158
    move p2, v0

    .line 161
    goto :goto_2

    .line 162
    :cond_3
    if-le p2, v1, :cond_4

    .line 163
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 165
    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 167
    move p2, v1

    .line 170
    :cond_4
    :goto_2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 171
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    .line 173
    move-result v0

    .line 176
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 177
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    .line 179
    move-result v1

    .line 182
    if-eq v0, v1, :cond_5

    .line 183
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 185
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    .line 187
    move-result v0

    .line 190
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 191
    invoke-static {v1}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    .line 193
    move-result v1

    .line 196
    if-ne v0, v1, :cond_6

    .line 197
    :cond_5
    const/4 v2, 0x1

    .line 199
    :cond_6
    if-eqz p3, :cond_c

    .line 200
    const-string v0, "2.0"

    .line 202
    if-eqz v2, :cond_b

    .line 204
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 206
    iget-boolean v1, v1, Lmiuix/androidbasewidget/widget/SeekBar;->mHasEdgeReached:Z

    .line 208
    if-nez v1, :cond_b

    .line 210
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 212
    move-result v0

    .line 215
    if-eqz v0, :cond_a

    .line 216
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 218
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    .line 220
    move-result v0

    .line 223
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 224
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    .line 226
    move-result v1

    .line 229
    if-ne v0, v1, :cond_8

    .line 230
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 232
    if-nez v0, :cond_7

    .line 234
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    .line 236
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 238
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 240
    move-result-object v1

    .line 243
    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 244
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 247
    :cond_7
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 249
    const/16 v1, 0xcb

    .line 251
    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)V

    .line 253
    goto :goto_3

    .line 256
    :cond_8
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 257
    if-nez v0, :cond_9

    .line 259
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    .line 261
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 263
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 265
    move-result-object v1

    .line 268
    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 269
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 272
    :cond_9
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 274
    const/16 v1, 0xca

    .line 276
    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)V

    .line 278
    goto :goto_3

    .line 281
    :cond_a
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 282
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 284
    goto :goto_3

    .line 287
    :cond_b
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 288
    move-result v0

    .line 291
    if-eqz v0, :cond_c

    .line 292
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    .line 294
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 296
    :cond_c
    :goto_3
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 299
    iput-boolean v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mHasEdgeReached:Z

    .line 301
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 303
    if-eqz p0, :cond_d

    .line 305
    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 307
    :cond_d
    return-void

    .line 310
    nop

    .line 311
    :array_0
    .array-data 4
        0x43af0000    # 350.0f
        0x3f666666    # 0.9f
        0x3e19999a    # 0.15f
    .end array-data
    .line 312
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 2
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 2
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

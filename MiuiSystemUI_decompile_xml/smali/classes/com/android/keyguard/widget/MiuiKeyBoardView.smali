.class public Lcom/android/keyguard/widget/MiuiKeyBoardView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final LETTER_SIZE_GROUP:[[F

.field public static final NUMBER_SIZE_GROUP:[[F

.field public static final NUMBER_SIZE_GROUP_PAD:[[F

.field public static final SYMBOL_SIZE_GROUP:[[F

.field public static final VERTICAL_MARGIN_RATIO:F


# instance fields
.field public final mAllKeys:Ljava/util/ArrayList;

.field public mBtnBack:Landroid/view/View;

.field public mBtnCapsLock:Landroid/view/View;

.field public mBtnLetterDelete:Landroid/view/View;

.field public mBtnLetterOK:Landroid/view/View;

.field public mBtnLetterSpace:Landroid/view/View;

.field public mBtnNumberDelete:Landroid/view/View;

.field public mBtnSymbolDelete:Landroid/view/View;

.field public mBtnSymbolLock:Landroid/view/View;

.field public mBtnSymbolOK:Landroid/view/View;

.field public mBtnSymbolSpace:Landroid/view/View;

.field public mBtnToLetterBoard:Landroid/view/View;

.field public mBtnToNumberBoard:Landroid/view/View;

.field public mBtnToSymbolBoard:Landroid/view/View;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mConfirmHide:Lcom/android/keyguard/widget/MiuiKeyBoardView$1;

.field public final mContext:Landroid/content/Context;

.field public mIsShowingPreview:Z

.field public mIsSymbolLock:Z

.field public mIsUpperMode:Z

.field public mKeyboardListeners:Ljava/util/ArrayList;

.field public mLetterBoard:Landroid/widget/FrameLayout;

.field public mNumberBoard:Landroid/widget/FrameLayout;

.field public mPaddingLeft:I

.field public mPaddingTop:I

.field public mPopupViewHeight:I

.field public mPopupViewWidth:I

.field public mPopupViewX:I

.field public mPopupViewY:I

.field public mPreviewText:Landroid/widget/TextView;

.field public final mSendDeleteActionRunnable:Lcom/android/keyguard/widget/MiuiKeyBoardView$1;

.field public final mShowPreviewAnimator:Landroid/animation/ValueAnimator;

.field public mShowPreviewLastTime:J

.field public mSymbolBoard:Landroid/widget/FrameLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const v1, 0x3e0f5c29    # 0.14f

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const v1, 0x3e051eb8    # 0.13f

    .line 10
    :goto_0
    sput v1, Lcom/android/keyguard/widget/MiuiKeyBoardView;->VERTICAL_MARGIN_RATIO:F

    .line 13
    if-eqz v0, :cond_1

    .line 15
    const v1, 0x3fc8f5c3    # 1.57f

    .line 17
    goto :goto_1

    .line 20
    :cond_1
    const v1, 0x3fcccccd    # 1.6f

    .line 21
    :goto_1
    if-eqz v0, :cond_2

    .line 24
    const v2, 0x4053d70a    # 3.31f

    .line 26
    goto :goto_2

    .line 29
    :cond_2
    const v2, 0x4059999a    # 3.4f

    .line 30
    :goto_2
    if-eqz v0, :cond_3

    .line 33
    const v3, 0x40070a3d    # 2.11f

    .line 35
    goto :goto_3

    .line 38
    :cond_3
    const v3, 0x400ccccd    # 2.2f

    .line 39
    :goto_3
    if-eqz v0, :cond_4

    .line 42
    const v0, 0x408b851f    # 4.36f

    .line 44
    goto :goto_4

    .line 47
    :cond_4
    const v0, 0x40933333    # 4.6f

    .line 48
    :goto_4
    const/16 v4, 0xa

    .line 51
    new-array v5, v4, [F

    .line 53
    fill-array-data v5, :array_0

    .line 55
    new-array v6, v4, [F

    .line 58
    fill-array-data v6, :array_1

    .line 60
    const/16 v7, 0x9

    .line 63
    new-array v8, v7, [F

    .line 65
    fill-array-data v8, :array_2

    .line 67
    new-array v9, v7, [F

    .line 70
    const/4 v10, 0x0

    .line 72
    aput v1, v9, v10

    .line 73
    const/4 v11, 0x1

    .line 75
    const/high16 v12, 0x3f800000    # 1.0f

    .line 76
    aput v12, v9, v11

    .line 78
    const/4 v13, 0x2

    .line 80
    aput v12, v9, v13

    .line 81
    const/4 v14, 0x3

    .line 83
    aput v12, v9, v14

    .line 84
    const/4 v15, 0x4

    .line 86
    aput v12, v9, v15

    .line 87
    const/16 v16, 0x5

    .line 89
    aput v12, v9, v16

    .line 91
    const/4 v7, 0x6

    .line 93
    aput v12, v9, v7

    .line 94
    const/16 v17, 0x7

    .line 96
    aput v12, v9, v17

    .line 98
    const/16 v18, 0x8

    .line 100
    aput v1, v9, v18

    .line 102
    new-array v4, v7, [F

    .line 104
    aput v1, v4, v10

    .line 106
    aput v1, v4, v11

    .line 108
    aput v12, v4, v13

    .line 110
    aput v3, v4, v14

    .line 112
    aput v12, v4, v15

    .line 114
    aput v2, v4, v16

    .line 116
    filled-new-array {v5, v6, v8, v9, v4}, [[F

    .line 118
    move-result-object v3

    .line 121
    sput-object v3, Lcom/android/keyguard/widget/MiuiKeyBoardView;->LETTER_SIZE_GROUP:[[F

    .line 122
    const/16 v3, 0xa

    .line 124
    new-array v4, v3, [F

    .line 126
    fill-array-data v4, :array_3

    .line 128
    new-array v3, v3, [F

    .line 131
    fill-array-data v3, :array_4

    .line 133
    const/16 v5, 0x9

    .line 136
    new-array v6, v5, [F

    .line 138
    fill-array-data v6, :array_5

    .line 140
    new-array v5, v5, [F

    .line 143
    aput v1, v5, v10

    .line 145
    aput v12, v5, v11

    .line 147
    aput v12, v5, v13

    .line 149
    aput v12, v5, v14

    .line 151
    aput v12, v5, v15

    .line 153
    aput v12, v5, v16

    .line 155
    aput v12, v5, v7

    .line 157
    aput v12, v5, v17

    .line 159
    aput v1, v5, v18

    .line 161
    new-array v1, v14, [F

    .line 163
    aput v2, v1, v10

    .line 165
    aput v0, v1, v11

    .line 167
    aput v2, v1, v13

    .line 169
    filled-new-array {v4, v3, v6, v5, v1}, [[F

    .line 171
    move-result-object v0

    .line 174
    sput-object v0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->SYMBOL_SIZE_GROUP:[[F

    .line 175
    new-array v0, v14, [F

    .line 177
    fill-array-data v0, :array_6

    .line 179
    new-array v1, v14, [F

    .line 182
    fill-array-data v1, :array_7

    .line 184
    new-array v2, v14, [F

    .line 187
    fill-array-data v2, :array_8

    .line 189
    new-array v3, v14, [F

    .line 192
    fill-array-data v3, :array_9

    .line 194
    filled-new-array {v0, v1, v2, v3}, [[F

    .line 197
    move-result-object v0

    .line 200
    sput-object v0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->NUMBER_SIZE_GROUP:[[F

    .line 201
    new-array v0, v14, [F

    .line 203
    fill-array-data v0, :array_a

    .line 205
    new-array v1, v14, [F

    .line 208
    fill-array-data v1, :array_b

    .line 210
    new-array v2, v14, [F

    .line 213
    fill-array-data v2, :array_c

    .line 215
    new-array v3, v14, [F

    .line 218
    fill-array-data v3, :array_d

    .line 220
    filled-new-array {v0, v1, v2, v3}, [[F

    .line 223
    move-result-object v0

    .line 226
    sput-object v0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->NUMBER_SIZE_GROUP_PAD:[[F

    .line 227
    return-void

    .line 229
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 230
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 254
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 278
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 300
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 324
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 348
    :array_6
    .array-data 4
        0x40733333    # 3.8f
        0x40733333    # 3.8f
        0x40733333    # 3.8f
    .end array-data

    .line 370
    :array_7
    .array-data 4
        0x40733333    # 3.8f
        0x40733333    # 3.8f
        0x40733333    # 3.8f
    .end array-data

    .line 380
    :array_8
    .array-data 4
        0x40733333    # 3.8f
        0x40733333    # 3.8f
        0x40733333    # 3.8f
    .end array-data

    .line 390
    :array_9
    .array-data 4
        0x40733333    # 3.8f
        0x40733333    # 3.8f
        0x40733333    # 3.8f
    .end array-data

    .line 400
    :array_a
    .array-data 4
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
    .end array-data

    .line 410
    :array_b
    .array-data 4
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
    .end array-data

    .line 420
    :array_c
    .array-data 4
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
    .end array-data

    .line 430
    :array_d
    .array-data 4
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
        0x406ccccd    # 3.7f
    .end array-data
    .line 440
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mIsUpperMode:Z

    .line 6
    iput-boolean p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mIsSymbolLock:Z

    .line 7
    iput-boolean p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mIsShowingPreview:Z

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewLastTime:J

    .line 9
    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 10
    new-instance p3, Landroid/content/res/Configuration;

    invoke-direct {p3}, Landroid/content/res/Configuration;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 11
    new-instance p3, Lcom/android/keyguard/widget/MiuiKeyBoardView$1;

    invoke-direct {p3, p0, p2}, Lcom/android/keyguard/widget/MiuiKeyBoardView$1;-><init>(Lcom/android/keyguard/widget/MiuiKeyBoardView;I)V

    iput-object p3, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mSendDeleteActionRunnable:Lcom/android/keyguard/widget/MiuiKeyBoardView$1;

    .line 12
    new-instance p2, Lcom/android/keyguard/widget/MiuiKeyBoardView$1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/keyguard/widget/MiuiKeyBoardView$1;-><init>(Lcom/android/keyguard/widget/MiuiKeyBoardView;I)V

    iput-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mConfirmHide:Lcom/android/keyguard/widget/MiuiKeyBoardView$1;

    .line 13
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const p2, 0x7f0d00e9    # @layout/keyboard_letter_board 'res/layout/keyboard_letter_board.xml'

    .line 14
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0d00f8    # @layout/keyboard_symbol_board 'res/layout/keyboard_symbol_board.xml'

    .line 15
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0d00ea    # @layout/keyboard_number_board 'res/layout/keyboard_number_board.xml'

    .line 16
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0d00e8    # @layout/keyboard_key_preview_text 'res/layout/keyboard_key_preview_text.xml'

    .line 17
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public final keyboardOnLayout(Landroid/view/ViewGroup;IIIII[[F)V
    .locals 16

    .line 1
    move/from16 v0, p3

    .line 2
    move/from16 v1, p4

    .line 4
    move-object/from16 v2, p7

    .line 6
    array-length v3, v2

    .line 8
    move-object/from16 v4, p0

    .line 9
    iget v4, v4, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPaddingTop:I

    .line 11
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    if-ge v5, v3, :cond_3

    .line 15
    aget-object v7, v2, v5

    .line 17
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    :goto_1
    array-length v10, v7

    .line 21
    if-ge v9, v10, :cond_0

    .line 22
    aget v10, v7, v9

    .line 24
    int-to-float v11, v0

    .line 26
    mul-float/2addr v10, v11

    .line 27
    add-float/2addr v8, v10

    .line 28
    add-int/lit8 v9, v9, 0x1

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    array-length v9, v7

    .line 32
    add-int/lit8 v9, v9, -0x1

    .line 33
    mul-int/2addr v9, v1

    .line 35
    int-to-float v9, v9

    .line 36
    add-float/2addr v8, v9

    .line 37
    move/from16 v9, p2

    .line 38
    int-to-float v10, v9

    .line 40
    sub-float/2addr v10, v8

    .line 41
    const/high16 v8, 0x40000000    # 2.0f

    .line 42
    div-float/2addr v10, v8

    .line 44
    float-to-int v8, v10

    .line 45
    const/4 v10, 0x0

    .line 46
    :goto_2
    array-length v11, v7

    .line 47
    if-ge v10, v11, :cond_2

    .line 48
    move-object/from16 v11, p1

    .line 50
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object v12

    .line 55
    check-cast v12, Lcom/android/keyguard/widget/MiuiKeyBoardView$KeyButton;

    .line 56
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 58
    move-result-object v13

    .line 61
    const-string v14, "!"

    .line 62
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v13

    .line 67
    if-eqz v13, :cond_1

    .line 68
    int-to-float v13, v8

    .line 70
    int-to-float v14, v0

    .line 71
    aget v15, v7, v10

    .line 72
    const/high16 v2, 0x3f800000    # 1.0f

    .line 74
    invoke-static {v15, v2, v14, v13}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 76
    move-result v2

    .line 79
    float-to-int v2, v2

    .line 80
    goto :goto_3

    .line 81
    :cond_1
    move v2, v8

    .line 82
    :goto_3
    int-to-float v8, v8

    .line 83
    int-to-float v13, v0

    .line 84
    aget v14, v7, v10

    .line 85
    mul-float/2addr v14, v13

    .line 87
    add-float/2addr v14, v8

    .line 88
    float-to-int v14, v14

    .line 89
    add-int v15, v4, p5

    .line 90
    invoke-virtual {v12, v2, v4, v14, v15}, Lcom/android/keyguard/widget/MiuiKeyBoardView$KeyButton;->layout(IIII)V

    .line 92
    aget v2, v7, v10

    .line 95
    mul-float/2addr v13, v2

    .line 97
    int-to-float v2, v1

    .line 98
    add-float/2addr v13, v2

    .line 99
    add-float/2addr v13, v8

    .line 100
    float-to-int v8, v13

    .line 101
    add-int/lit8 v6, v6, 0x1

    .line 102
    add-int/lit8 v10, v10, 0x1

    .line 104
    move-object/from16 v2, p7

    .line 106
    goto :goto_2

    .line 108
    :cond_2
    move-object/from16 v11, p1

    .line 109
    add-int v2, p6, p5

    .line 111
    add-int/2addr v4, v2

    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 114
    move-object/from16 v2, p7

    .line 116
    goto :goto_0

    .line 118
    :cond_3
    return-void
    .line 119
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 15
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 18
    return-void
    .line 21
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    .line 9
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne p1, v0, :cond_5

    .line 13
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/keyguard/widget/MiuiKeyBoardView$KeyButton;

    .line 31
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    instance-of v3, v3, Ljava/lang/String;

    .line 37
    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 47
    move-result v4

    .line 50
    if-ne v4, v2, :cond_1

    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    .line 53
    move-result-object v4

    .line 56
    aget-char v4, v4, v1

    .line 57
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 59
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    iget-boolean v4, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mIsUpperMode:Z

    .line 65
    if-eqz v4, :cond_2

    .line 67
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 77
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    goto :goto_0

    .line 81
    :cond_3
    iget-boolean p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mIsUpperMode:Z

    .line 82
    xor-int/2addr p1, v2

    .line 84
    iput-boolean p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mIsUpperMode:Z

    .line 85
    if-eqz p1, :cond_4

    .line 87
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    .line 89
    const p1, 0x7f08121a    # @drawable/keyboard_caps_lock_pressed_list 'res/drawable/keyboard_caps_lock_pressed_list.xml'

    .line 91
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    goto/16 :goto_6

    .line 97
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    .line 99
    const p1, 0x7f081218    # @drawable/keyboard_caps_lock_list 'res/drawable/keyboard_caps_lock_list.xml'

    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    goto/16 :goto_6

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnSymbolLock:Landroid/view/View;

    .line 109
    if-ne p1, v0, :cond_7

    .line 111
    iget-boolean p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mIsSymbolLock:Z

    .line 113
    xor-int/2addr p1, v2

    .line 115
    iput-boolean p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mIsSymbolLock:Z

    .line 116
    if-eqz p1, :cond_6

    .line 118
    const p0, 0x7f08122a    # @drawable/keyboard_lock_pressed_list 'res/drawable/keyboard_lock_pressed_list.xml'

    .line 120
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    goto/16 :goto_6

    .line 126
    :cond_6
    const p0, 0x7f081228    # @drawable/keyboard_lock_list 'res/drawable/keyboard_lock_list.xml'

    .line 128
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    goto/16 :goto_6

    .line 134
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    .line 136
    if-ne p1, v0, :cond_8

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->showLetterBoard(Z)V

    .line 140
    goto/16 :goto_6

    .line 143
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    .line 145
    if-ne p1, v0, :cond_9

    .line 147
    invoke-virtual {p0, v2}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->showLetterBoard(Z)V

    .line 149
    goto/16 :goto_6

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnToNumberBoard:Landroid/view/View;

    .line 154
    if-ne p1, v0, :cond_a

    .line 156
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mNumberBoard:Landroid/widget/FrameLayout;

    .line 158
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    .line 163
    const/4 v0, 0x4

    .line 165
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    .line 169
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 171
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 174
    if-eqz p1, :cond_12

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->updateNumberBoardLayout()V

    .line 178
    goto :goto_6

    .line 181
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnBack:Landroid/view/View;

    .line 182
    if-ne p1, v0, :cond_b

    .line 184
    invoke-virtual {p0, v2}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->showLetterBoard(Z)V

    .line 186
    goto :goto_6

    .line 189
    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    .line 190
    if-eq p1, v0, :cond_11

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    .line 194
    if-eq p1, v0, :cond_11

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnNumberDelete:Landroid/view/View;

    .line 198
    if-ne p1, v0, :cond_c

    .line 200
    goto :goto_5

    .line 202
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    .line 203
    if-eq p1, v0, :cond_10

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    .line 207
    if-ne p1, v0, :cond_d

    .line 209
    goto :goto_3

    .line 211
    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    .line 212
    if-eq p1, v0, :cond_f

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    .line 216
    if-ne p1, v0, :cond_e

    .line 218
    goto :goto_2

    .line 220
    :cond_e
    check-cast p1, Lcom/android/keyguard/widget/MiuiKeyBoardView$KeyButton;

    .line 221
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 223
    move-result-object p1

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    .line 227
    iget-boolean p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mIsSymbolLock:Z

    .line 230
    if-nez p1, :cond_12

    .line 232
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    .line 234
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 236
    move-result p1

    .line 239
    if-nez p1, :cond_12

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->showLetterBoard(Z)V

    .line 242
    goto :goto_6

    .line 245
    :cond_f
    :goto_2
    const-string p1, " "

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    .line 248
    goto :goto_6

    .line 251
    :cond_10
    :goto_3
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    .line 252
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 254
    move-result-object p0

    .line 257
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    move-result p1

    .line 261
    if-eqz p1, :cond_12

    .line 262
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    move-result-object p1

    .line 267
    check-cast p1, Lcom/android/keyguard/KeyguardPasswordViewController$2;

    .line 268
    iget-object p1, p1, Lcom/android/keyguard/KeyguardPasswordViewController$2;->this$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    .line 270
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->verifyPasswordAndUnlock()V

    .line 272
    goto :goto_4

    .line 275
    :cond_11
    :goto_5
    invoke-virtual {p0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->onKeyBoardDelete()V

    .line 276
    :cond_12
    :goto_6
    return-void
    .line 279
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 16
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 18
    move-result p1

    .line 21
    and-int/lit16 p1, p1, 0x80

    .line 22
    if-eqz p1, :cond_1

    .line 24
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-eqz p1, :cond_3

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p1

    .line 34
    const v0, 0x7f07042d    # @dimen/keyboard_padding_top '6.54dp'

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result p1

    .line 41
    iput p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPaddingTop:I

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p1

    .line 47
    const v0, 0x7f07042c    # @dimen/keyboard_padding_left '5.45dp'

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    move-result p1

    .line 54
    iput p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPaddingLeft:I

    .line 55
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mNumberBoard:Landroid/widget/FrameLayout;

    .line 57
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 59
    move-result p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->updateNumberBoardLayout()V

    .line 65
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->updateLetterBoardLayout()V

    .line 69
    :cond_3
    :goto_1
    return-void
    .line 72
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 10
    const v1, 0x7f07042d    # @dimen/keyboard_padding_top '6.54dp'

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    move-result v1

    .line 17
    iput v1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPaddingTop:I

    .line 18
    const v1, 0x7f07042c    # @dimen/keyboard_padding_left '5.45dp'

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPaddingLeft:I

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 32
    const v1, 0x7f010224    # @anim/stretch_from_bottom 'res/anim/stretch_from_bottom.xml'

    .line 33
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 42
    const v1, 0x7f010221    # @anim/shrink_to_bottom 'res/anim/shrink_to_bottom.xml'

    .line 43
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 60
    const v1, 0x7f0a0729    # @id/preview_text

    .line 63
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f0a0466    # @id/keyboard_letter

    .line 74
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v1

    .line 80
    check-cast v1, Landroid/widget/FrameLayout;

    .line 81
    iput-object v1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    .line 83
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 85
    const v0, 0x7f0a0179    # @id/btn_caps_lock

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    .line 95
    const v0, 0x7f0a017b    # @id/btn_letter_delete

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    .line 104
    const v0, 0x7f0a0182    # @id/btn_shift2symbol

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    .line 113
    const v0, 0x7f0a0181    # @id/btn_shift2number

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnToNumberBoard:Landroid/view/View;

    .line 122
    const v0, 0x7f0a017d    # @id/btn_letter_space

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    .line 131
    const v0, 0x7f0a017c    # @id/btn_letter_ok

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    .line 140
    const v0, 0x7f0a046f    # @id/keyboard_symbol

    .line 142
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object v0

    .line 148
    check-cast v0, Landroid/widget/FrameLayout;

    .line 149
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    .line 151
    const/4 v1, 0x4

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 154
    const v0, 0x7f0a0183    # @id/btn_symbol_delete

    .line 157
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    .line 164
    const v0, 0x7f0a0184    # @id/btn_symbol_lock

    .line 166
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object v0

    .line 172
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnSymbolLock:Landroid/view/View;

    .line 173
    const v0, 0x7f0a0180    # @id/btn_shift2letter

    .line 175
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 178
    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    .line 182
    const v0, 0x7f0a0186    # @id/btn_symbol_space

    .line 184
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object v0

    .line 190
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    .line 191
    const v0, 0x7f0a0185    # @id/btn_symbol_ok

    .line 193
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 196
    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    .line 200
    const v0, 0x7f0a0467    # @id/keyboard_number

    .line 202
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 205
    move-result-object v0

    .line 208
    check-cast v0, Landroid/widget/FrameLayout;

    .line 209
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mNumberBoard:Landroid/widget/FrameLayout;

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 213
    const v0, 0x7f0a017f    # @id/btn_number_delete

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 219
    move-result-object v0

    .line 222
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnNumberDelete:Landroid/view/View;

    .line 223
    const v0, 0x7f0a0178    # @id/btn_back

    .line 225
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 228
    move-result-object v0

    .line 231
    iput-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnBack:Landroid/view/View;

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mNumberBoard:Landroid/widget/FrameLayout;

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    .line 246
    return-void
    .line 249
.end method

.method public final onKeyBoardDelete()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/keyguard/KeyguardPasswordViewController$2;

    .line 18
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPasswordViewController$2;->this$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    .line 20
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 22
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    .line 38
    move-result v1

    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    .line 44
    move-result v2

    .line 47
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    return-void
    .line 52
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    sub-int v9, p4, p2

    .line 4
    sub-int v10, p5, p3

    .line 6
    iget v0, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPaddingLeft:I

    .line 8
    mul-int/lit8 v0, v0, 0x2

    .line 10
    sub-int v0, v9, v0

    .line 12
    sget-object v7, Lcom/android/keyguard/widget/MiuiKeyBoardView;->LETTER_SIZE_GROUP:[[F

    .line 14
    const/4 v1, 0x0

    .line 16
    aget-object v2, v7, v1

    .line 17
    array-length v2, v2

    .line 19
    div-int/2addr v0, v2

    .line 20
    mul-int/lit8 v0, v0, 0x1

    .line 21
    int-to-float v0, v0

    .line 23
    const v2, 0x3f91eb85    # 1.14f

    .line 24
    div-float/2addr v0, v2

    .line 27
    float-to-int v11, v0

    .line 28
    int-to-float v0, v11

    .line 29
    const v2, 0x3e0f5c29    # 0.14f

    .line 30
    mul-float/2addr v0, v2

    .line 33
    float-to-int v12, v0

    .line 34
    iget v0, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPaddingTop:I

    .line 35
    mul-int/lit8 v0, v0, 0x2

    .line 37
    sub-int v0, v10, v0

    .line 39
    array-length v2, v7

    .line 41
    div-int/2addr v0, v2

    .line 42
    mul-int/lit8 v0, v0, 0x1

    .line 43
    int-to-float v0, v0

    .line 45
    sget v13, Lcom/android/keyguard/widget/MiuiKeyBoardView;->VERTICAL_MARGIN_RATIO:F

    .line 46
    const/high16 v14, 0x3f800000    # 1.0f

    .line 48
    add-float v2, v13, v14

    .line 50
    div-float/2addr v0, v2

    .line 52
    float-to-int v15, v0

    .line 53
    int-to-float v0, v15

    .line 54
    sget-boolean v16, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 55
    if-eqz v16, :cond_0

    .line 57
    const v2, 0x3e4ccccd    # 0.2f

    .line 59
    goto :goto_0

    .line 62
    :cond_0
    move v2, v13

    .line 63
    :goto_0
    mul-float/2addr v0, v2

    .line 64
    float-to-int v6, v0

    .line 65
    iget-object v0, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    .line 66
    invoke-virtual {v0, v1, v1, v9, v10}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 68
    iget-object v0, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    .line 71
    invoke-virtual {v0, v1, v1, v9, v10}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 73
    iget-object v0, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mNumberBoard:Landroid/widget/FrameLayout;

    .line 76
    invoke-virtual {v0, v1, v1, v9, v10}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 78
    iget-object v1, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    .line 81
    move-object/from16 v0, p0

    .line 83
    move v2, v9

    .line 85
    move v3, v11

    .line 86
    move v4, v12

    .line 87
    move v5, v15

    .line 88
    move/from16 v17, v6

    .line 89
    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII[[F)V

    .line 91
    iget-object v1, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    .line 94
    sget-object v7, Lcom/android/keyguard/widget/MiuiKeyBoardView;->SYMBOL_SIZE_GROUP:[[F

    .line 96
    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII[[F)V

    .line 98
    iget v0, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPaddingTop:I

    .line 101
    mul-int/lit8 v0, v0, 0x2

    .line 103
    sub-int/2addr v10, v0

    .line 105
    sget-object v0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->NUMBER_SIZE_GROUP:[[F

    .line 106
    array-length v1, v0

    .line 108
    div-int/2addr v10, v1

    .line 109
    mul-int/lit8 v10, v10, 0x1

    .line 110
    int-to-float v1, v10

    .line 112
    add-float/2addr v13, v14

    .line 113
    div-float/2addr v1, v13

    .line 114
    float-to-int v5, v1

    .line 115
    iget-object v1, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mNumberBoard:Landroid/widget/FrameLayout;

    .line 116
    if-eqz v16, :cond_1

    .line 118
    sget-object v0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->NUMBER_SIZE_GROUP_PAD:[[F

    .line 120
    :cond_1
    move-object v7, v0

    .line 122
    move-object/from16 v0, p0

    .line 123
    move v2, v9

    .line 125
    move v3, v11

    .line 126
    move v4, v12

    .line 127
    move/from16 v6, v17

    .line 128
    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII[[F)V

    .line 130
    iget-object v0, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 133
    iget v1, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewX:I

    .line 135
    iget v2, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewY:I

    .line 137
    iget v3, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewWidth:I

    .line 139
    add-int/2addr v3, v1

    .line 141
    iget v4, v8, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewHeight:I

    .line 142
    add-int/2addr v4, v2

    .line 144
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 145
    return-void
    .line 148
.end method

.method public final onText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/keyguard/KeyguardPasswordViewController$2;

    .line 18
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPasswordViewController$2;->this$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    .line 20
    iget-object v1, v0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 22
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v1

    .line 35
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 36
    if-eqz v1, :cond_0

    .line 38
    const v1, 0x7f130555    # @string/input_password_hint_text 'Enter password'

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 43
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 46
    goto :goto_0

    .line 49
    :cond_1
    return-void
    .line 50
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    move-result p2

    .line 12
    const/4 v0, 0x1

    .line 13
    if-eqz p2, :cond_4

    .line 14
    if-eq p2, v0, :cond_0

    .line 16
    const/4 v0, 0x3

    .line 18
    if-eq p2, v0, :cond_0

    .line 19
    goto/16 :goto_3

    .line 21
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide v2

    .line 26
    iget-wide v4, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewLastTime:J

    .line 27
    sub-long/2addr v2, v4

    .line 29
    const-wide/16 v4, 0x12c

    .line 30
    sub-long/2addr v4, v2

    .line 32
    iget-boolean p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mIsShowingPreview:Z

    .line 33
    if-eqz p2, :cond_2

    .line 35
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mConfirmHide:Lcom/android/keyguard/widget/MiuiKeyBoardView$1;

    .line 37
    const-wide/16 v2, 0x0

    .line 39
    cmp-long v0, v4, v2

    .line 41
    if-lez v0, :cond_1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    move-wide v4, v2

    .line 46
    :goto_0
    invoke-virtual {p0, p2, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    :cond_2
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    .line 50
    if-eq p1, p2, :cond_3

    .line 52
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    .line 54
    if-ne p1, p2, :cond_b

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mSendDeleteActionRunnable:Lcom/android/keyguard/widget/MiuiKeyBoardView$1;

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 60
    goto/16 :goto_3

    .line 63
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 65
    move-result-object p2

    .line 68
    instance-of p2, p2, Ljava/lang/String;

    .line 69
    if-eqz p2, :cond_8

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 73
    move-result-object p2

    .line 76
    check-cast p2, Ljava/lang/String;

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 79
    move-result p2

    .line 82
    if-ne p2, v0, :cond_8

    .line 83
    instance-of p2, p1, Lcom/android/keyguard/widget/MiuiKeyBoardView$KeyButton;

    .line 85
    if-eqz p2, :cond_8

    .line 87
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 89
    move-object v2, p1

    .line 91
    check-cast v2, Lcom/android/keyguard/widget/MiuiKeyBoardView$KeyButton;

    .line 92
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 94
    move-result-object v2

    .line 97
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 101
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 103
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object p2

    .line 113
    const v2, 0x7f070427    # @dimen/keyboard_key_preview_radius '58.9dp'

    .line 114
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 117
    move-result p2

    .line 120
    float-to-int p2, p2

    .line 121
    iput p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewWidth:I

    .line 122
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    move-result-object p2

    .line 129
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 130
    move-result p2

    .line 133
    float-to-int p2, p2

    .line 134
    iput p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewHeight:I

    .line 135
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 137
    iget v2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewWidth:I

    .line 139
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 141
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 144
    iget v2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewHeight:I

    .line 146
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 148
    const/4 p2, 0x2

    .line 151
    new-array v2, p2, [F

    .line 152
    fill-array-data v2, :array_0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 157
    move-result v3

    .line 160
    const/high16 v4, 0x3f800000    # 1.0f

    .line 161
    mul-float/2addr v3, v4

    .line 163
    aget v5, v2, v1

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 166
    move-result v6

    .line 169
    int-to-float v6, v6

    .line 170
    add-float/2addr v5, v6

    .line 171
    aput v5, v2, v1

    .line 172
    aget v5, v2, v0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 176
    move-result v6

    .line 179
    int-to-float v6, v6

    .line 180
    add-float/2addr v5, v6

    .line 181
    aput v5, v2, v0

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 184
    move-result-object v5

    .line 187
    :goto_1
    instance-of v6, v5, Landroid/view/View;

    .line 188
    if-eqz v6, :cond_5

    .line 190
    if-eq v5, p0, :cond_5

    .line 192
    check-cast v5, Landroid/view/View;

    .line 194
    aget v6, v2, v1

    .line 196
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 198
    move-result v7

    .line 201
    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    .line 202
    move-result v8

    .line 205
    sub-int/2addr v7, v8

    .line 206
    int-to-float v7, v7

    .line 207
    add-float/2addr v6, v7

    .line 208
    aput v6, v2, v1

    .line 209
    aget v6, v2, v0

    .line 211
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 213
    move-result v7

    .line 216
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    .line 217
    move-result v8

    .line 220
    sub-int/2addr v7, v8

    .line 221
    int-to-float v7, v7

    .line 222
    add-float/2addr v6, v7

    .line 223
    aput v6, v2, v0

    .line 224
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 226
    move-result-object v5

    .line 229
    goto :goto_1

    .line 230
    :cond_5
    aget v5, v2, v1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 233
    move-result v6

    .line 236
    int-to-float v6, v6

    .line 237
    sub-float/2addr v4, v3

    .line 238
    const/high16 v3, 0x40000000    # 2.0f

    .line 239
    invoke-static {v6, v4, v3, v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 241
    move-result v5

    .line 244
    aput v5, v2, v1

    .line 245
    aget v5, v2, v0

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 249
    move-result v6

    .line 252
    int-to-float v6, v6

    .line 253
    invoke-static {v6, v4, v3, v5}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 254
    move-result v3

    .line 257
    aput v3, v2, v0

    .line 258
    aget v3, v2, v1

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 262
    move-result v4

    .line 265
    iget v5, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewWidth:I

    .line 266
    sub-int/2addr v4, v5

    .line 268
    div-int/2addr v4, p2

    .line 269
    int-to-float p2, v4

    .line 270
    add-float/2addr v3, p2

    .line 271
    float-to-int p2, v3

    .line 272
    iput p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewX:I

    .line 273
    const/4 v3, 0x4

    .line 275
    if-gez p2, :cond_6

    .line 276
    iput v3, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewX:I

    .line 278
    goto :goto_2

    .line 280
    :cond_6
    add-int/2addr p2, v5

    .line 281
    iget-object v4, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    .line 282
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    .line 284
    move-result v4

    .line 287
    if-le p2, v4, :cond_7

    .line 288
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    .line 290
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    .line 292
    move-result p2

    .line 295
    iget v4, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewWidth:I

    .line 296
    sub-int/2addr p2, v4

    .line 298
    sub-int/2addr p2, v3

    .line 299
    iput p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewX:I

    .line 300
    :cond_7
    :goto_2
    aget p2, v2, v0

    .line 302
    iget v2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewHeight:I

    .line 304
    int-to-float v2, v2

    .line 306
    sub-float/2addr p2, v2

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 308
    move-result v2

    .line 311
    int-to-float v2, v2

    .line 312
    sget v3, Lcom/android/keyguard/widget/MiuiKeyBoardView;->VERTICAL_MARGIN_RATIO:F

    .line 313
    mul-float/2addr v2, v3

    .line 315
    sub-float/2addr p2, v2

    .line 316
    float-to-int p2, p2

    .line 317
    iput p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewY:I

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->showPreviewAnim(Z)V

    .line 320
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 323
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :cond_8
    const-class p2, Lcom/miui/interfaces/IHapticFeedBack;

    .line 328
    invoke-static {p2}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 330
    move-result-object v0

    .line 333
    check-cast v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 334
    check-cast v0, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 336
    const/4 v2, 0x7

    .line 338
    invoke-virtual {v0, v2}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->isSupportV2HapticFeedback(I)Z

    .line 339
    move-result v0

    .line 342
    if-eqz v0, :cond_9

    .line 343
    invoke-static {p2}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 345
    move-result-object p2

    .line 348
    check-cast p2, Lcom/miui/interfaces/IHapticFeedBack;

    .line 349
    check-cast p2, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 351
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    new-instance v0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda0;

    .line 356
    invoke-direct {v0, p2, v2}, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/systemui/functions/HapticFeedBackImpl;I)V

    .line 358
    const/4 v2, 0x0

    .line 361
    invoke-virtual {p2, v2, v0}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->postToBgThreadIfNeed(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 362
    :cond_9
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    .line 365
    if-eq p1, p2, :cond_a

    .line 367
    iget-object p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    .line 369
    if-ne p1, p2, :cond_b

    .line 371
    :cond_a
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mSendDeleteActionRunnable:Lcom/android/keyguard/widget/MiuiKeyBoardView$1;

    .line 373
    const-wide/16 v2, 0x1f4

    .line 375
    invoke-virtual {p0, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    :cond_b
    :goto_3
    return v1

    .line 380
    nop

    .line 381
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
    .line 382
.end method

.method public final setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 12
    instance-of v3, v2, Lcom/android/keyguard/widget/MiuiKeyBoardView$KeyButton;

    .line 13
    if-eqz v3, :cond_0

    .line 15
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    iget-object v3, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    .line 23
    check-cast v2, Lcom/android/keyguard/widget/MiuiKeyBoardView$KeyButton;

    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    goto :goto_1

    .line 30
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 31
    if-eqz v3, :cond_1

    .line 33
    check-cast v2, Landroid/view/ViewGroup;

    .line 35
    invoke-virtual {p0, v2}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    .line 37
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    return-void
    .line 43
.end method

.method public final showLetterBoard(Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mNumberBoard:Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->updateLetterBoardLayout()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    .line 17
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x4

    .line 20
    if-eqz p1, :cond_1

    .line 21
    move v3, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v3, v2

    .line 25
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    .line 29
    if-eqz p1, :cond_2

    .line 31
    move v1, v2

    .line 33
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mNumberBoard:Landroid/widget/FrameLayout;

    .line 37
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 39
    return-void
    .line 42
.end method

.method public final showPreviewAnim(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mConfirmHide:Lcom/android/keyguard/widget/MiuiKeyBoardView$1;

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 14
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 19
    const/4 v0, 0x2

    .line 22
    if-eqz p1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 25
    new-array v0, v0, [F

    .line 27
    fill-array-data v0, :array_0

    .line 29
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 36
    new-array v0, v0, [F

    .line 38
    fill-array-data v0, :array_1

    .line 40
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 46
    const-wide/16 v1, 0x64

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 50
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 53
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 59
    iget v1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewWidth:I

    .line 61
    int-to-float v1, v1

    .line 63
    const/high16 v2, 0x3f000000    # 0.5f

    .line 64
    mul-float/2addr v1, v2

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 70
    iget v1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPopupViewHeight:I

    .line 72
    int-to-float v1, v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 78
    new-instance v1, Lcom/android/keyguard/widget/MiuiKeyBoardView$3;

    .line 80
    invoke-direct {v1, p0}, Lcom/android/keyguard/widget/MiuiKeyBoardView$3;-><init>(Lcom/android/keyguard/widget/MiuiKeyBoardView;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    .line 88
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 90
    iput-boolean p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mIsShowingPreview:Z

    .line 93
    if-eqz p1, :cond_1

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    move-result-wide v0

    .line 100
    iput-wide v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mShowPreviewLastTime:J

    .line 101
    :cond_1
    return-void

    .line 103
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 112
.end method

.method public final updateLetterBoardLayout()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 11
    const v2, 0x7f07089b    # @dimen/miui_keyguard_password_view_key_board_view_height '257.97dp'

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 15
    move-result v1

    .line 18
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v1

    .line 24
    const v2, 0x7f07089d    # @dimen/miui_keyguard_password_view_key_board_view_top_margin '0.0dp'

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 28
    move-result v1

    .line 31
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 37
    const v2, 0x7f07089a    # @dimen/miui_keyguard_password_view_key_board_view_bottom_margin '0.0dp'

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 41
    move-result v1

    .line 44
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
    .line 50
.end method

.method public final updateNumberBoardLayout()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 11
    const v2, 0x7f0708a5    # @dimen/miui_keyguard_password_view_num_key_board_view_height '257.97dp'

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 15
    move-result v1

    .line 18
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v1

    .line 24
    const v2, 0x7f0708a6    # @dimen/miui_keyguard_password_view_num_key_board_view_top_margin '159.11dp'

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 28
    move-result v1

    .line 31
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 37
    const v2, 0x7f0708a4    # @dimen/miui_keyguard_password_view_num_key_board_view_bottom_margin '15.22dp'

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 41
    move-result v1

    .line 44
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
    .line 50
.end method

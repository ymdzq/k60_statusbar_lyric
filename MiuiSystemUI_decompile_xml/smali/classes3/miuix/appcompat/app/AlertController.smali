.class public final Lmiuix/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public buildJustNow:Z

.field public configurationAfterInstalled:Landroid/content/res/Configuration;

.field public mAdapter:Landroid/widget/ListAdapter;

.field public final mAlertDialogLayout:I

.field public final mButtonHandler:Landroid/view/View$OnClickListener;

.field public mButtonNegative:Landroid/widget/Button;

.field public mButtonNegativeMessage:Landroid/os/Message;

.field public mButtonNegativeText:Ljava/lang/CharSequence;

.field public mButtonNeutral:Landroid/widget/Button;

.field public mButtonNeutralMessage:Landroid/os/Message;

.field public mButtonNeutralText:Ljava/lang/CharSequence;

.field public mButtonPositive:Landroid/widget/Button;

.field public mButtonPositiveMessage:Landroid/os/Message;

.field public mButtonPositiveText:Ljava/lang/CharSequence;

.field public mCancelable:Z

.field public mCanceledOnTouchOutside:Z

.field public mCheckBoxMessage:Ljava/lang/CharSequence;

.field public mCheckedItem:I

.field public mComment:Ljava/lang/CharSequence;

.field public final mCommentTextSize:F

.field public mCommentView:Landroid/widget/TextView;

.field public final mContext:Landroid/content/Context;

.field public final mCreateThread:Ljava/lang/Thread;

.field public mCurrentDensityDpi:I

.field public mCustomTitleTextSize:F

.field public mCustomTitleTextView:Landroid/widget/TextView;

.field public mCustomTitleView:Landroid/view/View;

.field public final mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

.field public final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field public mDialogContentLayout:I

.field public mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

.field public mDimBg:Landroid/view/View;

.field public final mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

.field public mEnableEnterAnim:Z

.field public mExtraButtonList:Ljava/util/List;

.field public mExtraImeMargin:I

.field public mFakeLandScreenMinorSize:I

.field public final mHandler:Landroid/os/Handler;

.field public mHapticFeedbackEnabled:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public mInflatedView:Landroid/view/View;

.field public mInsetsAnimationPlayed:Z

.field public mIsChecked:Z

.field public mIsDebugEnabled:Z

.field public mIsDialogAnimating:Z

.field public mIsEnableImmersive:Z

.field public mIsFromRebuild:Z

.field public mIsInFreeForm:Z

.field public mLandscapePanel:Z

.field public final mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

.field public final mListItemLayout:I

.field public final mListLayout:I

.field public mListView:Landroid/widget/ListView;

.field public mMessage:Ljava/lang/CharSequence;

.field public final mMessageTextSize:F

.field public mMessageView:Landroid/widget/TextView;

.field public final mMultiChoiceItemLayout:I

.field public mPanelAndImeMargin:I

.field public mPanelMaxWidth:I

.field public mPanelMaxWidthLand:I

.field public mPanelOriginLeftMargin:I

.field public mPanelOriginRightMargin:I

.field public mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

.field public mPreferLandscape:Z

.field public final mRootViewSize:Landroid/graphics/Point;

.field public final mRootViewSizeDp:Landroid/graphics/Point;

.field public mScreenMinorSize:I

.field public mScreenOrientation:I

.field public final mScreenRealSize:Landroid/graphics/Point;

.field public mSetupWindowInsetsAnimation:Z

.field public mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field public final mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field public final mShowTitle:Z

.field public final mSingleChoiceItemLayout:I

.field public mSmallIcon:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public final mTitleTextSize:F

.field public mTitleView:Landroid/widget/TextView;

.field public mTreatAsLandConfig:Z

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public final mWindow:Landroid/view/Window;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 6

    .line 1
    const-string v0, "AlertController"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 8
    const/4 v2, -0x1

    .line 10
    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 11
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 13
    new-instance v3, Lmiuix/appcompat/app/AlertController$1;

    .line 15
    invoke-direct {v3, p0}, Lmiuix/appcompat/app/AlertController$1;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 17
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    .line 20
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    .line 22
    const/4 v3, 0x0

    .line 24
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 25
    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    .line 27
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    .line 30
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    .line 32
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    .line 34
    const/high16 v4, 0x41900000    # 18.0f

    .line 36
    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mTitleTextSize:F

    .line 38
    const/high16 v5, 0x41880000    # 17.0f

    .line 40
    iput v5, p0, Lmiuix/appcompat/app/AlertController;->mMessageTextSize:F

    .line 42
    const/high16 v5, 0x41600000    # 14.0f

    .line 44
    iput v5, p0, Lmiuix/appcompat/app/AlertController;->mCommentTextSize:F

    .line 46
    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 48
    new-instance v4, Landroid/graphics/Point;

    .line 50
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 52
    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 55
    new-instance v4, Landroid/graphics/Point;

    .line 57
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 59
    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 62
    new-instance v4, Landroid/graphics/Point;

    .line 64
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 66
    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    .line 69
    new-instance v4, Landroid/graphics/Rect;

    .line 71
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 73
    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 76
    new-instance v4, Lmiuix/appcompat/app/AlertController$2;

    .line 78
    invoke-direct {v4, p0}, Lmiuix/appcompat/app/AlertController$2;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 80
    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 83
    new-instance v4, Lmiuix/appcompat/app/AlertController$3;

    .line 85
    invoke-direct {v4, p0}, Lmiuix/appcompat/app/AlertController$3;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 87
    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 90
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    .line 92
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 100
    move-result-object v4

    .line 103
    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 104
    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 106
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 108
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 110
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 112
    new-instance p3, Lmiuix/appcompat/app/AlertController$ButtonHandler;

    .line 114
    invoke-direct {p3, p2}, Lmiuix/appcompat/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    .line 116
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance p3, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 121
    invoke-direct {p3, p0}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 123
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 126
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    .line 128
    move-result p3

    .line 131
    xor-int/2addr p3, v2

    .line 132
    iput-boolean p3, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    .line 133
    const-string p3, "window"

    .line 135
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    move-result-object p3

    .line 140
    check-cast p3, Landroid/view/WindowManager;

    .line 141
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 143
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize()V

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    move-result-object p3

    .line 151
    const v4, 0x7f070341    # @dimen/fake_landscape_screen_minor_size '376.0dp'

    .line 152
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 155
    move-result p3

    .line 158
    iput p3, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    .line 159
    sget-object p3, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    .line 161
    const v4, 0x101005d    # @android:attr/alertDialogStyle

    .line 163
    invoke-virtual {p1, v3, p3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 166
    move-result-object p3

    .line 169
    const/4 v3, 0x4

    .line 170
    invoke-virtual {p3, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 171
    move-result v3

    .line 174
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 175
    const/4 v3, 0x6

    .line 177
    invoke-virtual {p3, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 178
    move-result v3

    .line 181
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mListLayout:I

    .line 182
    const/4 v3, 0x7

    .line 184
    invoke-virtual {p3, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 185
    move-result v3

    .line 188
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 189
    const/16 v3, 0xa

    .line 191
    invoke-virtual {p3, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 193
    move-result v3

    .line 196
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 197
    const/4 v3, 0x5

    .line 199
    invoke-virtual {p3, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 200
    move-result v1

    .line 203
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mListItemLayout:I

    .line 204
    const/16 v1, 0x9

    .line 206
    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 208
    move-result v1

    .line 211
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mShowTitle:Z

    .line 212
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 217
    move-result-object p2

    .line 220
    invoke-virtual {p2, v2}, Landroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 224
    move-result-object p2

    .line 227
    const p3, 0x7f0500b5    # @bool/treat_as_land 'false'

    .line 228
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 231
    move-result p2

    .line 234
    iput-boolean p2, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 237
    move-result-object p2

    .line 240
    const p3, 0x7f070a89    # @dimen/miuix_appcompat_dialog_max_width '370.0dp'

    .line 241
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 244
    move-result p2

    .line 247
    iput p2, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidth:I

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 250
    move-result-object p1

    .line 253
    const p2, 0x7f070a8a    # @dimen/miuix_appcompat_dialog_max_width_land '576.0dp'

    .line 254
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 257
    move-result p1

    .line 260
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 263
    move-result-object p1

    .line 266
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    .line 267
    :try_start_0
    const-string p1, "log.tag.alertdialog.ime.debug.enable"

    .line 269
    invoke-static {p1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    if-nez p1, :cond_0

    .line 275
    goto :goto_0

    .line 277
    :catch_0
    move-exception p1

    .line 278
    const-string p2, "can not access property log.tag.alertdialog.ime.enable, undebugable"

    .line 279
    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    :goto_0
    const-string p1, ""

    .line 284
    :cond_0
    const-string p2, "Alert dialog ime debugEnable = "

    .line 286
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    move-result-object p2

    .line 291
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string p2, "true"

    .line 295
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 297
    move-result p1

    .line 300
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 301
    if-eqz p1, :cond_1

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    .line 305
    const-string p2, "create Dialog mCurrentDensityDpi "

    .line 307
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    iget p0, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 312
    invoke-static {p1, p0, v0}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 314
    :cond_1
    return-void
    .line 317
.end method

.method public static access$700(Lmiuix/appcompat/app/AlertController;Lmiuix/appcompat/internal/widget/DialogRootView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v1

    .line 7
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    move-result p1

    .line 13
    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    move-result-object p1

    .line 25
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 26
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 28
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 30
    int-to-float v2, v2

    .line 32
    div-float/2addr v2, p1

    .line 33
    float-to-int v2, v2

    .line 34
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 35
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 37
    int-to-float v2, v2

    .line 39
    div-float/2addr v2, p1

    .line 40
    float-to-int v2, v2

    .line 41
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 42
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 44
    if-eqz p0, :cond_0

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    const-string v2, "updateRootViewSize by view mRootViewSizeDp "

    .line 50
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, " mRootViewSize "

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, " configuration.density "

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    const-string p1, "AlertController"

    .line 78
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void
    .line 83
.end method

.method public static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 10
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    return v2

    .line 15
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v0

    .line 21
    :cond_2
    if-lez v0, :cond_3

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 29
    invoke-static {v3}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    .line 30
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    return v1

    .line 36
    :cond_3
    return v2
    .line 37
.end method

.method public static clearFitSystemWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    instance-of v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 2
    if-nez v0, :cond_0

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 9
    instance-of v1, p0, Landroid/view/ViewGroup;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    :goto_0
    move-object v1, p0

    .line 16
    check-cast v1, Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v2

    .line 22
    if-ge v0, v2, :cond_0

    .line 23
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 28
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    return-void
    .line 35
.end method

.method public static safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    if-ne v0, p1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    return-void
    .line 19
.end method

.method public static safeRemoveFromParent(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method


# virtual methods
.method public final dismiss(Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 14
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 21
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    .line 24
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 26
    if-nez v0, :cond_2

    .line 28
    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;->end()V

    .line 32
    :cond_1
    return-void

    .line 35
    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_6

    .line 40
    invoke-virtual {v3}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    .line 42
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 51
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    .line 53
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 58
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 59
    if-eqz v0, :cond_3

    .line 61
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 63
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 65
    move-result-object v3

    .line 68
    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 69
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 72
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 74
    sget-object v1, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 76
    if-nez v1, :cond_5

    .line 78
    sget-boolean v1, Lmiuix/os/Build;->IS_TABLET:Z

    .line 80
    if-eqz v1, :cond_4

    .line 82
    new-instance v1, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    .line 84
    invoke-direct {v1}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;-><init>()V

    .line 86
    sput-object v1, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 89
    goto :goto_0

    .line 91
    :cond_4
    new-instance v1, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 92
    invoke-direct {v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;-><init>()V

    .line 94
    sput-object v1, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 97
    :cond_5
    :goto_0
    sget-object v1, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 99
    invoke-interface {v1, v0, p0, p1}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->executeDismissAnim(Lmiuix/appcompat/internal/widget/DialogParentPanel2;Landroid/view/View;Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;)V

    .line 101
    sput-object v2, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 104
    goto :goto_1

    .line 106
    :cond_6
    const-string p1, "AlertController"

    .line 107
    const-string v0, "dialog is not attached to window when dismiss is invoked"

    .line 109
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :try_start_0
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 114
    check-cast p0, Lmiuix/appcompat/app/AlertDialog;

    .line 116
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_1

    .line 121
    :catch_0
    move-exception p0

    .line 122
    const-string v0, "Not catch the dialog will throw the illegalArgumentException (In Case cause the crash , we expect it should be caught)"

    .line 123
    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :goto_1
    return-void
    .line 128
.end method

.method public final getDialogPanelMargin()I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 7
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 10
    const/4 v2, -0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 20
    const v2, 0x7f070a7e    # @dimen/miuix_appcompat_dialog_ime_margin '16.0dp'

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v1

    .line 27
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 28
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 30
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 36
    move-result v1

    .line 39
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 40
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    .line 42
    move-result v2

    .line 45
    const/4 v3, 0x1

    .line 46
    aget v0, v0, v3

    .line 47
    add-int/2addr v0, v2

    .line 49
    sub-int/2addr v1, v0

    .line 50
    iget p0, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 51
    sub-int/2addr v1, p0

    .line 53
    return v1
    .line 54
.end method

.method public final getDialogWidthMargin()I
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 2
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 4
    const/16 v1, 0x168

    .line 6
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p0

    .line 15
    const v0, 0x7f070aa6    # @dimen/miuix_appcompat_dialog_width_small_margin '8.0dp'

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object p0

    .line 27
    const v0, 0x7f070aa5    # @dimen/miuix_appcompat_dialog_width_margin '12.0dp'

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result p0

    .line 34
    :goto_0
    return p0
    .line 35
.end method

.method public final getPanelWidth(ZZ)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    .line 3
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    .line 5
    if-eqz v1, :cond_7

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    xor-int/2addr v1, v2

    .line 16
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    :cond_0
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 35
    :cond_1
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 37
    if-eqz v3, :cond_2

    .line 39
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 41
    move-result v3

    .line 44
    add-int/2addr v1, v3

    .line 45
    :cond_2
    if-nez v1, :cond_4

    .line 46
    :cond_3
    :goto_0
    move v1, v0

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 50
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 52
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 54
    iget v4, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    .line 56
    if-ge v3, v4, :cond_5

    .line 58
    goto :goto_0

    .line 60
    :cond_5
    mul-int/lit8 v3, v3, 0x2

    .line 61
    if-gt v3, v1, :cond_6

    .line 63
    goto :goto_0

    .line 65
    :cond_6
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    .line 66
    if-eqz v1, :cond_3

    .line 68
    move v1, v2

    .line 70
    :goto_1
    if-eqz v1, :cond_7

    .line 71
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    .line 73
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidthLand:I

    .line 75
    const p2, 0x7f0d01f5    # @layout/miuix_appcompat_alert_dialog_content_land 'res/layout/miuix_appcompat_alert_dialog_content_land.xml'

    .line 77
    goto :goto_3

    .line 80
    :cond_7
    const v1, 0x7f0d01f4    # @layout/miuix_appcompat_alert_dialog_content 'res/layout/miuix_appcompat_alert_dialog_content.xml'

    .line 81
    if-eqz p2, :cond_8

    .line 84
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelMaxWidth:I

    .line 86
    :goto_2
    move p2, v1

    .line 88
    goto :goto_3

    .line 89
    :cond_8
    if-eqz p1, :cond_a

    .line 90
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    .line 92
    if-eqz p1, :cond_9

    .line 94
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    .line 96
    goto :goto_2

    .line 98
    :cond_9
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    .line 99
    goto :goto_2

    .line 101
    :cond_a
    const/4 p1, -0x1

    .line 102
    goto :goto_2

    .line 103
    :goto_3
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    .line 104
    if-eq v1, p2, :cond_c

    .line 106
    iput p2, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    .line 108
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 110
    if-eqz p2, :cond_b

    .line 112
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 114
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 116
    :cond_b
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 121
    move-result-object p2

    .line 124
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    .line 125
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 127
    invoke-virtual {p2, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 129
    move-result-object p2

    .line 132
    check-cast p2, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 133
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 135
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 137
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 139
    :cond_c
    return p1
    .line 142
.end method

.method public final getScreenOrientation()I
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 12
    move-result p0

    .line 15
    const/4 v0, 0x1

    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    const/4 v1, 0x3

    .line 19
    if-ne p0, v1, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    return v0

    .line 23
    :cond_2
    :goto_0
    const/4 p0, 0x2

    .line 24
    return p0
    .line 25
.end method

.method public final isDialogImmersive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final isLandscape()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    .line 6
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    goto :goto_2

    .line 11
    :cond_0
    const/4 v1, 0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v1

    .line 22
    const-string v4, "synergy_mode"

    .line 23
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 25
    move-result v1

    .line 28
    if-ne v1, v2, :cond_2

    .line 29
    move v1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v1, v3

    .line 33
    :goto_0
    if-eqz v1, :cond_4

    .line 34
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    .line 36
    invoke-static {v0, p0}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 38
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 41
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 43
    if-le v0, p0, :cond_3

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    :goto_1
    move v2, v3

    .line 48
    :cond_4
    :goto_2
    return v2
    .line 49
.end method

.method public final reInitLandConfig()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f0500b5    # @bool/treat_as_land 'false'

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    move-result v1

    .line 14
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mTreatAsLandConfig:Z

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 20
    const v1, 0x7f070341    # @dimen/fake_landscape_screen_minor_size '376.0dp'

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v0

    .line 27
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mFakeLandScreenMinorSize:I

    .line 28
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize()V

    .line 30
    return-void
    .line 33
.end method

.method public final resetListMaxHeight()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 2
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 4
    int-to-float v0, v0

    .line 6
    const v1, 0x3eb33333    # 0.35f

    .line 7
    mul-float/2addr v0, v1

    .line 10
    float-to-int v0, v0

    .line 11
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 12
    const v2, 0x7f040248    # @attr/dialogListPreferredItemHeight

    .line 14
    invoke-static {v2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(ILandroid/content/Context;)I

    .line 17
    move-result v1

    .line 20
    div-int/2addr v0, v1

    .line 21
    mul-int/2addr v0, v1

    .line 22
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 25
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 28
    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v1

    .line 33
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 36
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    return-void
    .line 41
.end method

.method public final setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    move-result-object p3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p3, 0x0

    .line 11
    :goto_0
    const/4 v0, -0x3

    .line 12
    if-eq p1, v0, :cond_3

    .line 13
    const/4 v0, -0x2

    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    const/4 v0, -0x1

    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 21
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 23
    goto :goto_1

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string p1, "Button does not exist"

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0

    .line 33
    :cond_2
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 34
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 36
    goto :goto_1

    .line 38
    :cond_3
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 39
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 41
    :goto_1
    return-void
    .line 43
.end method

.method public final setupContentView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    const v0, 0x7f0a05ad    # @id/message

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 11
    const v0, 0x7f0a0213    # @id/comment

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 28
    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 35
    if-eqz p1, :cond_2

    .line 37
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mComment:Ljava/lang/CharSequence;

    .line 39
    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    const/16 p0, 0x8

    .line 47
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 53
    :cond_2
    :goto_0
    return-void
    .line 56
.end method

.method public final setupCustomContent(Landroid/view/ViewGroup;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 13
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 15
    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 18
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 20
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    move-object v1, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 27
    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    move-result-object v0

    .line 36
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 37
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 42
    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 43
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 45
    const/4 v2, 0x1

    .line 47
    :cond_3
    if-eqz v2, :cond_4

    .line 48
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    .line 50
    move-result v0

    .line 53
    if-nez v0, :cond_5

    .line 54
    :cond_4
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 56
    const/high16 v0, 0x20000

    .line 58
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 60
    :cond_5
    if-eqz v2, :cond_6

    .line 63
    invoke-static {v1, p1}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 65
    goto :goto_1

    .line 68
    :cond_6
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 69
    :goto_1
    return v2
    .line 72
.end method

.method public final setupNonImmersiveWindow()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isLandscape()Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 6
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 8
    const/16 v2, 0x18a

    .line 10
    const/4 v3, 0x0

    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v3

    .line 17
    :goto_0
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertController;->getPanelWidth(ZZ)I

    .line 18
    move-result v0

    .line 21
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 22
    const/4 v4, 0x2

    .line 24
    if-nez v1, :cond_1

    .line 25
    const/4 v1, -0x1

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getDialogWidthMargin()I

    .line 30
    move-result v0

    .line 33
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 34
    mul-int/2addr v0, v4

    .line 36
    sub-int v0, v1, v0

    .line 37
    :cond_1
    sget-boolean v1, Lmiuix/os/Build;->IS_TABLET:Z

    .line 39
    if-eqz v1, :cond_2

    .line 41
    const/16 v5, 0x11

    .line 43
    goto :goto_1

    .line 45
    :cond_2
    const/16 v5, 0x51

    .line 46
    :goto_1
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 48
    invoke-virtual {v6, v5}, Landroid/view/Window;->setGravity(I)V

    .line 50
    and-int/lit8 v5, v5, 0x50

    .line 53
    if-lez v5, :cond_4

    .line 55
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v5

    .line 62
    const v7, 0x7f070a5c    # @dimen/miuix_appcompat_dialog_bottom_margin '12.0dp'

    .line 63
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    move-result v5

    .line 69
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 70
    move-result-object v7

    .line 73
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 74
    const/high16 v8, 0x8000000

    .line 76
    and-int/2addr v7, v8

    .line 78
    if-eqz v7, :cond_3

    .line 79
    invoke-virtual {v6, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 81
    :cond_3
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 84
    move-result-object v7

    .line 87
    int-to-float v5, v5

    .line 88
    const/high16 v8, 0x3f800000    # 1.0f

    .line 89
    mul-float/2addr v5, v8

    .line 91
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 92
    int-to-float v2, v2

    .line 94
    div-float/2addr v5, v2

    .line 95
    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 96
    :cond_4
    invoke-virtual {v6, v4}, Landroid/view/Window;->addFlags(I)V

    .line 98
    const/high16 v2, 0x40000

    .line 101
    invoke-virtual {v6, v2}, Landroid/view/Window;->addFlags(I)V

    .line 103
    const v2, 0x3e99999a    # 0.3f

    .line 106
    invoke-virtual {v6, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 109
    const/4 v2, -0x2

    .line 112
    invoke-virtual {v6, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 113
    const v4, 0x7f0605ef    # @color/miuix_appcompat_transparent '#00000000'

    .line 116
    invoke-virtual {v6, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 119
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 122
    if-eqz v4, :cond_5

    .line 124
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    move-result-object v4

    .line 129
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 132
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 134
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 136
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 141
    const/4 v2, 0x0

    .line 143
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 144
    :cond_5
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 147
    if-eqz p0, :cond_6

    .line 149
    if-eqz v1, :cond_7

    .line 151
    const p0, 0x7f140016    # @style/Animation.Dialog.Center

    .line 153
    invoke-virtual {v6, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 156
    goto :goto_2

    .line 159
    :cond_6
    invoke-virtual {v6, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 160
    :cond_7
    :goto_2
    return-void
    .line 163
.end method

.method public final setupView(FZ)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    .line 2
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    new-instance v7, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->isLandscape()Z

    move-result v1

    .line 4
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/16 v8, 0x18a

    if-lt v7, v8, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v6

    .line 5
    :goto_0
    iget-boolean v8, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v8, :cond_1

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateDialogPanel isLandScape "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AlertController"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "updateDialogPanel shouldLimitWidth "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    invoke-virtual {v0, v1, v7}, Lmiuix/appcompat/app/AlertController;->getPanelWidth(ZZ)I

    move-result v1

    invoke-direct {v8, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 10
    sget-boolean v1, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x11

    goto :goto_1

    :cond_2
    const/16 v1, 0x51

    .line 11
    :goto_1
    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v7, :cond_3

    move v1, v6

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->getDialogWidthMargin()I

    move-result v1

    .line 13
    :goto_2
    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 14
    iput v1, v0, Lmiuix/appcompat/app/AlertController;->mPanelOriginLeftMargin:I

    .line 15
    iput v1, v0, Lmiuix/appcompat/app/AlertController;->mPanelOriginRightMargin:I

    .line 16
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 17
    :cond_4
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    if-nez p2, :cond_6

    .line 18
    iget-boolean v1, v0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz v1, :cond_5

    goto :goto_4

    .line 19
    :cond_5
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    new-instance v2, Lmiuix/appcompat/app/AlertController$6;

    move/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lmiuix/appcompat/app/AlertController$6;-><init>(Lmiuix/appcompat/app/AlertController;F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1c

    .line 20
    :cond_6
    :goto_4
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const v7, 0x7f0a09b2    # @id/topPanel

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 21
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const v8, 0x7f0a0224    # @id/contentPanel

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 22
    iget-object v9, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const v10, 0x7f0a01a6    # @id/buttonPanel

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, -0x1

    if-eqz v7, :cond_13

    const v15, 0x102002b    # @android:id/custom

    .line 23
    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    if-eqz v15, :cond_7

    .line 24
    invoke-virtual {v15, v13}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 25
    :cond_7
    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    const v2, 0x7f0a0225    # @id/contentView

    if-eqz v8, :cond_e

    if-eqz v15, :cond_8

    .line 26
    invoke-virtual {v0, v15}, Lmiuix/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result v8

    goto :goto_5

    :cond_8
    move v8, v6

    :goto_5
    const v13, 0x7f040248    # @attr/dialogListPreferredItemHeight

    if-eqz v8, :cond_d

    .line 27
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    invoke-static {v15}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 29
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v8, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {v5}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 32
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    sget-object v16, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 33
    invoke-static {v5, v3}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 34
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v8, v5, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-static {v13, v12}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(ILandroid/content/Context;)I

    move-result v3

    .line 36
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    mul-int/2addr v5, v3

    .line 37
    iget v3, v10, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const v13, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v13

    float-to-int v3, v3

    if-le v5, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    move v3, v6

    :goto_6
    if-nez v3, :cond_a

    .line 38
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 39
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    iget-object v13, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v13, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v14, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v15, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 42
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->resetListMaxHeight()V

    .line 43
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    invoke-direct {v5, v14, v4, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v15, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :goto_7
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_b

    .line 46
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    .line 47
    :cond_b
    check-cast v7, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-nez v3, :cond_c

    goto :goto_8

    :cond_c
    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v7, v8}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_b

    .line 48
    :cond_d
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 49
    invoke-static {v15}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 50
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {v2}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 51
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 52
    invoke-static {v13, v12}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(ILandroid/content/Context;)I

    move-result v3

    .line 53
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 54
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v3, 0x1

    .line 55
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 56
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 57
    check-cast v7, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v2}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_b

    .line 58
    :cond_e
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    .line 59
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    :cond_f
    if-eqz v15, :cond_10

    .line 60
    invoke-virtual {v0, v15}, Lmiuix/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 61
    invoke-virtual {v15, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 62
    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v5, 0x1

    .line 63
    invoke-static {v3, v5}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    goto :goto_9

    :cond_10
    move v2, v6

    .line 64
    :cond_11
    :goto_9
    check-cast v7, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-eqz v2, :cond_12

    goto :goto_a

    :cond_12
    const/4 v15, 0x0

    :goto_a
    invoke-virtual {v7, v15}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :cond_13
    :goto_b
    if-eqz v9, :cond_20

    const v2, 0x1020019    # @android:id/button1

    .line 65
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 66
    iget-object v3, v0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-static {v2}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 70
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 71
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v2, v6

    goto :goto_c

    .line 72
    :cond_14
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 75
    invoke-virtual {v2, v6}, Landroid/view/View;->setForceDarkAllowed(Z)V

    const/4 v2, 0x1

    :goto_c
    const v7, 0x102001a    # @android:id/button2

    .line 76
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 77
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-static {v7}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 81
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 82
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_d

    .line 83
    :cond_15
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    .line 85
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 86
    invoke-virtual {v7, v6}, Landroid/view/View;->setForceDarkAllowed(Z)V

    :goto_d
    const v7, 0x102001b    # @android:id/button3

    .line 87
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 88
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-static {v5}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 92
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 93
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_e

    .line 94
    :cond_16
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    .line 96
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 97
    invoke-virtual {v5, v6}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 98
    :goto_e
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v5, :cond_1c

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 99
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 100
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 101
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    invoke-static {v7}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    goto :goto_f

    .line 102
    :cond_18
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 103
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    if-nez v8, :cond_19

    .line 104
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 105
    new-instance v13, Lmiuix/internal/widget/GroupButton;

    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v15

    const/4 v11, 0x0

    invoke-direct {v13, v12, v11, v15}, Lmiuix/internal/widget/GroupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v7, v13}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$402(Lmiuix/appcompat/app/AlertController$ButtonInfo;Lmiuix/internal/widget/GroupButton;)Lmiuix/internal/widget/GroupButton;

    .line 106
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v11

    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$800(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setMaxLines(I)V

    .line 110
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    const/16 v11, 0x11

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_11

    :cond_19
    const/16 v11, 0x11

    .line 111
    :goto_11
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$500(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/os/Message;

    move-result-object v8

    if-nez v8, :cond_1a

    .line 112
    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$900(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v13

    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1500(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v15

    invoke-virtual {v8, v13, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-static {v7, v8}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$502(Lmiuix/appcompat/app/AlertController$ButtonInfo;Landroid/os/Message;)Landroid/os/Message;

    .line 113
    :cond_1a
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    const/16 v13, 0x8

    if-eq v8, v13, :cond_1b

    add-int/lit8 v2, v2, 0x1

    .line 114
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    invoke-static {v8}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    .line 115
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    .line 116
    invoke-virtual {v8, v6}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 117
    :cond_1b
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_10

    :cond_1c
    if-nez v2, :cond_1d

    const/16 v2, 0x8

    .line 118
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_12

    .line 119
    :cond_1d
    move-object v2, v9

    check-cast v2, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    iget-boolean v3, v0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setForceVertical(Z)V

    .line 120
    invoke-virtual {v9}, Landroid/view/ViewGroup;->invalidate()V

    .line 121
    :goto_12
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 122
    invoke-static {v12, v2}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 123
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 124
    iget-object v3, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const v5, 0x7f0a0224    # @id/contentPanel

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 125
    iget v5, v10, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    int-to-float v2, v2

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v7

    cmpg-float v2, v5, v2

    if-gtz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_13

    :cond_1e
    move v2, v6

    .line 126
    :goto_13
    iget-boolean v5, v0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    if-nez v5, :cond_20

    if-nez v2, :cond_1f

    .line 127
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-static {v9, v2}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_14

    .line 128
    :cond_1f
    invoke-static {v9, v3}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 129
    check-cast v3, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_15

    :cond_20
    :goto_14
    const/4 v2, 0x0

    :goto_15
    if-eqz v1, :cond_27

    const v3, 0x1020006    # @android:id/icon

    .line 130
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 131
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const v8, 0x7f0a00a4    # @id/alertTitle

    if-eqz v7, :cond_21

    .line 132
    invoke-static {v7}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 133
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v14, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 134
    iget-object v4, v0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v1, v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    .line 136
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_18

    .line 138
    :cond_21
    iget-object v4, v0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v7, 0x1

    xor-int/2addr v4, v7

    if-eqz v4, :cond_26

    .line 139
    iget-boolean v4, v0, Lmiuix/appcompat/app/AlertController;->mShowTitle:Z

    if-eqz v4, :cond_26

    .line 140
    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 141
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget v4, v0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    if-eqz v4, :cond_22

    .line 143
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16

    .line 144
    :cond_22
    iget-object v4, v0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_23

    .line 145
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16

    .line 146
    :cond_23
    iget-object v4, v0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    .line 147
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    .line 148
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v8

    .line 149
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v9

    .line 150
    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x8

    .line 151
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :goto_16
    iget-boolean v4, v0, Lmiuix/appcompat/app/AlertController;->mSmallIcon:Z

    if-eqz v4, :cond_24

    .line 153
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 154
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070a7d    # @dimen/miuix_appcompat_dialog_icon_drawable_width_small '24.0dp'

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070a7a    # @dimen/miuix_appcompat_dialog_icon_drawable_height_small '24.0dp'

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    :cond_24
    iget-object v3, v0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_27

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_25

    .line 157
    iget-object v3, v0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 158
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    .line 159
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    .line 160
    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_17

    :cond_25
    move v5, v4

    goto :goto_18

    .line 161
    :cond_26
    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    .line 162
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 163
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_18

    :cond_27
    :goto_17
    const/16 v5, 0x8

    :goto_18
    if-eqz v1, :cond_28

    .line 165
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_28

    const/4 v3, 0x1

    goto :goto_19

    :cond_28
    move v3, v6

    :goto_19
    if-eqz v3, :cond_2b

    .line 166
    iget-object v3, v0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v3, :cond_2a

    iget-object v3, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_29

    goto :goto_1a

    :cond_29
    move-object v13, v2

    goto :goto_1b

    :cond_2a
    :goto_1a
    const v2, 0x7f0a09a3    # @id/titleDividerNoCustom

    .line 167
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    :goto_1b
    if-eqz v13, :cond_2b

    .line 168
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_2b
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2c

    .line 170
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2c

    .line 171
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget v2, v0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    if-le v2, v14, :cond_2c

    const/4 v3, 0x1

    .line 173
    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 175
    :cond_2c
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const v2, 0x7f0a01e4    # @id/checkbox_stub

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_2d

    .line 176
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 177
    iget-object v3, v0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2d

    .line 178
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x1020001    # @android:id/checkbox

    .line 179
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 180
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 181
    iget-boolean v2, v0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    if-nez p2, :cond_2e

    .line 183
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    :cond_2e
    :goto_1c
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    new-instance v2, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final translateDialogPanel(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "The DialogPanel transitionY for : "

    .line 6
    const-string v1, "AlertController"

    .line 8
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 13
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 19
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 22
    int-to-float p1, p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 25
    return-void
    .line 28
.end method

.method public final updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    .line 7
    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    move-result-object v2

    .line 18
    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    .line 19
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eq v2, v4, :cond_1

    .line 24
    const/4 v4, 0x3

    .line 26
    if-ne v2, v4, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    move v2, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move v2, v5

    .line 32
    :goto_1
    sget-boolean v4, Lmiuix/os/Build;->IS_TABLET:Z

    .line 33
    if-eqz v1, :cond_5

    .line 35
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 37
    move-result-object v6

    .line 40
    iget v6, v6, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 41
    and-int/lit16 v6, v6, 0x2000

    .line 43
    if-eqz v6, :cond_2

    .line 45
    move v6, v5

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v6, v3

    .line 49
    :goto_2
    if-nez v6, :cond_5

    .line 50
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 52
    move-result-object v6

    .line 55
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 56
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 58
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 60
    move-result v6

    .line 63
    int-to-float v6, v6

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v7

    .line 68
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 69
    move-result-object v7

    .line 72
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 73
    const/high16 v8, 0x44160000    # 600.0f

    .line 75
    mul-float/2addr v7, v8

    .line 77
    cmpl-float v6, v6, v7

    .line 78
    if-lez v6, :cond_3

    .line 80
    move v6, v5

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move v6, v3

    .line 84
    :goto_3
    if-eqz v6, :cond_4

    .line 85
    move v6, v3

    .line 87
    goto :goto_4

    .line 88
    :cond_4
    move v6, v5

    .line 89
    goto :goto_4

    .line 90
    :cond_5
    const/4 v6, -0x1

    .line 91
    :goto_4
    iget-boolean v7, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    .line 92
    if-eqz v7, :cond_7

    .line 94
    if-eqz v4, :cond_6

    .line 96
    if-nez v2, :cond_9

    .line 98
    :cond_6
    if-nez v6, :cond_9

    .line 100
    goto :goto_5

    .line 102
    :cond_7
    if-eqz v4, :cond_8

    .line 103
    if-nez v2, :cond_9

    .line 105
    :cond_8
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    .line 107
    if-eqz v2, :cond_9

    .line 109
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    .line 111
    if-nez v2, :cond_a

    .line 113
    if-eqz v1, :cond_9

    .line 115
    goto :goto_5

    .line 117
    :cond_9
    move v5, v3

    .line 118
    :cond_a
    :goto_5
    if-eqz v5, :cond_18

    .line 119
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    .line 121
    move-result v0

    .line 124
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 125
    move-result v1

    .line 128
    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 129
    move-result-object v1

    .line 132
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 133
    move-result v2

    .line 136
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 137
    move-result-object v2

    .line 140
    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 141
    const-string v6, "AlertController"

    .line 143
    if-eqz v5, :cond_b

    .line 145
    const-string v5, "======================Debug for checkTranslateDialogPanel======================"

    .line 147
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    .line 152
    const-string v7, "The mPanelAndImeMargin: "

    .line 154
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    iget v7, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 159
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v5

    .line 167
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    .line 171
    const-string v7, "The imeInsets info: "

    .line 173
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    .line 178
    move-result-object v7

    .line 181
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v5

    .line 188
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    .line 192
    const-string v7, "The navigationBarInsets info: "

    .line 194
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    .line 199
    move-result-object v7

    .line 202
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v5

    .line 209
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    .line 213
    const-string v7, "The insets info: "

    .line 215
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object p1

    .line 226
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_b
    if-nez v4, :cond_c

    .line 230
    iget p1, v1, Landroid/graphics/Insets;->bottom:I

    .line 232
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    .line 234
    :cond_c
    iget p1, v1, Landroid/graphics/Insets;->bottom:I

    .line 237
    if-eqz v0, :cond_d

    .line 239
    if-nez v4, :cond_d

    .line 241
    iget v1, v2, Landroid/graphics/Insets;->bottom:I

    .line 243
    sub-int/2addr p1, v1

    .line 245
    :cond_d
    if-lez p1, :cond_15

    .line 246
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    .line 248
    move-result v1

    .line 251
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 252
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationY()F

    .line 254
    move-result v2

    .line 257
    int-to-float v1, v1

    .line 258
    add-float/2addr v1, v2

    .line 259
    float-to-int v1, v1

    .line 260
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 261
    if-gtz v1, :cond_e

    .line 263
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 265
    :cond_e
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 267
    if-eqz v1, :cond_f

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    .line 271
    const-string v2, "updateDialogPanelTranslationYByIme mPanelAndImeMargin "

    .line 273
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string v2, " isMultiWindowMode "

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 288
    const-string v2, " imeBottom "

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-static {v1, p1, v6}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 296
    :cond_f
    if-eqz v0, :cond_10

    .line 299
    if-nez v4, :cond_10

    .line 301
    neg-int v0, p1

    .line 303
    goto :goto_6

    .line 304
    :cond_10
    neg-int v0, p1

    .line 305
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 306
    add-int/2addr v0, v1

    .line 308
    :goto_6
    if-eqz v4, :cond_11

    .line 309
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 311
    if-ge p1, v1, :cond_11

    .line 313
    goto :goto_7

    .line 315
    :cond_11
    move v3, v0

    .line 316
    :goto_7
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    .line 317
    if-eqz p1, :cond_13

    .line 319
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 321
    if-eqz p1, :cond_12

    .line 323
    const-string p1, "updateDialogPanelTranslationYByIme anim translateDialogPanel Y="

    .line 325
    invoke-static {p1, v3, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    :cond_12
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 330
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 332
    move-result-object p1

    .line 335
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 336
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 339
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 341
    move-result-object p1

    .line 344
    const-wide/16 v0, 0xc8

    .line 345
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 347
    move-result-object p1

    .line 350
    int-to-float v0, v3

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 352
    move-result-object p1

    .line 355
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 356
    goto :goto_8

    .line 359
    :cond_13
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 360
    if-eqz p1, :cond_14

    .line 362
    const-string p1, "updateDialogPanelTranslationYByIme translateDialogPanel Y="

    .line 364
    invoke-static {p1, v3, v6}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    :cond_14
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    .line 369
    goto :goto_8

    .line 372
    :cond_15
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 373
    if-eqz p1, :cond_16

    .line 375
    const-string p1, "updateDialogPanelTranslationYByIme imeBottom <= 0"

    .line 377
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_16
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 382
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationY()F

    .line 384
    move-result p1

    .line 387
    const/4 v0, 0x0

    .line 388
    cmpg-float p1, p1, v0

    .line 389
    if-gez p1, :cond_17

    .line 391
    invoke-virtual {p0, v3}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    .line 393
    :cond_17
    :goto_8
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 396
    if-eqz p0, :cond_18

    .line 398
    const-string p0, "===================End of Debug for checkTranslateDialogPanel==================="

    .line 400
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_18
    return-void
    .line 405
.end method

.method public final updateDimBgBottomMargin(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    if-eq v1, p1, :cond_0

    .line 12
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 14
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final updateMinorScreenSize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 12
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 16
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 21
    int-to-float v0, v0

    .line 23
    const/high16 v2, 0x43200000    # 160.0f

    .line 24
    div-float/2addr v0, v2

    .line 26
    mul-float/2addr v0, v1

    .line 27
    float-to-int v0, v0

    .line 28
    if-lez v0, :cond_0

    .line 29
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    .line 34
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 36
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 39
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 41
    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 45
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 48
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 50
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 52
    move-result v0

    .line 55
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    .line 56
    :goto_0
    return-void
    .line 58
.end method

.method public final updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V
    .locals 11

    .line 1
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 2
    if-nez v0, :cond_d

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto/16 :goto_3

    .line 8
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 14
    move-result-object v0

    .line 17
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 18
    move-result v1

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 22
    move-result-object v1

    .line 25
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 26
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 28
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 31
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 37
    if-nez v3, :cond_1

    .line 39
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 41
    move-result v3

    .line 44
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    .line 45
    move-result v4

    .line 48
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 49
    move-result v5

    .line 52
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 53
    move-result p1

    .line 56
    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 60
    if-eqz p1, :cond_2

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    const-string v3, "updateParentPanel navigationBar "

    .line 66
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 77
    const-string v3, "AlertController"

    .line 78
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    const-string v4, "updateParentPanel mDisplayCutoutSafeInsets "

    .line 85
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 96
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 100
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 102
    move-result p1

    .line 105
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 106
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 108
    move-result v3

    .line 111
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 112
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 114
    move-result-object v4

    .line 117
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 118
    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 120
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object v5

    .line 127
    const v6, 0x7f070a5c    # @dimen/miuix_appcompat_dialog_bottom_margin '12.0dp'

    .line 128
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 131
    move-result v5

    .line 134
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 135
    move-result v1

    .line 138
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 139
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 141
    move-result v1

    .line 144
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 145
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getX()F

    .line 147
    move-result v6

    .line 150
    float-to-int v6, v6

    .line 151
    const/4 v7, 0x0

    .line 152
    if-gez v6, :cond_3

    .line 153
    move v6, v7

    .line 155
    :cond_3
    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 156
    iget v8, v8, Landroid/graphics/Point;->x:I

    .line 158
    int-to-float v8, v8

    .line 160
    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 161
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getX()F

    .line 163
    move-result v9

    .line 166
    sub-float/2addr v8, v9

    .line 167
    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 168
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWidth()I

    .line 170
    move-result v9

    .line 173
    int-to-float v9, v9

    .line 174
    sub-float/2addr v8, v9

    .line 175
    float-to-int v8, v8

    .line 176
    if-gez v8, :cond_4

    .line 177
    move v8, v7

    .line 179
    :cond_4
    iget v9, v2, Landroid/graphics/Rect;->left:I

    .line 180
    iget v10, v0, Landroid/graphics/Insets;->left:I

    .line 182
    sub-int/2addr v10, v3

    .line 184
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 185
    move-result v3

    .line 188
    if-eqz v3, :cond_6

    .line 189
    if-lt v6, v3, :cond_5

    .line 191
    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 193
    sub-int/2addr v6, v9

    .line 195
    sub-int/2addr v3, v6

    .line 196
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 197
    move-result v3

    .line 200
    goto :goto_0

    .line 201
    :cond_5
    sub-int/2addr v3, v6

    .line 202
    iget v6, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginLeftMargin:I

    .line 203
    sub-int/2addr v3, v6

    .line 205
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 206
    move-result v3

    .line 209
    goto :goto_0

    .line 210
    :cond_6
    iget v3, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginLeftMargin:I

    .line 211
    :goto_0
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 213
    iget v6, v0, Landroid/graphics/Insets;->right:I

    .line 215
    sub-int/2addr v6, p1

    .line 217
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 218
    move-result p1

    .line 221
    if-eqz p1, :cond_8

    .line 222
    if-lt v8, p1, :cond_7

    .line 224
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 226
    sub-int/2addr v8, v2

    .line 228
    sub-int/2addr p1, v8

    .line 229
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    .line 230
    move-result p1

    .line 233
    goto :goto_1

    .line 234
    :cond_7
    sub-int/2addr p1, v8

    .line 235
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginRightMargin:I

    .line 236
    sub-int/2addr p1, v2

    .line 238
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    .line 239
    move-result p1

    .line 242
    goto :goto_1

    .line 243
    :cond_8
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelOriginRightMargin:I

    .line 244
    :goto_1
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 246
    add-int/2addr v5, v0

    .line 248
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 249
    const/4 v2, 0x1

    .line 251
    if-eq v0, v1, :cond_9

    .line 252
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 254
    move v7, v2

    .line 256
    :cond_9
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 257
    if-eq v0, v5, :cond_a

    .line 259
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 261
    move v7, v2

    .line 263
    :cond_a
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 264
    if-eq v0, v3, :cond_b

    .line 266
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 268
    move v7, v2

    .line 270
    :cond_b
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 271
    if-eq v0, p1, :cond_c

    .line 273
    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 275
    goto :goto_2

    .line 277
    :cond_c
    move v2, v7

    .line 278
    :goto_2
    if-eqz v2, :cond_d

    .line 279
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 281
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 283
    :cond_d
    :goto_3
    return-void
    .line 286
.end method

.method public final updateRootViewSize(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 8
    iget-object v2, v0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 10
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 12
    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 14
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 16
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 18
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 20
    iget-object v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 22
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 24
    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 26
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 28
    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 30
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 32
    if-eqz p0, :cond_0

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    const-string v0, "updateRootViewSize mRootViewSizeDp "

    .line 38
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, " mRootViewSize "

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, " configuration.density "

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 59
    int-to-float p1, p1

    .line 61
    const/high16 v0, 0x43200000    # 160.0f

    .line 62
    div-float/2addr p1, v0

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    const-string p1, "AlertController"

    .line 72
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
    .line 77
.end method

.method public final updateWindowCutoutMode()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    .line 6
    if-eq v1, v0, :cond_4

    .line 8
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 12
    move-object v2, v1

    .line 14
    check-cast v2, Lmiuix/appcompat/app/AlertDialog;

    .line 15
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    .line 17
    move-result-object v2

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x2

    .line 22
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 23
    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 31
    move-result-object v2

    .line 34
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 35
    if-nez v2, :cond_0

    .line 37
    if-ne v0, v4, :cond_1

    .line 39
    move v3, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v3, v2

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 44
    move-result-object v0

    .line 47
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 48
    if-eq v0, v3, :cond_4

    .line 50
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 52
    move-result-object v0

    .line 55
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 56
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 64
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 70
    move-result-object v1

    .line 73
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    .line 78
    move-result v0

    .line 81
    if-ne v0, v4, :cond_3

    .line 82
    move v3, v4

    .line 84
    :cond_3
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 85
    move-result-object v0

    .line 88
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 89
    if-eq v0, v3, :cond_4

    .line 91
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 93
    move-result-object v0

    .line 96
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 97
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 99
    move-result v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 105
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 107
    move-result-object v0

    .line 110
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 111
    move-result-object v1

    .line 114
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    :cond_4
    :goto_1
    return-void
    .line 118
.end method

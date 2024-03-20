.class public Lcom/android/settings/speaker/SpeakerProgressDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SpeakerProgressDialog.java"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsAutoUpdateProgressPercentView:Z

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressPercentView:Landroid/widget/TextView;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$fQTRv9xek43FoP6XH7GdHsP00iA(Lcom/android/settings/speaker/SpeakerProgressDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/speaker/SpeakerProgressDialog;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsAutoUpdateProgressPercentView(Lcom/android/settings/speaker/SpeakerProgressDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIsAutoUpdateProgressPercentView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessage(Lcom/android/settings/speaker/SpeakerProgressDialog;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessageView(Lcom/android/settings/speaker/SpeakerProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgress(Lcom/android/settings/speaker/SpeakerProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressPercentFormat(Lcom/android/settings/speaker/SpeakerProgressDialog;)Ljava/text/NumberFormat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressPercentView(Lcom/android/settings/speaker/SpeakerProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressStyle:I

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIsAutoUpdateProgressPercentView:Z

    .line 77
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->initFormats()V

    return-void
.end method

.method private initFormats()V
    .locals 1

    const-string v0, "%1d/%2d"

    .line 98
    iput-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 99
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 p0, 0x0

    .line 100
    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 224
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private onProgressChanged()V
    .locals 2

    .line 495
    iget v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public incrementProgressBy(I)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 371
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 373
    :cond_0
    iget v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIncrementBy:I

    :goto_0
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 385
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 387
    :cond_0
    iget v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIncrementSecondaryBy:I

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 171
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    const v3, 0x101005d    # @android:attr/alertDialogStyle

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 177
    iget v2, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 182
    new-instance v2, Lcom/android/settings/speaker/SpeakerProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/speaker/SpeakerProgressDialog$1;-><init>(Lcom/android/settings/speaker/SpeakerProgressDialog;)V

    iput-object v2, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 212
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_horizontalProgressLayout:I

    sget v3, Lcom/android/settings/R$layout;->speaker_alert_dialog_progress:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 215
    sget v2, Lmiuix/appcompat/R$id;->progress_percent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    goto :goto_0

    .line 217
    :cond_0
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_progressLayout:I

    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_progress_dialog:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const v2, 0x102000d    # @android:id/progress

    .line 221
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 222
    sget v2, Lmiuix/appcompat/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 223
    sget v2, Lcom/android/settings/R$id;->cancel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mCancelButton:Landroid/widget/Button;

    .line 224
    new-instance v3, Lcom/android/settings/speaker/SpeakerProgressDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/speaker/SpeakerProgressDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/speaker/SpeakerProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 227
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    iget v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mMax:I

    if-lez v0, :cond_1

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setMax(I)V

    .line 231
    :cond_1
    iget v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressVal:I

    if-lez v0, :cond_2

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setProgress(I)V

    .line 234
    :cond_2
    iget v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mSecondaryProgressVal:I

    if-lez v0, :cond_3

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setSecondaryProgress(I)V

    .line 237
    :cond_3
    iget v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIncrementBy:I

    if-lez v0, :cond_4

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->incrementProgressBy(I)V

    .line 240
    :cond_4
    iget v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIncrementSecondaryBy:I

    if-lez v0, :cond_5

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_6
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 252
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setIndeterminate(Z)V

    .line 253
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->onProgressChanged()V

    .line 254
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 259
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStart()V

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mHasStarted:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 265
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public setAutoUpdateProgressPercentView(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIsAutoUpdateProgressPercentView:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 429
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIndeterminate:Z

    :goto_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0, p1}, Lmiuix/androidbasewidget/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 415
    :cond_0
    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 357
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 359
    :cond_0
    iput p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mMax:I

    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 448
    iget v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 449
    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 451
    :cond_0
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 453
    :cond_1
    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 277
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 279
    :cond_0
    iput p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressVal:I

    :goto_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 401
    :cond_0
    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setProgressPercentViewTextColor(I)V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setProgressPercentViewValue(Ljava/lang/String;)V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    .line 465
    iput p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 307
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 309
    :cond_0
    iput p1, p0, Lcom/android/settings/speaker/SpeakerProgressDialog;->mSecondaryProgressVal:I

    :goto_0
    return-void
.end method

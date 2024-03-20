.class public Lcom/android/systemui/screenshot/LongScreenshotActivity;
.super Landroid/app/Activity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActionExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public mCacheLoadFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

.field public mCacheSaveFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

.field public mCancel:Landroid/view/View;

.field public mCropView:Lcom/android/systemui/screenshot/CropView;

.field public mEdit:Landroid/view/View;

.field public mEnterTransitionView:Landroid/widget/ImageView;

.field public final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field public mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

.field public final mLongScreenshotHolder:Lcom/android/systemui/screenshot/LongScreenshotData;

.field public mMagnifierView:Lcom/android/systemui/screenshot/MagnifierView;

.field public mOutputBitmap:Landroid/graphics/Bitmap;

.field public mPreview:Landroid/widget/ImageView;

.field public mSave:Landroid/view/View;

.field public mSavedImagePath:Ljava/io/File;

.field public mScreenshotUserHandle:Landroid/os/UserHandle;

.field public mScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

.field public mShare:Landroid/view/View;

.field public mTransitionStarted:Z

.field public mTransitionView:Landroid/widget/ImageView;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static $r8$lambda$Wl8fRzdIVAPxf9MEzKy2r_9Ur3A(Lcom/android/systemui/screenshot/LongScreenshotActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 10
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->setButtonsEnabled(Z)V

    .line 14
    const p1, 0x7f0a07e2    # @id/save

    .line 17
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 20
    if-ne v0, p1, :cond_0

    .line 22
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 24
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 26
    sget-object p1, Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;->SAVE:Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->startExport(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    const p1, 0x7f0a0311    # @id/edit

    .line 35
    if-ne v0, p1, :cond_1

    .line 38
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_EDIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 40
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 42
    sget-object p1, Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;->EDIT:Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->startExport(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;)V

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    const p1, 0x7f0a0873    # @id/share

    .line 51
    if-ne v0, p1, :cond_2

    .line 54
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_SHARE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 56
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 58
    sget-object p1, Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;->SHARE:Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->startExport(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;)V

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    const p1, 0x7f0a01bd    # @id/cancel

    .line 67
    if-ne v0, p1, :cond_3

    .line 70
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_EXIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 72
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 77
    :cond_3
    :goto_0
    return-void
    .line 80
.end method

.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/LongScreenshotData;Lcom/android/systemui/screenshot/ActionIntentExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshotHolder:Lcom/android/systemui/screenshot/LongScreenshotData;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mActionExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onCachedImageLoaded(Lcom/android/systemui/screenshot/ImageLoader$Result;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_CACHED_IMAGE_LOADED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 4
    invoke-interface {v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 6
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v1

    .line 14
    iget-object v2, p1, Lcom/android/systemui/screenshot/ImageLoader$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 15
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 17
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 29
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mMagnifierView:Lcom/android/systemui/screenshot/MagnifierView;

    .line 32
    iget-object v2, p1, Lcom/android/systemui/screenshot/ImageLoader$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    move-result v2

    .line 39
    iget-object v3, p1, Lcom/android/systemui/screenshot/ImageLoader$Result;->bitmap:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 42
    move-result v3

    .line 45
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/screenshot/MagnifierView;->setDrawable(Landroid/graphics/drawable/Drawable;II)V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 49
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object p1, p1, Lcom/android/systemui/screenshot/ImageLoader$Result;->fileName:Ljava/io/File;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    .line 57
    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->setButtonsEnabled(Z)V

    .line 60
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const v0, 0x7f0d0167    # @layout/long_screenshot 'res/layout/long_screenshot.xml'

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    const v0, 0x7f0a0726    # @id/preview

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/ImageView;

    .line 18
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 20
    const v0, 0x7f0a07e2    # @id/save

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSave:Landroid/view/View;

    .line 29
    const v0, 0x7f0a0311    # @id/edit

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEdit:Landroid/view/View;

    .line 38
    const v0, 0x7f0a0873    # @id/share

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mShare:Landroid/view/View;

    .line 47
    const v0, 0x7f0a01bd    # @id/cancel

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCancel:Landroid/view/View;

    .line 56
    const v0, 0x7f0a0260    # @id/crop_view

    .line 58
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/systemui/screenshot/CropView;

    .line 65
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 67
    const v0, 0x7f0a0544    # @id/magnifier

    .line 69
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/systemui/screenshot/MagnifierView;

    .line 76
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mMagnifierView:Lcom/android/systemui/screenshot/MagnifierView;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 80
    invoke-virtual {v1, v0}, Lcom/android/systemui/screenshot/CropView;->setCropInteractionListener(Lcom/android/systemui/screenshot/CropView$CropInteractionListener;)V

    .line 82
    const v0, 0x7f0a09d4    # @id/transition

    .line 85
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 88
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/ImageView;

    .line 92
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f0a0333    # @id/enter_transition

    .line 96
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/ImageView;

    .line 103
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSave:Landroid/view/View;

    .line 107
    new-instance v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda1;

    .line 109
    const/4 v2, 0x0

    .line 111
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;I)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCancel:Landroid/view/View;

    .line 118
    new-instance v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda1;

    .line 120
    const/4 v2, 0x1

    .line 122
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;I)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEdit:Landroid/view/View;

    .line 129
    new-instance v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda1;

    .line 131
    const/4 v2, 0x2

    .line 133
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;I)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mShare:Landroid/view/View;

    .line 140
    new-instance v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda1;

    .line 142
    const/4 v2, 0x3

    .line 144
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;I)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 151
    new-instance v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda2;

    .line 153
    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 161
    move-result-object v0

    .line 164
    const-string v1, "capture-response"

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 167
    move-result-object v1

    .line 170
    check-cast v1, Landroid/view/ScrollCaptureResponse;

    .line 171
    iput-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    .line 173
    const-string/jumbo v1, "screenshot-userhandle"

    .line 175
    const-class v2, Landroid/os/UserHandle;

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 180
    move-result-object v0

    .line 183
    check-cast v0, Landroid/os/UserHandle;

    .line 184
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mScreenshotUserHandle:Landroid/os/UserHandle;

    .line 186
    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 190
    move-result-object v0

    .line 193
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mScreenshotUserHandle:Landroid/os/UserHandle;

    .line 194
    :cond_0
    if-eqz p1, :cond_2

    .line 196
    const-string/jumbo v0, "saved-image-path"

    .line 198
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object p1

    .line 204
    if-nez p1, :cond_1

    .line 205
    const-string p1, "Screenshot"

    .line 207
    const-string v0, "Missing saved state entry with key \'saved-image-path\'!"

    .line 209
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 214
    return-void

    .line 217
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 218
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 225
    iget-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    .line 228
    new-instance v0, Lcom/android/systemui/screenshot/ImageLoader$$ExternalSyntheticLambda0;

    .line 230
    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/ImageLoader$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    .line 232
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 235
    move-result-object p1

    .line 238
    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheLoadFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 239
    :cond_2
    return-void
    .line 241
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const-string/jumbo v0, "saved-image-path"

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final onStart()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_STARTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 7
    invoke-interface {v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheLoadFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 21
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 23
    const/4 v2, 0x0

    .line 25
    const-string v3, "Screenshot"

    .line 26
    if-eqz v0, :cond_1

    .line 28
    const-string v0, "mCacheLoadFuture != null"

    .line 30
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheLoadFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 35
    new-instance v3, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 39
    iget-object v0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 42
    invoke-virtual {v0, v3, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 44
    iput-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheLoadFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 47
    goto/16 :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshotHolder:Lcom/android/systemui/screenshot/LongScreenshotData;

    .line 51
    iget-object v0, v0, Lcom/android/systemui/screenshot/LongScreenshotData;->mLongScreenshot:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 58
    check-cast v0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 59
    if-eqz v0, :cond_2

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    const-string v4, "Completed: "

    .line 65
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 76
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 80
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    new-instance v2, Lcom/android/systemui/screenshot/TiledImageDrawable;

    .line 87
    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/TiledImageDrawable;-><init>(Lcom/android/systemui/screenshot/ImageTileSet;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mMagnifierView:Lcom/android/systemui/screenshot/MagnifierView;

    .line 97
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 99
    iget-object v3, v3, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    new-instance v4, Lcom/android/systemui/screenshot/TiledImageDrawable;

    .line 106
    invoke-direct {v4, v3}, Lcom/android/systemui/screenshot/TiledImageDrawable;-><init>(Lcom/android/systemui/screenshot/ImageTileSet;)V

    .line 108
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 111
    iget-object v3, v3, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 113
    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    .line 115
    move-result v3

    .line 118
    iget-object v5, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 119
    iget-object v5, v5, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 121
    invoke-virtual {v5}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    .line 123
    move-result v5

    .line 126
    invoke-virtual {v0, v4, v3, v5}, Lcom/android/systemui/screenshot/MagnifierView;->setDrawable(Landroid/graphics/drawable/Drawable;II)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 130
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 132
    iget-object v0, v0, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 136
    move-result-object v0

    .line 139
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 140
    neg-int v0, v0

    .line 142
    int-to-float v0, v0

    .line 143
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 144
    iget-object v3, v3, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 146
    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    .line 148
    move-result v3

    .line 151
    int-to-float v3, v3

    .line 152
    div-float/2addr v0, v3

    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 155
    move-result v0

    .line 158
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 159
    iget-object v3, v3, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 161
    iget-object v3, v3, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 163
    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 165
    move-result-object v3

    .line 168
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 169
    iget-object v4, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 171
    iget-object v4, v4, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    .line 173
    check-cast v4, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;

    .line 175
    iget-object v4, v4, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 177
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 179
    move-result v4

    .line 182
    sub-int/2addr v3, v4

    .line 183
    int-to-float v3, v3

    .line 184
    iget-object v4, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 185
    iget-object v4, v4, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 187
    invoke-virtual {v4}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    .line 189
    move-result v4

    .line 192
    int-to-float v4, v4

    .line 193
    div-float/2addr v3, v4

    .line 194
    const/high16 v4, 0x3f800000    # 1.0f

    .line 195
    sub-float v3, v4, v3

    .line 197
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    .line 199
    move-result v3

    .line 202
    iget-object v4, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    .line 203
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    .line 208
    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 210
    move-result-object v2

    .line 213
    new-instance v4, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;

    .line 214
    invoke-direct {v4, p0, v0, v3}, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;FF)V

    .line 216
    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 222
    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->toBitmap()Landroid/graphics/Bitmap;

    .line 224
    move-result-object v0

    .line 227
    new-instance v2, Ljava/io/File;

    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    .line 230
    move-result-object v3

    .line 233
    const-string v4, "long_screenshot_cache.png"

    .line 234
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    .line 239
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    new-instance v4, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda1;

    .line 244
    iget-object v5, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 246
    invoke-direct {v4, v3, v5, v2, v0}, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ImageExporter;Ljava/util/concurrent/Executor;Ljava/io/File;Landroid/graphics/Bitmap;)V

    .line 248
    invoke-static {v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 251
    move-result-object v0

    .line 254
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheSaveFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 255
    new-instance v2, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda3;

    .line 257
    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;)V

    .line 259
    iget-object p0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 262
    invoke-virtual {p0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 264
    goto :goto_0

    .line 267
    :cond_2
    const-string v0, "No long screenshot available!"

    .line 268
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 273
    :goto_0
    return-void
    .line 276
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionStarted:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_FINISHED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 20
    invoke-interface {v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mScrollCaptureResponse:Landroid/view/ScrollCaptureResponse;

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v0}, Landroid/view/ScrollCaptureResponse;->close()V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCacheSaveFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 32
    if-eqz v0, :cond_2

    .line 34
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->cancel(Z)Z

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    .line 40
    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 44
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSavedImagePath:Ljava/io/File;

    .line 48
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 50
    if-eqz p0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 54
    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ImageTileSet;->clear()V

    .line 56
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    .line 59
    check-cast p0, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;

    .line 61
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mReader:Landroid/media/ImageReader;

    .line 63
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V

    .line 65
    :cond_4
    return-void
    .line 68
.end method

.method public final setButtonsEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mSave:Landroid/view/View;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEdit:Landroid/view/View;

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mShare:Landroid/view/View;

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    return-void
    .line 17
.end method

.method public final startExport(Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "Screenshot"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "No drawable, skipping export!"

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 18
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 20
    move-result v3

    .line 23
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 24
    move-result v4

    .line 27
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/screenshot/CropView;->getCropBoundaries(II)Landroid/graphics/Rect;

    .line 28
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 32
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    const-string p0, "Crop bounds empty, skipping export."

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->updateImageDimensions()V

    .line 44
    new-instance v1, Landroid/graphics/RenderNode;

    .line 47
    const-string v3, "Bitmap Export"

    .line 49
    invoke-direct {v1, v3}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 54
    move-result v3

    .line 57
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 58
    move-result v4

    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 63
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    .line 66
    move-result-object v3

    .line 69
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 70
    neg-int v4, v4

    .line 72
    int-to-float v4, v4

    .line 73
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 74
    neg-int v5, v5

    .line 76
    int-to-float v5, v5

    .line 77
    invoke-virtual {v3, v4, v5}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 78
    invoke-virtual {v3, v2}, Landroid/graphics/RecordingCanvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 81
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    .line 87
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 90
    move-result v0

    .line 93
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 94
    move-result v2

    .line 97
    invoke-static {v1, v0, v2}, Landroid/graphics/HardwareRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    .line 98
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mOutputBitmap:Landroid/graphics/Bitmap;

    .line 102
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    .line 104
    iget-object v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 106
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 108
    move-result-object v3

    .line 111
    iget-object v4, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mOutputBitmap:Landroid/graphics/Bitmap;

    .line 112
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 114
    move-result-object v5

    .line 117
    iget-object v6, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mScreenshotUserHandle:Landroid/os/UserHandle;

    .line 118
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/screenshot/ImageExporter;->export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;Ljava/time/ZonedDateTime;Landroid/os/UserHandle;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 120
    move-result-object v0

    .line 123
    new-instance v1, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda4;

    .line 124
    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;Lcom/android/systemui/screenshot/LongScreenshotActivity$PendingAction;Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;)V

    .line 126
    iget-object p1, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 129
    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 131
    invoke-virtual {p1, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 133
    return-void
    .line 136
.end method

.method public final updateImageDimensions()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 15
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 20
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    div-float/2addr v2, v1

    .line 25
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    .line 28
    move-result v1

    .line 31
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 34
    move-result v3

    .line 37
    sub-int/2addr v1, v3

    .line 38
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    .line 41
    move-result v3

    .line 44
    sub-int/2addr v1, v3

    .line 45
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    .line 48
    move-result v3

    .line 51
    iget-object v4, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 54
    move-result v4

    .line 57
    sub-int/2addr v3, v4

    .line 58
    iget-object v4, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 61
    move-result v4

    .line 64
    sub-int/2addr v3, v4

    .line 65
    int-to-float v4, v1

    .line 66
    int-to-float v5, v3

    .line 67
    div-float v6, v4, v5

    .line 68
    iget-object v7, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 72
    move-result v7

    .line 75
    iget-object v8, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 78
    move-result v8

    .line 81
    cmpl-float v9, v2, v6

    .line 82
    if-lez v9, :cond_1

    .line 84
    mul-float/2addr v6, v5

    .line 86
    div-float/2addr v6, v2

    .line 87
    float-to-int v2, v6

    .line 88
    sub-int/2addr v3, v2

    .line 89
    div-int/lit8 v3, v3, 0x2

    .line 90
    iget-object v6, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 92
    iget-object v9, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 96
    move-result v9

    .line 99
    add-int/2addr v9, v3

    .line 100
    iget-object v10, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 103
    move-result v10

    .line 106
    add-int/2addr v10, v3

    .line 107
    invoke-virtual {v6, v9, v10}, Lcom/android/systemui/screenshot/CropView;->setExtraPadding(II)V

    .line 108
    add-int/2addr v8, v3

    .line 111
    iget-object v6, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 112
    invoke-virtual {v6, v1}, Lcom/android/systemui/screenshot/CropView;->setImageWidth(I)V

    .line 114
    iget-object v6, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 117
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 119
    move-result-object v6

    .line 122
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 123
    move-result v6

    .line 126
    int-to-float v6, v6

    .line 127
    div-float/2addr v4, v6

    .line 128
    move v11, v3

    .line 129
    move v3, v2

    .line 130
    move v2, v11

    .line 131
    goto :goto_0

    .line 132
    :cond_1
    mul-float/2addr v4, v2

    .line 133
    div-float/2addr v4, v6

    .line 134
    float-to-int v4, v4

    .line 135
    sub-int/2addr v1, v4

    .line 136
    div-int/lit8 v1, v1, 0x2

    .line 137
    add-int/2addr v7, v1

    .line 139
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 140
    iget-object v6, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 142
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 144
    move-result v6

    .line 147
    iget-object v9, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 148
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 150
    move-result v9

    .line 153
    invoke-virtual {v1, v6, v9}, Lcom/android/systemui/screenshot/CropView;->setExtraPadding(II)V

    .line 154
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 157
    mul-float/2addr v2, v5

    .line 159
    float-to-int v2, v2

    .line 160
    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/CropView;->setImageWidth(I)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 166
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 170
    move-result v1

    .line 173
    int-to-float v1, v1

    .line 174
    div-float v1, v5, v1

    .line 175
    const/4 v2, 0x0

    .line 177
    move v11, v4

    .line 178
    move v4, v1

    .line 179
    move v1, v11

    .line 180
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mCropView:Lcom/android/systemui/screenshot/CropView;

    .line 181
    invoke-virtual {v6, v1, v3}, Lcom/android/systemui/screenshot/CropView;->getCropBoundaries(II)Landroid/graphics/Rect;

    .line 183
    move-result-object v1

    .line 186
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    .line 187
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 189
    add-int/2addr v7, v6

    .line 191
    int-to-float v6, v7

    .line 192
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 193
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    .line 196
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 198
    add-int/2addr v8, v6

    .line 200
    int-to-float v6, v8

    .line 201
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 202
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    .line 205
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 207
    move-result-object v3

    .line 210
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 211
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 213
    move-result v6

    .line 216
    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 217
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 219
    move-result v1

    .line 222
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 223
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mTransitionView:Landroid/widget/ImageView;

    .line 225
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 230
    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    .line 234
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 236
    move-result-object v1

    .line 239
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 240
    iget-object v3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 242
    iget-object v3, v3, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 244
    iget-object v3, v3, Lcom/android/systemui/screenshot/ImageTileSet;->mRegion:Landroid/graphics/Region;

    .line 246
    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 248
    move-result-object v3

    .line 251
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 252
    neg-int v3, v3

    .line 254
    int-to-float v3, v3

    .line 255
    iget-object v6, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 256
    iget-object v6, v6, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 258
    invoke-virtual {v6}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    .line 260
    move-result v6

    .line 263
    int-to-float v6, v6

    .line 264
    div-float/2addr v3, v6

    .line 265
    const/4 v6, 0x0

    .line 266
    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    .line 267
    move-result v3

    .line 270
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 271
    move-result v7

    .line 274
    int-to-float v7, v7

    .line 275
    mul-float/2addr v7, v4

    .line 276
    float-to-int v7, v7

    .line 277
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 278
    iget-object v7, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mLongScreenshot:Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 280
    iget-object v7, v7, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    .line 282
    check-cast v7, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;

    .line 284
    iget-object v7, v7, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 286
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 288
    move-result v7

    .line 291
    int-to-float v7, v7

    .line 292
    mul-float/2addr v7, v4

    .line 293
    float-to-int v7, v7

    .line 294
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 295
    iget-object v7, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    .line 297
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    new-instance v1, Landroid/graphics/Matrix;

    .line 302
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 304
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 307
    neg-float v4, v4

    .line 310
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 311
    move-result v0

    .line 314
    int-to-float v0, v0

    .line 315
    mul-float/2addr v4, v0

    .line 316
    mul-float/2addr v4, v3

    .line 317
    invoke-virtual {v1, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 318
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    .line 326
    mul-float/2addr v3, v5

    .line 328
    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mPreview:Landroid/widget/ImageView;

    .line 329
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 331
    move-result p0

    .line 334
    int-to-float p0, p0

    .line 335
    add-float/2addr v3, p0

    .line 336
    int-to-float p0, v2

    .line 337
    add-float/2addr v3, p0

    .line 338
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 339
    :cond_2
    return-void
    .line 342
.end method

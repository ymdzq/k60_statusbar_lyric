.class public final Lcom/android/keyguard/KeyguardMoveRightController$4;
.super Landroid/os/AsyncTask;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardMoveRightController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardMoveRightController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController$4;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController$4;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 4
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardMoveRightController;->mUserAuthenticatedSinceBoot:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMoveRightController$4;->getDrawableExceptVela(Z)Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object p0

    .line 16
    :goto_0
    return-object p0
    .line 17
.end method

.method public final getDrawableExceptVela(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveRightController$4;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/BaseKeyguardMoveController;->mContext:Landroid/content/Context;

    .line 4
    const-string v1, "content://com.android.camera.splashProvider"

    .line 6
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    move-result-object v1

    .line 11
    const-string v2, "getCameraSplash"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/miui/utils/ContentProviderUtils;->getResultFromProvider(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMoveRightController$4;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 34
    iget-object v1, v1, Lcom/android/keyguard/BaseKeyguardMoveController;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    move-result-object v1

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMoveRightController$4;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 46
    iget-object v2, v2, Lcom/android/keyguard/BaseKeyguardMoveController;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v2

    .line 53
    invoke-static {v1, v0, v2}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;

    .line 54
    move-result-object v0

    .line 57
    new-instance v1, Lcom/android/keyguard/KeyguardMoveRightController$4$$ExternalSyntheticLambda0;

    .line 58
    invoke-direct {v1}, Lcom/android/keyguard/KeyguardMoveRightController$4$$ExternalSyntheticLambda0;-><init>()V

    .line 60
    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    .line 63
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "KeyguardMoveRightController"

    .line 69
    if-eqz p1, :cond_0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v2, "updatePreViewBackground ContentProviderUtils.getResultFromProvider splashProvider fail,try again:"

    .line 75
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 88
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 98
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 p1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMoveRightController$4;->getDrawableExceptVela(Z)Landroid/graphics/drawable/Drawable;

    .line 103
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo p1, "updatePreViewBackground ContentProviderUtils.getResultFromProvider splashProvider  fail , wont try again"

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    .line 123
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p0

    .line 133
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    const/4 p0, 0x0

    .line 137
    :goto_0
    return-object p0
    .line 138
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    move-object v0, p1

    .line 9
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 22
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    const/4 v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v1

    .line 30
    :goto_0
    if-nez v2, :cond_3

    .line 31
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 33
    move-result-object v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    const-string v0, " Bitmap==null"

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    const-string v4, " isRecycled:"

    .line 44
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 53
    move-result v0

    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    :goto_1
    const-string v3, "DrawableUtils"

    .line 64
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    goto :goto_2

    .line 69
    :cond_2
    move v2, v1

    .line 70
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 71
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$4;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 73
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 75
    if-eqz p0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mThreadHandler:Landroid/os/Handler;

    .line 79
    new-instance v2, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda4;

    .line 81
    invoke-direct {v2, v1, p0, p1}, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    goto :goto_3

    .line 89
    :cond_4
    const-string p0, "KeyguardMoveRightController"

    .line 90
    const-string/jumbo p1, "updatePreViewBackground  onPostExecute resultDrawable is inValid"

    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_3
    return-void
    .line 98
.end method

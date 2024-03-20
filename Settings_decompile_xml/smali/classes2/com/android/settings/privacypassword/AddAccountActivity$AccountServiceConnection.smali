.class Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;
.super Ljava/lang/Object;
.source "AddAccountActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/AddAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountServiceConnection"
.end annotation


# instance fields
.field private mMiAccountService:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

.field final synthetic this$0:Lcom/android/settings/privacypassword/AddAccountActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/privacypassword/AddAccountActivity;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/privacypassword/AddAccountActivity;Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;-><init>(Lcom/android/settings/privacypassword/AddAccountActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    const-string p1, "close file error"

    const-string v0, "AddAccountActivity"

    .line 248
    invoke-static {p2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->mMiAccountService:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    .line 249
    iget-object p2, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {p2}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$fgetmAccountIcon(Lcom/android/settings/privacypassword/AddAccountActivity;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->ic_head:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {v1}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$fgetmAccount(Lcom/android/settings/privacypassword/AddAccountActivity;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->mMiAccountService:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    iget-object v2, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {v2}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$fgetmAccount(Lcom/android/settings/privacypassword/AddAccountActivity;)Landroid/accounts/Account;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;->getAvatarFd(Landroid/accounts/Account;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 255
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 257
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 259
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 260
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v7, v2, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object v3, p0

    .line 259
    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->toRoundCorner(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 261
    iget-object v3, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-static {v3}, Lcom/android/settings/privacypassword/AddAccountActivity;->-$$Nest$fgetmAccountIcon(Lcom/android/settings/privacypassword/AddAccountActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_0
    move-object v1, p2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 271
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 275
    :goto_1
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 278
    iput-object p2, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->mMiAccountService:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v1, p2

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v1, p2

    :goto_3
    :try_start_3
    const-string v3, "Fail getAvatarFd"

    .line 267
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 271
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :goto_4
    return-void

    :catchall_1
    move-exception v2

    :goto_5
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 275
    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :cond_3
    :goto_6
    iget-object p1, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->this$0:Lcom/android/settings/privacypassword/AddAccountActivity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 278
    iput-object p2, p0, Lcom/android/settings/privacypassword/AddAccountActivity$AccountServiceConnection;->mMiAccountService:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    .line 279
    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    return-void
.end method

.method public toRoundCorner(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 288
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "toRoundCorner: width "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AddAccountActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :try_start_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 296
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 297
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 298
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    .line 299
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 300
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 301
    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p4, p4

    .line 302
    invoke-virtual {v0, v4, p4, p4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 303
    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 304
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 305
    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p4, v3, v3, p5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, p4, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p6, :cond_0

    const/high16 p4, 0x3f800000    # 1.0f

    .line 308
    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 309
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p4, -0x1000000

    .line 310
    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p4, 0x4c

    .line 311
    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 312
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 314
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.class Lcom/android/settings/accounts/XiaomiAccountUtils$MainHandler;
.super Landroid/os/Handler;
.source "XiaomiAccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/XiaomiAccountUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private mOuterUtilsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/accounts/XiaomiAccountUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/XiaomiAccountUtils;)V
    .locals 1

    .line 526
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 527
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$MainHandler;->mOuterUtilsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$MainHandler;->mOuterUtilsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/XiaomiAccountUtils;

    .line 533
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_3

    .line 542
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p0, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountInfo;

    if-eqz p0, :cond_3

    .line 543
    invoke-static {v0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fgetmAccountAvatar(Lcom/android/settings/accounts/XiaomiAccountUtils;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fgetmAccountAvatar(Lcom/android/settings/accounts/XiaomiAccountUtils;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_1

    .line 544
    invoke-static {v0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fgetmAccountAvatar(Lcom/android/settings/accounts/XiaomiAccountUtils;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 546
    :cond_1
    invoke-static {}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MainHandler handle MSG_UPDATE_ACCOUNT_INFO"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountInfo;

    .line 548
    iget-object p1, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountInfo;->mAccountName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fputmAccountName(Lcom/android/settings/accounts/XiaomiAccountUtils;Ljava/lang/String;)V

    .line 549
    iget-object p0, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountInfo;->mAccountAvator:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$fputmAccountAvatar(Lcom/android/settings/accounts/XiaomiAccountUtils;Landroid/graphics/Bitmap;)V

    .line 550
    invoke-virtual {v0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->updateXiaomiAccountInfo()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 535
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    .line 537
    invoke-static {v0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$mclear(Lcom/android/settings/accounts/XiaomiAccountUtils;)V

    :cond_3
    :goto_0
    return-void
.end method

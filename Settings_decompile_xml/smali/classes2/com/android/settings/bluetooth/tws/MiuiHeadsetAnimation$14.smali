.class Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$14;
.super Ljava/lang/Object;
.source "MiuiHeadsetAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->loadDefaultInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$14;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$14;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tic:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 373
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$14;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->headset_default_k73a_green_enc:I

    const-string v3, "k73@GL_default_green"

    invoke-static {v1, v2, v3}, Lcom/android/settings/utils/EncryptionUtil;->decodeImageResourceByKey(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 376
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$14;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 377
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string p0, "MiuiHeadsetAnimation"

    const-string v0, "bitmap null"

    .line 379
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

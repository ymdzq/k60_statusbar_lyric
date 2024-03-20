.class Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;
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

.field final synthetic val$resourceid:I


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 441
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    iput p2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;->val$resourceid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tic:I

    .line 444
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 445
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->checkLocalCached(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    .line 447
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-string v2, "0"

    .line 446
    invoke-static {v1, p0, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->-$$Nest$smgetDrawableFromFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 449
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->-$$Nest$mfetchOnlineResource(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)V

    .line 453
    iget p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$19;->val$resourceid:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

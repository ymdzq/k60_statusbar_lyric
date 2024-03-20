.class Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$4;
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

    .line 274
    iput-object p1, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 276
    iget-object p0, p0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation$4;->this$0:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->tic:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 277
    sget v0, Lcom/android/settings/R$drawable;->TWS01_list_Yellow:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 281
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

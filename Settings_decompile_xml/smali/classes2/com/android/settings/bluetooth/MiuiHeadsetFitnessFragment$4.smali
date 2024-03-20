.class Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$4;
.super Ljava/lang/Object;
.source "MiuiHeadsetFitnessFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tempView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 398
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$4;->val$tempView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$4;->val$context:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->headset_fitness_TWS01S:I

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->decodeImageResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 405
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$4;->val$tempView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string p0, "MiuiHeadsetFitnessFragment"

    const-string v0, "bitmap null"

    .line 407
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

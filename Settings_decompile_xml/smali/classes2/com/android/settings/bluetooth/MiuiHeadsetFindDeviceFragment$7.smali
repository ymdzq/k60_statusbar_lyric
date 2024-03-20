.class Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$7;
.super Ljava/lang/Object;
.source "MiuiHeadsetFindDeviceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$7;->val$context:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->headset_find_device_k75_white_enc:I

    const-string v2, "k75_white"

    invoke-static {v0, v1, v2}, Lcom/android/settings/utils/EncryptionUtil;->decodeImageResourceByKey(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 343
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;->-$$Nest$fgetmDeviceImage(Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string p0, "MiuiHeadsetFindDeviceFragment"

    const-string v0, "bitmap null"

    .line 345
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

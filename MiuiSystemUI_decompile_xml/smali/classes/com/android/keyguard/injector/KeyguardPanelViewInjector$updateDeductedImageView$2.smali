.class public final Lcom/android/keyguard/injector/KeyguardPanelViewInjector$updateDeductedImageView$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $mDeductedImageView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$updateDeductedImageView$2;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$updateDeductedImageView$2;->$mDeductedImageView:Landroid/widget/ImageView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$updateDeductedImageView$2;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 4
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getWallpaperInfo()Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->getCropSubject()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    const-string v1, "KeyguardPanelViewInjector"

    .line 18
    if-eqz v0, :cond_2

    .line 20
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 22
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 33
    move-result-object v0

    .line 36
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$updateDeductedImageView$2;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 37
    iget-object v3, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMainHandler:Landroid/os/Handler;

    .line 39
    new-instance v4, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$updateDeductedImageView$2$1;

    .line 41
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$updateDeductedImageView$2;->$mDeductedImageView:Landroid/widget/ImageView;

    .line 43
    invoke-direct {v4, v2, p0, v0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$updateDeductedImageView$2$1;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Landroid/widget/ImageView;Landroid/net/Uri;)V

    .line 45
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    goto :goto_1

    .line 51
    :cond_1
    const-string/jumbo p0, "updateDeductedImageView: file does not exist"

    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_1

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const-string/jumbo v0, "updateDeductedImageView: error "

    .line 60
    invoke-static {v0, p0, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 63
    goto :goto_1

    .line 66
    :cond_2
    const-string/jumbo p0, "updateDeductedImageView: depthFilePath is null"

    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_1
    return-void
    .line 73
.end method

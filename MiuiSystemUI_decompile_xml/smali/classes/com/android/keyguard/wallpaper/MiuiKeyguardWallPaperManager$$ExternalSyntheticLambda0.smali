.class public final synthetic Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperBlurPreviewChangeListeners:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainerController$8;

    .line 28
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperBlurPreview:Landroid/graphics/drawable/Drawable;

    .line 30
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$8;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 32
    iget-object v3, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgImageView:Landroid/widget/ImageView;

    .line 34
    if-eqz v3, :cond_0

    .line 36
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgImageView:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    return-void

    .line 48
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 49
    check-cast p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 56
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 61
    move-object v1, v0

    .line 62
    check-cast v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 63
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 65
    iget v3, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardColorScheme:I

    .line 67
    iget-boolean v4, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mStatusBarIsDeep:Z

    .line 69
    iget-boolean v5, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mClockStyleIsDeep:Z

    .line 71
    iget-boolean v6, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFingerPrintIsDeep:Z

    .line 73
    iget-boolean v7, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconIsDeep:Z

    .line 75
    iget-boolean v8, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMagazineScriptIsDeep:Z

    .line 77
    invoke-virtual/range {v1 .. v8}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->handlePartColorComputeComplete(Ljava/util/Map;IZZZZZ)V

    .line 79
    return-void

    .line 82
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 83
    check-cast p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$2;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$2;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 90
    iget-object v1, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->wallpaperCallback:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;

    .line 92
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 94
    invoke-virtual {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getMiuiWallpaperColors()Landroid/app/WallpaperColors;

    .line 96
    move-result-object v0

    .line 99
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$2;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperType:Ljava/lang/String;

    .line 102
    const/4 v2, 0x2

    .line 104
    invoke-virtual {v1, v0, p0, v2}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->onWallpaperChanged(Landroid/app/WallpaperColors;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_2

    .line 108
    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :goto_2
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 114
.end method

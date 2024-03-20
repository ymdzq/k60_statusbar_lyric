.class Lcom/android/settings/haptic/HapticDemoVideoPreference$1;
.super Ljava/lang/Object;
.source "HapticDemoVideoPreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/haptic/HapticDemoVideoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$1;->this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 193
    iget-object p2, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$1;->this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$fputmSurface(Lcom/android/settings/haptic/HapticDemoVideoPreference;Landroid/view/Surface;)V

    .line 194
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$1;->this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;

    invoke-static {p1}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$fgetmIsVisible(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$1;->this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;

    invoke-static {p1}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$fgetmBgHandler(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$1;->this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;

    invoke-static {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$fgetmBgHandler(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "HapticDemoVideoPreferen"

    const-string/jumbo v0, "onSurfaceTextureDestroyed"

    .line 205
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$1;->this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$fputmSurface(Lcom/android/settings/haptic/HapticDemoVideoPreference;Landroid/view/Surface;)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$1;->this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;

    invoke-static {p1}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$fgetmBgHandler(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$1;->this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;

    invoke-static {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$fgetmBgHandler(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    return-void
.end method

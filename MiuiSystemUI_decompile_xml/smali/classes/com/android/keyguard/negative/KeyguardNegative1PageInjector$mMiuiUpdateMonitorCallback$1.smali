.class public final Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mMiuiUpdateMonitorCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mMiuiUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLockWallpaperChange(Z)V
    .locals 2

    .line 1
    const-class p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 8
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLeftViewBackgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    if-nez p1, :cond_1

    .line 12
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mMiuiUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 14
    iget-object p1, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mLeftTransferBgView:Landroid/widget/ImageView;

    .line 16
    if-eqz p1, :cond_1

    .line 18
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 20
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 26
    iget v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mWallpaperBlurColor:I

    .line 28
    const/4 v1, -0x1

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p0

    .line 38
    const v0, 0x7f06094d    # @color/wallpaper_des_text_dark_color '#80000000'

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 42
    move-result v0

    .line 45
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 46
    :cond_1
    return-void
    .line 49
.end method

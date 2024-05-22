.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$9;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$9;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$9;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->getKeyguardWallPaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$9;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 14
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 18
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainerController$9$1;

    .line 20
    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController$9$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController$9;Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
    .line 28
.end method

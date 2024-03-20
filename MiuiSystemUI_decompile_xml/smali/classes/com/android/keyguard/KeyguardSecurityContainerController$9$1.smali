.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$9$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/keyguard/KeyguardSecurityContainerController$9;

.field public final synthetic val$backgroundPreview:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController$9;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$9$1;->this$1:Lcom/android/keyguard/KeyguardSecurityContainerController$9;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$9$1;->val$backgroundPreview:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$9$1;->this$1:Lcom/android/keyguard/KeyguardSecurityContainerController$9;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$9;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 4
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgImageView:Landroid/widget/ImageView;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$9$1;->this$1:Lcom/android/keyguard/KeyguardSecurityContainerController$9;

    .line 15
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$9;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 17
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgImageView:Landroid/widget/ImageView;

    .line 19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$9$1;->val$backgroundPreview:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.class public final Lcom/android/keyguard/utils/MiuiKeyguardUtils$setViewTouchDelegate$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $expandTouchWidth:I

.field public final synthetic $parentView:Landroid/view/View;

.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/keyguard/utils/MiuiKeyguardUtils$setViewTouchDelegate$1;->$expandTouchWidth:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/utils/MiuiKeyguardUtils$setViewTouchDelegate$1;->$view:Landroid/view/View;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/utils/MiuiKeyguardUtils$setViewTouchDelegate$1;->$parentView:Landroid/view/View;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/utils/MiuiKeyguardUtils$setViewTouchDelegate$1;->$expandTouchWidth:I

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/utils/MiuiKeyguardUtils$setViewTouchDelegate$1;->$view:Landroid/view/View;

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 16
    iget v2, p0, Lcom/android/keyguard/utils/MiuiKeyguardUtils$setViewTouchDelegate$1;->$expandTouchWidth:I

    .line 18
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 21
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 23
    add-int/2addr v1, v2

    .line 25
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 26
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 28
    sub-int/2addr v1, v2

    .line 30
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 31
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 33
    add-int/2addr v1, v2

    .line 35
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 36
    new-instance v1, Landroid/view/TouchDelegate;

    .line 38
    iget-object v2, p0, Lcom/android/keyguard/utils/MiuiKeyguardUtils$setViewTouchDelegate$1;->$view:Landroid/view/View;

    .line 40
    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/utils/MiuiKeyguardUtils$setViewTouchDelegate$1;->$parentView:Landroid/view/View;

    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 49
    return-void
    .line 52
.end method

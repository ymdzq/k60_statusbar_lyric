.class public final Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;


# direct methods
.method public constructor <init>(Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;->this$0:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;->this$0:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    .line 2
    iget-object v0, v0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->mView:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;->this$0:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    .line 13
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->evaluateUserVisibility()V

    .line 15
    const/4 p0, 0x1

    .line 18
    return p0
    .line 19
.end method

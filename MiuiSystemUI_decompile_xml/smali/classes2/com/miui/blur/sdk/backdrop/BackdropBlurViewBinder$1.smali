.class public final Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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

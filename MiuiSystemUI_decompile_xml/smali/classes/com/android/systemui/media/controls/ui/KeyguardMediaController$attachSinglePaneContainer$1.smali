.class final synthetic Lcom/android/systemui/media/controls/ui/KeyguardMediaController$attachSinglePaneContainer$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/KeyguardMediaController;)V
    .locals 7

    .line 1
    const/4 v1, 0x1

    .line 2
    const-class v3, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    .line 3
    const-string v4, "onMediaHostVisibilityChanged"

    .line 5
    const-string v5, "onMediaHostVisibilityChanged(Z)V"

    .line 7
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->refreshMediaPosition()V

    .line 12
    if-eqz p1, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object p0

    .line 26
    const/4 p1, -0x2

    .line 27
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    const/4 p1, -0x1

    .line 30
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    return-object p0
    .line 35
.end method

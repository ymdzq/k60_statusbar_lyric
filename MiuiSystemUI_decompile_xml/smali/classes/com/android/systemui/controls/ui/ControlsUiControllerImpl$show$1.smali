.class final synthetic Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$show$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;)V
    .locals 7

    .line 1
    const/4 v1, 0x1

    .line 2
    const-class v3, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 3
    const-string/jumbo v4, "showSeedingView"

    .line 5
    const-string/jumbo v5, "showSeedingView(Ljava/util/List;)V"

    .line 8
    const/4 v6, 0x0

    .line 11
    move-object v0, p0

    .line 12
    move-object v2, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 4
    check-cast p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 6
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->context:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 14
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    move-object v1, v2

    .line 19
    :cond_0
    const/4 v3, 0x1

    .line 20
    const v4, 0x7f0d0083    # @layout/controls_no_favorites 'res/layout/controls_no_favorites.xml'

    .line 21
    invoke-virtual {v0, v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 27
    if-nez p0, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    move-object v2, p0

    .line 32
    :goto_0
    const p0, 0x7f0a0253    # @id/controls_subtitle

    .line 33
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 36
    move-result-object p0

    .line 39
    check-cast p0, Landroid/widget/TextView;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p1

    .line 45
    const v0, 0x7f13032b    # @string/controls_seeding_in_progress 'Loading recommendations'

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    return-object p0
    .line 58
.end method

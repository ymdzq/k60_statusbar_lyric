.class public final Landroidx/compose/foundation/text/TextFieldState;
.super Ljava/lang/Object;
.source "CoreTextField.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreTextField.kt\nandroidx/compose/foundation/text/TextFieldState\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,1070:1\n154#2:1071\n76#3:1072\n102#3,2:1073\n76#3:1075\n102#3,2:1076\n76#3:1078\n102#3,2:1079\n76#3:1081\n102#3,2:1082\n76#3:1084\n102#3,2:1085\n76#3:1087\n102#3,2:1088\n*S KotlinDebug\n*F\n+ 1 CoreTextField.kt\nandroidx/compose/foundation/text/TextFieldState\n*L\n734#1:1071\n729#1:1072\n729#1:1073,2\n734#1:1075\n734#1:1076,2\n785#1:1078\n785#1:1079,2\n796#1:1081\n796#1:1082,2\n802#1:1084\n802#1:1085,2\n808#1:1087\n808#1:1088,2\n*E\n"
.end annotation


# instance fields
.field private final handleState$delegate:Landroidx/compose/runtime/MutableState;

.field private final hasFocus$delegate:Landroidx/compose/runtime/MutableState;

.field private inputSession:Landroidx/compose/ui/text/input/TextInputSession;

.field private isLayoutResultStale:Z

.field private final keyboardActionRunner:Landroidx/compose/foundation/text/KeyboardActionRunner;

.field private layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field private final layoutResultState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/text/TextLayoutResultProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final minHeightForSingleLineField$delegate:Landroidx/compose/runtime/MutableState;

.field private final onImeActionPerformed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onValueChangeOriginal:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final processor:Landroidx/compose/ui/text/input/EditProcessor;

.field private final recomposeScope:Landroidx/compose/runtime/RecomposeScope;

.field private final selectionPaint:Landroidx/compose/ui/graphics/Paint;

.field private final showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

.field private showFloatingToolbar:Z

.field private final showSelectionHandleEnd$delegate:Landroidx/compose/runtime/MutableState;

.field private final showSelectionHandleStart$delegate:Landroidx/compose/runtime/MutableState;

.field private textDelegate:Landroidx/compose/foundation/text/TextDelegate;

.field private untransformedText:Landroidx/compose/ui/text/AnnotatedString;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScope;)V
    .locals 2

    const-string/jumbo v0, "textDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "recomposeScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 720
    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldState;->recomposeScope:Landroidx/compose/runtime/RecomposeScope;

    .line 722
    new-instance p1, Landroidx/compose/ui/text/input/EditProcessor;

    invoke-direct {p1}, Landroidx/compose/ui/text/input/EditProcessor;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState;->processor:Landroidx/compose/ui/text/input/EditProcessor;

    .line 729
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/text/TextFieldState;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    int-to-float v1, v1

    .line 154
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    .line 734
    invoke-static {v1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/text/TextFieldState;->minHeightForSingleLineField$delegate:Landroidx/compose/runtime/MutableState;

    .line 750
    invoke-static {p2, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/text/TextFieldState;->layoutResultState:Landroidx/compose/runtime/MutableState;

    .line 785
    sget-object v1, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    invoke-static {v1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/text/TextFieldState;->handleState$delegate:Landroidx/compose/runtime/MutableState;

    .line 796
    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/text/TextFieldState;->showSelectionHandleStart$delegate:Landroidx/compose/runtime/MutableState;

    .line 802
    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/text/TextFieldState;->showSelectionHandleEnd$delegate:Landroidx/compose/runtime/MutableState;

    .line 808
    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState;->showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    .line 817
    iput-boolean p1, p0, Landroidx/compose/foundation/text/TextFieldState;->isLayoutResultStale:Z

    .line 820
    new-instance p1, Landroidx/compose/foundation/text/KeyboardActionRunner;

    invoke-direct {p1}, Landroidx/compose/foundation/text/KeyboardActionRunner;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState;->keyboardActionRunner:Landroidx/compose/foundation/text/KeyboardActionRunner;

    .line 827
    sget-object p1, Landroidx/compose/foundation/text/TextFieldState$onValueChangeOriginal$1;->INSTANCE:Landroidx/compose/foundation/text/TextFieldState$onValueChangeOriginal$1;

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState;->onValueChangeOriginal:Lkotlin/jvm/functions/Function1;

    .line 829
    new-instance p1, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 838
    new-instance p1, Landroidx/compose/foundation/text/TextFieldState$onImeActionPerformed$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/TextFieldState$onImeActionPerformed$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;)V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    .line 843
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState;->selectionPaint:Landroidx/compose/ui/graphics/Paint;

    return-void
.end method

.method public static final synthetic access$getKeyboardActionRunner$p(Landroidx/compose/foundation/text/TextFieldState;)Landroidx/compose/foundation/text/KeyboardActionRunner;
    .locals 0

    .line 717
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->keyboardActionRunner:Landroidx/compose/foundation/text/KeyboardActionRunner;

    return-object p0
.end method

.method public static final synthetic access$getOnValueChangeOriginal$p(Landroidx/compose/foundation/text/TextFieldState;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 717
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->onValueChangeOriginal:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method public final getHandleState()Landroidx/compose/foundation/text/HandleState;
    .locals 0

    .line 785
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->handleState$delegate:Landroidx/compose/runtime/MutableState;

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/HandleState;

    return-object p0
.end method

.method public final getHasFocus()Z
    .locals 0

    .line 729
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getInputSession()Landroidx/compose/ui/text/input/TextInputSession;
    .locals 0

    .line 723
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    return-object p0
.end method

.method public final getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    .line 737
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object p0
.end method

.method public final getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;
    .locals 0

    .line 752
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->layoutResultState:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    return-object p0
.end method

.method public final getMinHeightForSingleLineField-D9Ej5fM()F
    .locals 0

    .line 734
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->minHeightForSingleLineField$delegate:Landroidx/compose/runtime/MutableState;

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result p0

    return p0
.end method

.method public final getOnImeActionPerformed()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 838
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnValueChange()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 829
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->onValueChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getProcessor()Landroidx/compose/ui/text/input/EditProcessor;
    .locals 0

    .line 722
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->processor:Landroidx/compose/ui/text/input/EditProcessor;

    return-object p0
.end method

.method public final getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;
    .locals 0

    .line 720
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->recomposeScope:Landroidx/compose/runtime/RecomposeScope;

    return-object p0
.end method

.method public final getSelectionPaint()Landroidx/compose/ui/graphics/Paint;
    .locals 0

    .line 843
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->selectionPaint:Landroidx/compose/ui/graphics/Paint;

    return-object p0
.end method

.method public final getShowCursorHandle()Z
    .locals 0

    .line 808
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getShowFloatingToolbar()Z
    .locals 0

    .line 790
    iget-boolean p0, p0, Landroidx/compose/foundation/text/TextFieldState;->showFloatingToolbar:Z

    return p0
.end method

.method public final getShowSelectionHandleEnd()Z
    .locals 0

    .line 802
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->showSelectionHandleEnd$delegate:Landroidx/compose/runtime/MutableState;

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getShowSelectionHandleStart()Z
    .locals 0

    .line 796
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->showSelectionHandleStart$delegate:Landroidx/compose/runtime/MutableState;

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;
    .locals 0

    .line 719
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    return-object p0
.end method

.method public final getUntransformedText()Landroidx/compose/ui/text/AnnotatedString;
    .locals 0

    .line 766
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->untransformedText:Landroidx/compose/ui/text/AnnotatedString;

    return-object p0
.end method

.method public final isLayoutResultStale()Z
    .locals 0

    .line 817
    iget-boolean p0, p0, Landroidx/compose/foundation/text/TextFieldState;->isLayoutResultStale:Z

    return p0
.end method

.method public final setHandleState(Landroidx/compose/foundation/text/HandleState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->handleState$delegate:Landroidx/compose/runtime/MutableState;

    .line 102
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setHasFocus(Z)V
    .locals 0

    .line 729
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->hasFocus$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 102
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setInputSession(Landroidx/compose/ui/text/input/TextInputSession;)V
    .locals 0

    .line 723
    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    return-void
.end method

.method public final setLayoutCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 737
    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    return-void
.end method

.method public final setLayoutResult(Landroidx/compose/foundation/text/TextLayoutResultProxy;)V
    .locals 1

    .line 754
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldState;->layoutResultState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 755
    iput-boolean p1, p0, Landroidx/compose/foundation/text/TextFieldState;->isLayoutResultStale:Z

    return-void
.end method

.method public final setMinHeightForSingleLineField-0680j_4(F)V
    .locals 0

    .line 734
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->minHeightForSingleLineField$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p1

    .line 102
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setShowCursorHandle(Z)V
    .locals 0

    .line 808
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->showCursorHandle$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 102
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setShowFloatingToolbar(Z)V
    .locals 0

    .line 790
    iput-boolean p1, p0, Landroidx/compose/foundation/text/TextFieldState;->showFloatingToolbar:Z

    return-void
.end method

.method public final setShowSelectionHandleEnd(Z)V
    .locals 0

    .line 802
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->showSelectionHandleEnd$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 102
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setShowSelectionHandleStart(Z)V
    .locals 0

    .line 796
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState;->showSelectionHandleStart$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 102
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final update-fnh65Uc(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/ui/focus/FocusManager;J)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "Landroidx/compose/ui/focus/FocusManager;",
            "J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    const-string/jumbo v5, "untransformedText"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "visualText"

    move-object/from16 v7, p2

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "textStyle"

    move-object/from16 v8, p3

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "density"

    move-object/from16 v9, p5

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "fontFamilyResolver"

    move-object/from16 v10, p6

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "onValueChange"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "keyboardActions"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "focusManager"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    iput-object v2, v0, Landroidx/compose/foundation/text/TextFieldState;->onValueChangeOriginal:Lkotlin/jvm/functions/Function1;

    .line 858
    iget-object v2, v0, Landroidx/compose/foundation/text/TextFieldState;->selectionPaint:Landroidx/compose/ui/graphics/Paint;

    move-wide/from16 v5, p10

    invoke-interface {v2, v5, v6}, Landroidx/compose/ui/graphics/Paint;->setColor-8_81llA(J)V

    .line 859
    iget-object v2, v0, Landroidx/compose/foundation/text/TextFieldState;->keyboardActionRunner:Landroidx/compose/foundation/text/KeyboardActionRunner;

    .line 860
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text/KeyboardActionRunner;->setKeyboardActions(Landroidx/compose/foundation/text/KeyboardActions;)V

    .line 861
    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/KeyboardActionRunner;->setFocusManager(Landroidx/compose/ui/focus/FocusManager;)V

    .line 862
    iget-object v3, v0, Landroidx/compose/foundation/text/TextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/text/KeyboardActionRunner;->setInputSession(Landroidx/compose/ui/text/input/TextInputSession;)V

    .line 864
    iput-object v1, v0, Landroidx/compose/foundation/text/TextFieldState;->untransformedText:Landroidx/compose/ui/text/AnnotatedString;

    .line 867
    iget-object v6, v0, Landroidx/compose/foundation/text/TextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 873
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move/from16 v11, p4

    .line 866
    invoke-static/range {v6 .. v17}, Landroidx/compose/foundation/text/CoreTextKt;->updateTextDelegate-rm0N8CA$default(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIIILjava/util/List;ILjava/lang/Object;)Landroidx/compose/foundation/text/TextDelegate;

    move-result-object v1

    .line 876
    iget-object v2, v0, Landroidx/compose/foundation/text/TextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    if-eq v2, v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/compose/foundation/text/TextFieldState;->isLayoutResultStale:Z

    .line 877
    :cond_0
    iput-object v1, v0, Landroidx/compose/foundation/text/TextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    return-void
.end method

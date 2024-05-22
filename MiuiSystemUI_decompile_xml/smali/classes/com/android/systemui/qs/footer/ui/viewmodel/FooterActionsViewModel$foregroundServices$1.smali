.class final Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.qs.footer.ui.viewmodel.FooterActionsViewModel$foregroundServices$1"
    f = "FooterActionsViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic I$0:I

.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->this$0:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 2
    const/4 p1, 0x4

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p2

    .line 13
    check-cast p3, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsSecurityButtonViewModel;

    .line 14
    check-cast p4, Lkotlin/coroutines/Continuation;

    .line 16
    new-instance v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->this$0:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 20
    invoke-direct {v0, p0, p4}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;-><init>(Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;Lkotlin/coroutines/Continuation;)V

    .line 22
    iput p1, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->I$0:I

    .line 25
    iput-boolean p2, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->Z$0:Z

    .line 27
    iput-object p3, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->L$0:Ljava/lang/Object;

    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->label:I

    .line 2
    if-nez v0, :cond_2

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget v2, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->I$0:I

    .line 9
    iget-boolean v5, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->Z$0:Z

    .line 11
    iget-object p1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->L$0:Ljava/lang/Object;

    .line 13
    check-cast p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsSecurityButtonViewModel;

    .line 15
    if-gtz v2, :cond_0

    .line 17
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->this$0:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->context:Landroid/view/ContextThemeWrapper;

    .line 23
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v0

    .line 28
    const v1, 0x7f13041d    # @string/fgs_manager_footer_label '{count, plural, =1 {# app is active} other {# apps are active} }'

    .line 29
    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/PluralMessageFormaterKt;->icuMessageFormat(Landroid/content/res/Resources;II)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 35
    new-instance v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsForegroundServicesButtonViewModel;

    .line 36
    if-nez p1, :cond_1

    .line 38
    const/4 p1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    :goto_0
    move v4, p1

    .line 43
    new-instance v6, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1$1;

    .line 44
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1;->this$0:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 46
    invoke-direct {v6, p0}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$foregroundServices$1$1;-><init>(Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;)V

    .line 48
    move-object v1, v0

    .line 51
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsForegroundServicesButtonViewModel;-><init>(ILjava/lang/String;ZZLkotlin/jvm/functions/Function1;)V

    .line 52
    return-object v0

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 56
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0
.end method

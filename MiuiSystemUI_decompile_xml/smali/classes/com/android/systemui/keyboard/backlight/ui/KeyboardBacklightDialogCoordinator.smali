.class public final Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final createDialog:Lkotlin/jvm/functions/Function2;

.field public final viewModel:Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinatorKt$defaultCreateDialog$1;

    .line 2
    invoke-direct {p1, p2}, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinatorKt$defaultCreateDialog$1;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->viewModel:Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinator;->createDialog:Lkotlin/jvm/functions/Function2;

    .line 12
    return-void
    .line 14
.end method

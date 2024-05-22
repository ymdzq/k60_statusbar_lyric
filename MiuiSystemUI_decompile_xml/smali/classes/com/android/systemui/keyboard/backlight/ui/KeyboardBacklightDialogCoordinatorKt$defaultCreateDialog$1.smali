.class final Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinatorKt$defaultCreateDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinatorKt$defaultCreateDialog$1;->$context:Landroid/content/Context;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Number;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p2

    .line 13
    new-instance v0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinatorKt$defaultCreateDialog$1;->$context:Landroid/content/Context;

    .line 16
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;-><init>(Landroid/content/Context;II)V

    .line 18
    return-object v0
    .line 21
.end method

.class public final Lcom/android/systemui/controls/ui/DetailDialog$5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/DetailDialog$5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/controls/ui/DetailDialog$5;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/controls/ui/DetailDialog$5;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/controls/ui/DetailDialog$5;->INSTANCE:Lcom/android/systemui/controls/ui/DetailDialog$5;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 6
    move-result v0

    .line 9
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 10
    move-result v1

    .line 13
    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 14
    move-result-object p2

    .line 17
    iget v1, p2, Landroid/graphics/Insets;->top:I

    .line 18
    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    .line 20
    invoke-virtual {p1, p0, v1, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 22
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 25
    return-object p0
    .line 27
.end method

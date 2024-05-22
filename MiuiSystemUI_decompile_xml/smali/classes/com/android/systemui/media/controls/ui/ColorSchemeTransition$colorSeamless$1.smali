.class final Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$colorSeamless$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$colorSeamless$1;->this$0:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/monet/ColorScheme;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$colorSeamless$1;->this$0:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object p0

    .line 15
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 16
    and-int/lit8 p0, p0, 0x30

    .line 18
    iget-object p1, p1, Lcom/android/systemui/monet/ColorScheme;->accent1:Lcom/android/systemui/monet/TonalPalette;

    .line 20
    const/16 v0, 0x20

    .line 22
    if-ne p0, v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    .line 26
    move-result p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    .line 31
    const/4 p1, 0x3

    .line 33
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Number;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 42
    move-result p0

    .line 45
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p0

    .line 49
    return-object p0
    .line 50
.end method

.class public final Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Lcom/android/systemui/statusbar/phone/BoundsPair;

    .line 3
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 5
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    .line 7
    invoke-static {v2}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 9
    move-result-object v2

    .line 12
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 13
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    .line 15
    invoke-static {v3}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 17
    move-result-object v3

    .line 20
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/BoundsPair;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 21
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 24
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    .line 26
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 34
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    .line 36
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->changeListeners:Ljava/util/Set;

    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;

    .line 54
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->lastSystemBarAttributesParams:Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

    .line 56
    if-eqz v2, :cond_0

    .line 58
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxesArray:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 60
    array-length v4, v3

    .line 62
    const/4 v5, 0x1

    .line 63
    if-nez v4, :cond_1

    .line 64
    move v4, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v4, 0x0

    .line 68
    :goto_1
    xor-int/2addr v4, v5

    .line 69
    if-eqz v4, :cond_0

    .line 70
    iget v4, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

    .line 72
    iget v5, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

    .line 74
    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegionsArray:[Lcom/android/internal/view/AppearanceRegion;

    .line 76
    iget-boolean v7, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 78
    iget v8, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 80
    iget v9, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 82
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 84
    move-object p0, v1

    .line 86
    move p1, v4

    .line 87
    move p2, v5

    .line 88
    move-object p3, v6

    .line 89
    move p4, v7

    .line 90
    move p5, v8

    .line 91
    move/from16 p6, v9

    .line 92
    move-object/from16 p7, v2

    .line 94
    move-object/from16 p8, v3

    .line 96
    invoke-virtual/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 98
    goto :goto_0

    .line 101
    :cond_2
    return-void
    .line 102
.end method

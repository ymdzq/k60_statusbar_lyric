.class public final Landroidx/compose/foundation/layout/SizeKt;
.super Ljava/lang/Object;
.source "Size.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Size.kt\nandroidx/compose/foundation/layout/SizeKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,1024:1\n135#2:1025\n135#2:1026\n135#2:1027\n135#2:1028\n135#2:1029\n135#2:1030\n135#2:1031\n135#2:1032\n135#2:1033\n135#2:1034\n135#2:1035\n135#2:1036\n135#2:1037\n135#2:1038\n135#2:1039\n*S KotlinDebug\n*F\n+ 1 Size.kt\nandroidx/compose/foundation/layout/SizeKt\n*L\n61#1:1025\n85#1:1026\n111#1:1027\n138#1:1028\n176#1:1029\n199#1:1030\n226#1:1031\n257#1:1032\n285#1:1033\n315#1:1034\n342#1:1035\n381#1:1036\n405#1:1037\n434#1:1038\n619#1:1039\n*E\n"
.end annotation


# static fields
.field private static final FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillModifier;

.field private static final FillWholeMaxSize:Landroidx/compose/foundation/layout/FillModifier;

.field private static final FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillModifier;

.field private static final WrapContentHeightCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

.field private static final WrapContentHeightTop:Landroidx/compose/foundation/layout/WrapContentModifier;

.field private static final WrapContentSizeCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

.field private static final WrapContentSizeTopStart:Landroidx/compose/foundation/layout/WrapContentModifier;

.field private static final WrapContentWidthCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

.field private static final WrapContentWidthStart:Landroidx/compose/foundation/layout/WrapContentModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 463
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->createFillWidthModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    move-result-object v1

    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillModifier;

    .line 484
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->createFillHeightModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    move-result-object v1

    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillModifier;

    .line 509
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->createFillSizeModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillModifier;

    .line 539
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentWidthModifier(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    move-result-object v1

    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 540
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentWidthModifier(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    move-result-object v1

    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentWidthStart:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 569
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentHeightModifier(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    move-result-object v1

    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 570
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentHeightModifier(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    move-result-object v1

    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentHeightTop:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 598
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentSizeModifier(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    move-result-object v1

    sput-object v1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 599
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentSizeModifier(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeTopStart:Landroidx/compose/foundation/layout/WrapContentModifier;

    return-void
.end method

.method private static final createFillHeightModifier(F)Landroidx/compose/foundation/layout/FillModifier;
    .locals 3

    .line 684
    new-instance v0, Landroidx/compose/foundation/layout/FillModifier;

    .line 685
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    .line 687
    new-instance v2, Landroidx/compose/foundation/layout/SizeKt$createFillHeightModifier$1;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/layout/SizeKt$createFillHeightModifier$1;-><init>(F)V

    .line 684
    invoke-direct {v0, v1, p0, v2}, Landroidx/compose/foundation/layout/FillModifier;-><init>(Landroidx/compose/foundation/layout/Direction;FLkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private static final createFillSizeModifier(F)Landroidx/compose/foundation/layout/FillModifier;
    .locals 3

    .line 694
    new-instance v0, Landroidx/compose/foundation/layout/FillModifier;

    .line 695
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    .line 697
    new-instance v2, Landroidx/compose/foundation/layout/SizeKt$createFillSizeModifier$1;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/layout/SizeKt$createFillSizeModifier$1;-><init>(F)V

    .line 694
    invoke-direct {v0, v1, p0, v2}, Landroidx/compose/foundation/layout/FillModifier;-><init>(Landroidx/compose/foundation/layout/Direction;FLkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private static final createFillWidthModifier(F)Landroidx/compose/foundation/layout/FillModifier;
    .locals 3

    .line 674
    new-instance v0, Landroidx/compose/foundation/layout/FillModifier;

    .line 675
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    .line 677
    new-instance v2, Landroidx/compose/foundation/layout/SizeKt$createFillWidthModifier$1;

    invoke-direct {v2, p0}, Landroidx/compose/foundation/layout/SizeKt$createFillWidthModifier$1;-><init>(F)V

    .line 674
    invoke-direct {v0, v1, p0, v2}, Landroidx/compose/foundation/layout/FillModifier;-><init>(Landroidx/compose/foundation/layout/Direction;FLkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private static final createWrapContentHeightModifier(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentModifier;
    .locals 7

    .line 924
    new-instance v6, Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 925
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    .line 927
    new-instance v3, Landroidx/compose/foundation/layout/SizeKt$createWrapContentHeightModifier$1;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentHeightModifier$1;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    .line 931
    new-instance v5, Landroidx/compose/foundation/layout/SizeKt$createWrapContentHeightModifier$2;

    invoke-direct {v5, p0, p1}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentHeightModifier$2;-><init>(Landroidx/compose/ui/Alignment$Vertical;Z)V

    move-object v0, v6

    move v2, p1

    move-object v4, p0

    .line 924
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentModifier;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-object v6
.end method

.method private static final createWrapContentSizeModifier(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentModifier;
    .locals 7

    .line 942
    new-instance v6, Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 943
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    .line 945
    new-instance v3, Landroidx/compose/foundation/layout/SizeKt$createWrapContentSizeModifier$1;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentSizeModifier$1;-><init>(Landroidx/compose/ui/Alignment;)V

    .line 949
    new-instance v5, Landroidx/compose/foundation/layout/SizeKt$createWrapContentSizeModifier$2;

    invoke-direct {v5, p0, p1}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentSizeModifier$2;-><init>(Landroidx/compose/ui/Alignment;Z)V

    move-object v0, v6

    move v2, p1

    move-object v4, p0

    .line 942
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentModifier;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-object v6
.end method

.method private static final createWrapContentWidthModifier(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentModifier;
    .locals 7

    .line 906
    new-instance v6, Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 907
    sget-object v1, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    .line 909
    new-instance v3, Landroidx/compose/foundation/layout/SizeKt$createWrapContentWidthModifier$1;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentWidthModifier$1;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    .line 913
    new-instance v5, Landroidx/compose/foundation/layout/SizeKt$createWrapContentWidthModifier$2;

    invoke-direct {v5, p0, p1}, Landroidx/compose/foundation/layout/SizeKt$createWrapContentWidthModifier$2;-><init>(Landroidx/compose/ui/Alignment$Horizontal;Z)V

    move-object v0, v6

    move v2, p1

    move-object v4, p0

    .line 906
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentModifier;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-object v6
.end method

.method public static final defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 3

    const-string v0, "$this$defaultMinSize"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    new-instance v0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$defaultMinSize-VpY3zN4$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$defaultMinSize-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 616
    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsModifier;-><init>(FFLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 615
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 613
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 614
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p2

    .line 612
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 482
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillModifier;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroidx/compose/foundation/layout/SizeKt;->createFillHeightModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    move-result-object p1

    :goto_1
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fillMaxHeight$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 481
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final fillMaxSize(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 507
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillModifier;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroidx/compose/foundation/layout/SizeKt;->createFillSizeModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    move-result-object p1

    :goto_1
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 506
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 461
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillModifier;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroidx/compose/foundation/layout/SizeKt;->createFillWidthModifier(F)Landroidx/compose/foundation/layout/FillModifier;

    move-result-object p1

    :goto_1
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 460
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 10

    const-string v0, "$this$height"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :goto_0
    move-object v7, v1

    const/4 v8, 0x5

    const/4 v9, 0x0

    move-object v1, v0

    move v3, p1

    move v5, p1

    .line 81
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 10

    const-string v0, "$this$heightIn"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$heightIn-VpY3zN4$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$heightIn-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :goto_0
    move-object v7, v1

    const/4 v8, 0x5

    const/4 v9, 0x0

    move-object v1, v0

    move v3, p1

    move v5, p2

    .line 195
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 194
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 192
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 193
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p2

    .line 191
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 9

    const-string v0, "$this$requiredSize"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$requiredSize-3ABfNKs$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$requiredSize-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 309
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p1

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 308
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 9

    const-string v0, "$this$requiredSize"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$requiredSize-VpY3zN4$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$requiredSize-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 336
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 335
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 9

    const-string v0, "$this$size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$size-3ABfNKs$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$size-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 105
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p1

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;
    .locals 9

    const-string v0, "$this$size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 132
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final sizeIn-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;
    .locals 9

    const-string v0, "$this$sizeIn"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    const/4 v6, 0x1

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$sizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt$sizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :goto_0
    move-object v7, v1

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 220
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 219
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 215
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 216
    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 217
    sget-object p3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 218
    sget-object p4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p4

    .line 214
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 10

    const-string v0, "$this$width"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroidx/compose/foundation/layout/SizeModifier;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/layout/SizeKt$width-3ABfNKs$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/SizeKt$width-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :goto_0
    move-object v7, v1

    const/16 v8, 0xa

    const/4 v9, 0x0

    move-object v1, v0

    move v2, p1

    move v4, p1

    .line 57
    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/layout/SizeModifier;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final wrapContentSize(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "align"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 590
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeCenter:Landroidx/compose/foundation/layout/WrapContentModifier;

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 592
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->WrapContentSizeTopStart:Landroidx/compose/foundation/layout/WrapContentModifier;

    goto :goto_0

    .line 594
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->createWrapContentSizeModifier(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentModifier;

    move-result-object p1

    .line 588
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 586
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 585
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
